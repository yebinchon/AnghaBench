
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_iscsi_stats {int dummy; } ;
struct qed_dev {int dummy; } ;


 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int qed_iscsi_get_stats (int ,struct qed_iscsi_stats*) ;

__attribute__((used)) static int qed_iscsi_stats(struct qed_dev *cdev, struct qed_iscsi_stats *stats)
{
 return qed_iscsi_get_stats(QED_AFFIN_HWFN(cdev), stats);
}
