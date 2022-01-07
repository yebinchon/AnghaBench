
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclgevf_dev {int dummy; } ;
typedef enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;


 int HNAE3_FLR_RESET ;
 int HNAE3_NONE_RESET ;
 int HNAE3_VF_FULL_RESET ;
 int HNAE3_VF_FUNC_RESET ;
 int HNAE3_VF_PF_FUNC_RESET ;
 int HNAE3_VF_RESET ;
 int clear_bit (int,unsigned long*) ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static enum hnae3_reset_type hclgevf_get_reset_level(struct hclgevf_dev *hdev,
           unsigned long *addr)
{
 enum hnae3_reset_type rst_level = HNAE3_NONE_RESET;


 if (test_bit(HNAE3_VF_RESET, addr)) {
  rst_level = HNAE3_VF_RESET;
  clear_bit(HNAE3_VF_RESET, addr);
  clear_bit(HNAE3_VF_PF_FUNC_RESET, addr);
  clear_bit(HNAE3_VF_FUNC_RESET, addr);
 } else if (test_bit(HNAE3_VF_FULL_RESET, addr)) {
  rst_level = HNAE3_VF_FULL_RESET;
  clear_bit(HNAE3_VF_FULL_RESET, addr);
  clear_bit(HNAE3_VF_FUNC_RESET, addr);
 } else if (test_bit(HNAE3_VF_PF_FUNC_RESET, addr)) {
  rst_level = HNAE3_VF_PF_FUNC_RESET;
  clear_bit(HNAE3_VF_PF_FUNC_RESET, addr);
  clear_bit(HNAE3_VF_FUNC_RESET, addr);
 } else if (test_bit(HNAE3_VF_FUNC_RESET, addr)) {
  rst_level = HNAE3_VF_FUNC_RESET;
  clear_bit(HNAE3_VF_FUNC_RESET, addr);
 } else if (test_bit(HNAE3_FLR_RESET, addr)) {
  rst_level = HNAE3_FLR_RESET;
  clear_bit(HNAE3_FLR_RESET, addr);
 }

 return rst_level;
}
