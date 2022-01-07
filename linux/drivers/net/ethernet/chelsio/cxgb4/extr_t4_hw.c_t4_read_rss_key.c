
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int TP_RSS_SECRET_KEY0_A ;
 int t4_tp_pio_read (struct adapter*,int *,int,int ,int) ;

void t4_read_rss_key(struct adapter *adap, u32 *key, bool sleep_ok)
{
 t4_tp_pio_read(adap, key, 10, TP_RSS_SECRET_KEY0_A, sleep_ok);
}
