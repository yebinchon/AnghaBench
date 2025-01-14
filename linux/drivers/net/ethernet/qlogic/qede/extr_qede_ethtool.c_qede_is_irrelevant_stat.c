
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;


 scalar_t__ IS_VF (struct qede_dev*) ;
 scalar_t__ QEDE_IS_AH (struct qede_dev*) ;
 scalar_t__ QEDE_IS_BB (struct qede_dev*) ;
 scalar_t__ QEDE_STAT_IS_AH_ONLY (int) ;
 scalar_t__ QEDE_STAT_IS_BB_ONLY (int) ;
 scalar_t__ QEDE_STAT_IS_PF_ONLY (int) ;

__attribute__((used)) static bool qede_is_irrelevant_stat(struct qede_dev *edev, int stat_index)
{
 return (IS_VF(edev) && QEDE_STAT_IS_PF_ONLY(stat_index)) ||
        (QEDE_IS_BB(edev) && QEDE_STAT_IS_AH_ONLY(stat_index)) ||
        (QEDE_IS_AH(edev) && QEDE_STAT_IS_BB_ONLY(stat_index));
}
