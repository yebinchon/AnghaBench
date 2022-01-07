
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 int KEYWREN_F ;
 unsigned int T6_VFWRADDR_M ;
 int T6_VFWRADDR_V (unsigned int) ;
 int TP_RSS_CONFIG_VRT_A ;
 int TP_RSS_VFH_CONFIG_A ;
 int TP_RSS_VFL_CONFIG_A ;
 int VFRDEN_F ;
 int VFRDRG_F ;
 unsigned int VFWRADDR_M ;
 int VFWRADDR_V (unsigned int) ;
 int VFWREN_F ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_pio_read (struct adapter*,int*,int,int ,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_read_rss_vf_config(struct adapter *adapter, unsigned int index,
      u32 *vfl, u32 *vfh, bool sleep_ok)
{
 u32 vrt, mask, data;

 if (CHELSIO_CHIP_VERSION(adapter->params.chip) <= CHELSIO_T5) {
  mask = VFWRADDR_V(VFWRADDR_M);
  data = VFWRADDR_V(index);
 } else {
   mask = T6_VFWRADDR_V(T6_VFWRADDR_M);
   data = T6_VFWRADDR_V(index);
 }



 vrt = t4_read_reg(adapter, TP_RSS_CONFIG_VRT_A);
 vrt &= ~(VFRDRG_F | VFWREN_F | KEYWREN_F | mask);
 vrt |= data | VFRDEN_F;
 t4_write_reg(adapter, TP_RSS_CONFIG_VRT_A, vrt);



 t4_tp_pio_read(adapter, vfl, 1, TP_RSS_VFL_CONFIG_A, sleep_ok);
 t4_tp_pio_read(adapter, vfh, 1, TP_RSS_VFH_CONFIG_A, sleep_ok);
}
