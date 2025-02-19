
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct qed_eth_stats {int dummy; } ;
struct qed_dev {scalar_t__ reset_stats; } ;


 int _qed_get_vport_stats (struct qed_dev*,struct qed_eth_stats*) ;
 int memset (struct qed_eth_stats*,int ,int) ;

void qed_get_vport_stats(struct qed_dev *cdev, struct qed_eth_stats *stats)
{
 u32 i;

 if (!cdev) {
  memset(stats, 0, sizeof(*stats));
  return;
 }

 _qed_get_vport_stats(cdev, stats);

 if (!cdev->reset_stats)
  return;


 for (i = 0; i < sizeof(struct qed_eth_stats) / sizeof(u64); i++)
  ((u64 *)stats)[i] -= ((u64 *)cdev->reset_stats)[i];
}
