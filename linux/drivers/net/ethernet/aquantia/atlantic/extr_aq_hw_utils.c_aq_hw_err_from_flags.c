
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_hw_s {int flags; } ;


 int AQ_HW_FLAG_ERR_HW ;
 int AQ_HW_FLAG_ERR_UNPLUG ;
 int EIO ;
 int ENXIO ;
 scalar_t__ aq_utils_obj_test (int *,int ) ;

int aq_hw_err_from_flags(struct aq_hw_s *hw)
{
 int err = 0;

 if (aq_utils_obj_test(&hw->flags, AQ_HW_FLAG_ERR_UNPLUG)) {
  err = -ENXIO;
  goto err_exit;
 }
 if (aq_utils_obj_test(&hw->flags, AQ_HW_FLAG_ERR_HW)) {
  err = -EIO;
  goto err_exit;
 }

err_exit:
 return err;
}
