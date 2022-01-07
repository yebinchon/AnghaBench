
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_fcoe_stats {int dummy; } ;
struct qed_dev {int dummy; } ;


 int QED_AFFIN_HWFN (struct qed_dev*) ;
 int qed_fcoe_get_stats (int ,struct qed_fcoe_stats*) ;

__attribute__((used)) static int qed_fcoe_stats(struct qed_dev *cdev, struct qed_fcoe_stats *stats)
{
 return qed_fcoe_get_stats(QED_AFFIN_HWFN(cdev), stats);
}
