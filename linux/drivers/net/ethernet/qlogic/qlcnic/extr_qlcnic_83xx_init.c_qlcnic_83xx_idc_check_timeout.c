
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_3__ {int sec_counter; } ;
struct TYPE_4__ {TYPE_1__ idc; } ;


 int EBUSY ;
 int HZ ;
 int jiffies ;

__attribute__((used)) static int qlcnic_83xx_idc_check_timeout(struct qlcnic_adapter *adapter,
      int time_limit)
{
 u64 seconds;

 seconds = jiffies / HZ - adapter->ahw->idc.sec_counter;
 if (seconds <= time_limit)
  return 0;
 else
  return -EBUSY;
}
