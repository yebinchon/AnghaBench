
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;
struct qede_arfs_fltr_node {int fw_rc; scalar_t__ used; } ;


 int DP_NOTICE (struct qede_dev*,char*) ;
 int EIO ;
 int QEDE_ARFS_POLL_COUNT ;
 int msleep (int) ;
 int qede_dequeue_fltr_and_config_searcher (struct qede_dev*,struct qede_arfs_fltr_node*) ;

__attribute__((used)) static int
qede_poll_arfs_filter_config(struct qede_dev *edev,
        struct qede_arfs_fltr_node *fltr)
{
 int count = QEDE_ARFS_POLL_COUNT;

 while (fltr->used && count) {
  msleep(20);
  count--;
 }

 if (count == 0 || fltr->fw_rc) {
  DP_NOTICE(edev, "Timeout in polling filter config\n");
  qede_dequeue_fltr_and_config_searcher(edev, fltr);
  return -EIO;
 }

 return fltr->fw_rc;
}
