
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ena_adapter {int dummy; } ;


 int ena_dump_stats_ex (struct ena_adapter*,int *) ;

void ena_dump_stats_to_buf(struct ena_adapter *adapter, u8 *buf)
{
 if (!buf)
  return;

 ena_dump_stats_ex(adapter, buf);
}
