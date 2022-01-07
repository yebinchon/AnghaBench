
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 int KEYEXTEND_F ;
 int KEYMODE_G (int) ;
 int KEYWRADDRX_V (int) ;
 int KEYWRADDR_V (int) ;
 int KEYWREN_F ;
 int T6_VFWRADDR_V (int) ;
 int TP_RSS_CONFIG_VRT_A ;
 int TP_RSS_SECRET_KEY0_A ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_pio_write (struct adapter*,void*,int,int ,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_write_rss_key(struct adapter *adap, const u32 *key, int idx,
        bool sleep_ok)
{
 u8 rss_key_addr_cnt = 16;
 u32 vrt = t4_read_reg(adap, TP_RSS_CONFIG_VRT_A);





 if ((CHELSIO_CHIP_VERSION(adap->params.chip) > CHELSIO_T5) &&
     (vrt & KEYEXTEND_F) && (KEYMODE_G(vrt) == 3))
  rss_key_addr_cnt = 32;

 t4_tp_pio_write(adap, (void *)key, 10, TP_RSS_SECRET_KEY0_A, sleep_ok);

 if (idx >= 0 && idx < rss_key_addr_cnt) {
  if (rss_key_addr_cnt > 16)
   t4_write_reg(adap, TP_RSS_CONFIG_VRT_A,
         KEYWRADDRX_V(idx >> 4) |
         T6_VFWRADDR_V(idx) | KEYWREN_F);
  else
   t4_write_reg(adap, TP_RSS_CONFIG_VRT_A,
         KEYWRADDR_V(idx) | KEYWREN_F);
 }
}
