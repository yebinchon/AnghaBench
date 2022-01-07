
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_ae_dev {struct hclge_dev* priv; } ;
struct hclge_dev {scalar_t__ reset_type; int misc_vector; } ;
typedef enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;


 int HNAE3_FLR_RESET ;
 int HNAE3_FUNC_RESET ;
 int HNAE3_GLOBAL_RESET ;
 int HNAE3_IMP_RESET ;
 scalar_t__ HNAE3_NONE_RESET ;
 int HNAE3_UNKNOWN_RESET ;
 int clear_bit (int,unsigned long*) ;
 int hclge_enable_vector (int *,int) ;
 int hclge_handle_hw_msix_error (struct hclge_dev*,unsigned long*) ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static enum hnae3_reset_type hclge_get_reset_level(struct hnae3_ae_dev *ae_dev,
         unsigned long *addr)
{
 enum hnae3_reset_type rst_level = HNAE3_NONE_RESET;
 struct hclge_dev *hdev = ae_dev->priv;


 if (test_bit(HNAE3_UNKNOWN_RESET, addr)) {



  hclge_handle_hw_msix_error(hdev, addr);
  clear_bit(HNAE3_UNKNOWN_RESET, addr);







  hclge_enable_vector(&hdev->misc_vector, 1);
 }


 if (test_bit(HNAE3_IMP_RESET, addr)) {
  rst_level = HNAE3_IMP_RESET;
  clear_bit(HNAE3_IMP_RESET, addr);
  clear_bit(HNAE3_GLOBAL_RESET, addr);
  clear_bit(HNAE3_FUNC_RESET, addr);
 } else if (test_bit(HNAE3_GLOBAL_RESET, addr)) {
  rst_level = HNAE3_GLOBAL_RESET;
  clear_bit(HNAE3_GLOBAL_RESET, addr);
  clear_bit(HNAE3_FUNC_RESET, addr);
 } else if (test_bit(HNAE3_FUNC_RESET, addr)) {
  rst_level = HNAE3_FUNC_RESET;
  clear_bit(HNAE3_FUNC_RESET, addr);
 } else if (test_bit(HNAE3_FLR_RESET, addr)) {
  rst_level = HNAE3_FLR_RESET;
  clear_bit(HNAE3_FLR_RESET, addr);
 }

 if (hdev->reset_type != HNAE3_NONE_RESET &&
     rst_level < hdev->reset_type)
  return HNAE3_NONE_RESET;

 return rst_level;
}
