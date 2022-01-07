
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {int num_arl_entries; } ;
struct b53_arl_entry {int is_valid; } ;
typedef int dsa_fdb_dump_cb_t ;


 int ARL_SRCH_STDN ;
 int B53_ARLIO_PAGE ;
 int B53_ARL_SRCH_CTL ;
 int b53_arl_search_rd (struct b53_device*,int,struct b53_arl_entry*) ;
 int b53_arl_search_wait (struct b53_device*) ;
 int b53_fdb_copy (int,struct b53_arl_entry*,int *,void*) ;
 int b53_write8 (struct b53_device*,int ,int ,int ) ;

int b53_fdb_dump(struct dsa_switch *ds, int port,
   dsa_fdb_dump_cb_t *cb, void *data)
{
 struct b53_device *priv = ds->priv;
 struct b53_arl_entry results[2];
 unsigned int count = 0;
 int ret;
 u8 reg;


 reg = ARL_SRCH_STDN;
 b53_write8(priv, B53_ARLIO_PAGE, B53_ARL_SRCH_CTL, reg);

 do {
  ret = b53_arl_search_wait(priv);
  if (ret)
   return ret;

  b53_arl_search_rd(priv, 0, &results[0]);
  ret = b53_fdb_copy(port, &results[0], cb, data);
  if (ret)
   return ret;

  if (priv->num_arl_entries > 2) {
   b53_arl_search_rd(priv, 1, &results[1]);
   ret = b53_fdb_copy(port, &results[1], cb, data);
   if (ret)
    return ret;

   if (!results[0].is_valid && !results[1].is_valid)
    break;
  }

 } while (count++ < 1024);

 return 0;
}
