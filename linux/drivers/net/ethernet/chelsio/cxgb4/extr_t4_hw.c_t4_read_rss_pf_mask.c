
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int TP_RSS_PF_MSK_A ;
 int t4_tp_pio_read (struct adapter*,int *,int,int ,int) ;

u32 t4_read_rss_pf_mask(struct adapter *adapter, bool sleep_ok)
{
 u32 pfmask;

 t4_tp_pio_read(adapter, &pfmask, 1, TP_RSS_PF_MSK_A, sleep_ok);
 return pfmask;
}
