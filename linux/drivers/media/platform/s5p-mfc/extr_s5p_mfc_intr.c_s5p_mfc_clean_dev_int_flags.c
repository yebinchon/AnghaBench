
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {scalar_t__ int_err; scalar_t__ int_type; scalar_t__ int_cond; } ;



void s5p_mfc_clean_dev_int_flags(struct s5p_mfc_dev *dev)
{
 dev->int_cond = 0;
 dev->int_type = 0;
 dev->int_err = 0;
}
