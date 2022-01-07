
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_intr_info {unsigned long index; } ;
struct ionic_dev {int intr_ctrl; } ;


 int ionic_intr_clean (int ,unsigned long) ;

__attribute__((used)) static inline void ionic_intr_init(struct ionic_dev *idev,
       struct ionic_intr_info *intr,
       unsigned long index)
{
 ionic_intr_clean(idev->intr_ctrl, index);
 intr->index = index;
}
