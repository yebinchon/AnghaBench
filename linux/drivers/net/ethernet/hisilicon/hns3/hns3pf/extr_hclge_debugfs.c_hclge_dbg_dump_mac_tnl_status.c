
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_mac_tnl_stats {int status; scalar_t__ time; } ;
struct hclge_dev {TYPE_1__* pdev; int mac_tnl_log; } ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_BILLION_NANO_SECONDS ;
 int dev_info (int *,char*,...) ;
 unsigned long do_div (scalar_t__,int ) ;
 scalar_t__ kfifo_get (int *,struct hclge_mac_tnl_stats*) ;

__attribute__((used)) static void hclge_dbg_dump_mac_tnl_status(struct hclge_dev *hdev)
{


 struct hclge_mac_tnl_stats stats;
 unsigned long rem_nsec;

 dev_info(&hdev->pdev->dev, "Recently generated mac tnl interruption:\n");

 while (kfifo_get(&hdev->mac_tnl_log, &stats)) {
  rem_nsec = do_div(stats.time, 1000000000);
  dev_info(&hdev->pdev->dev, "[%07lu.%03lu] status = 0x%x\n",
    (unsigned long)stats.time, rem_nsec / 1000,
    stats.status);
 }
}
