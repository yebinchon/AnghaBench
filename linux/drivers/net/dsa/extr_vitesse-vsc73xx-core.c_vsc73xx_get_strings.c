
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct vsc73xx_counter {char* name; } ;
struct vsc73xx {int dummy; } ;
struct dsa_switch {struct vsc73xx* priv; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int VSC73XX_BLOCK_MAC ;
 int VSC73XX_C_CFG ;
 int strncpy (int *,char*,int) ;
 struct vsc73xx_counter* vsc73xx_find_counter (struct vsc73xx*,scalar_t__,int) ;
 int vsc73xx_read (struct vsc73xx*,int ,int,int ,scalar_t__*) ;

__attribute__((used)) static void vsc73xx_get_strings(struct dsa_switch *ds, int port, u32 stringset,
    uint8_t *data)
{
 const struct vsc73xx_counter *cnt;
 struct vsc73xx *vsc = ds->priv;
 u8 indices[6];
 int i, j;
 u32 val;
 int ret;

 if (stringset != ETH_SS_STATS)
  return;

 ret = vsc73xx_read(vsc, VSC73XX_BLOCK_MAC, port,
      VSC73XX_C_CFG, &val);
 if (ret)
  return;

 indices[0] = (val & 0x1f);
 indices[1] = ((val >> 5) & 0x1f);
 indices[2] = ((val >> 10) & 0x1f);
 indices[3] = ((val >> 16) & 0x1f);
 indices[4] = ((val >> 21) & 0x1f);
 indices[5] = ((val >> 26) & 0x1f);


 j = 0;
 strncpy(data + j * ETH_GSTRING_LEN,
  "RxEtherStatsOctets", ETH_GSTRING_LEN);
 j++;







 for (i = 0; i < 3; i++) {
  cnt = vsc73xx_find_counter(vsc, indices[i], 0);
  if (cnt)
   strncpy(data + j * ETH_GSTRING_LEN,
    cnt->name, ETH_GSTRING_LEN);
  j++;
 }


 strncpy(data + j * ETH_GSTRING_LEN,
  "TxEtherStatsOctets", ETH_GSTRING_LEN);
 j++;

 for (i = 3; i < 6; i++) {
  cnt = vsc73xx_find_counter(vsc, indices[i], 1);
  if (cnt)
   strncpy(data + j * ETH_GSTRING_LEN,
    cnt->name, ETH_GSTRING_LEN);
  j++;
 }
}
