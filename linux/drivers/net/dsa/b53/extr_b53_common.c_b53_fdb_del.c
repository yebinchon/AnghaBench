
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {int dummy; } ;


 int b53_arl_op (struct b53_device*,int ,int,unsigned char const*,int ,int) ;

int b53_fdb_del(struct dsa_switch *ds, int port,
  const unsigned char *addr, u16 vid)
{
 struct b53_device *priv = ds->priv;

 return b53_arl_op(priv, 0, port, addr, vid, 0);
}
