
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_hw {int dummy; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int iavf_aq_queue_shutdown (struct iavf_hw*,int) ;
 scalar_t__ iavf_check_asq_alive (struct iavf_hw*) ;
 int iavf_shutdown_arq (struct iavf_hw*) ;
 int iavf_shutdown_asq (struct iavf_hw*) ;

enum iavf_status iavf_shutdown_adminq(struct iavf_hw *hw)
{
 enum iavf_status ret_code = 0;

 if (iavf_check_asq_alive(hw))
  iavf_aq_queue_shutdown(hw, 1);

 iavf_shutdown_asq(hw);
 iavf_shutdown_arq(hw);

 return ret_code;
}
