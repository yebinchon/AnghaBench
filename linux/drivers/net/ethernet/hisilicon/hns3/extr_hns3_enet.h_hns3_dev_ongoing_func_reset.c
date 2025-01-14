
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_ae_dev {scalar_t__ reset_type; } ;


 scalar_t__ HNAE3_FLR_RESET ;
 scalar_t__ HNAE3_FUNC_RESET ;
 scalar_t__ HNAE3_VF_FULL_RESET ;
 scalar_t__ HNAE3_VF_FUNC_RESET ;
 scalar_t__ HNAE3_VF_PF_FUNC_RESET ;

__attribute__((used)) static inline bool hns3_dev_ongoing_func_reset(struct hnae3_ae_dev *ae_dev)
{
 return (ae_dev && (ae_dev->reset_type == HNAE3_FUNC_RESET ||
      ae_dev->reset_type == HNAE3_FLR_RESET ||
      ae_dev->reset_type == HNAE3_VF_FUNC_RESET ||
      ae_dev->reset_type == HNAE3_VF_FULL_RESET ||
      ae_dev->reset_type == HNAE3_VF_PF_FUNC_RESET));
}
