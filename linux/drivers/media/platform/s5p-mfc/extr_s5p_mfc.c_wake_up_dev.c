
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int int_cond; unsigned int int_type; unsigned int int_err; int queue; } ;


 int wake_up (int *) ;

__attribute__((used)) static void wake_up_dev(struct s5p_mfc_dev *dev, unsigned int reason,
   unsigned int err)
{
 dev->int_cond = 1;
 dev->int_type = reason;
 dev->int_err = err;
 wake_up(&dev->queue);
}
