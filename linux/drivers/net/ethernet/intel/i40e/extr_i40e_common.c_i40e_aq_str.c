
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_hw {char const* err_str; } ;
typedef enum i40e_admin_queue_err { ____Placeholder_i40e_admin_queue_err } i40e_admin_queue_err ;
 int snprintf (char const*,int,char*,int) ;

const char *i40e_aq_str(struct i40e_hw *hw, enum i40e_admin_queue_err aq_err)
{
 switch (aq_err) {
 case 128:
  return "OK";
 case 131:
  return "I40E_AQ_RC_EPERM";
 case 137:
  return "I40E_AQ_RC_ENOENT";
 case 129:
  return "I40E_AQ_RC_ESRCH";
 case 141:
  return "I40E_AQ_RC_EINTR";
 case 139:
  return "I40E_AQ_RC_EIO";
 case 132:
  return "I40E_AQ_RC_ENXIO";
 case 149:
  return "I40E_AQ_RC_E2BIG";
 case 147:
  return "I40E_AQ_RC_EAGAIN";
 case 136:
  return "I40E_AQ_RC_ENOMEM";
 case 148:
  return "I40E_AQ_RC_EACCES";
 case 144:
  return "I40E_AQ_RC_EFAULT";
 case 146:
  return "I40E_AQ_RC_EBUSY";
 case 145:
  return "I40E_AQ_RC_EEXIST";
 case 140:
  return "I40E_AQ_RC_EINVAL";
 case 133:
  return "I40E_AQ_RC_ENOTTY";
 case 135:
  return "I40E_AQ_RC_ENOSPC";
 case 134:
  return "I40E_AQ_RC_ENOSYS";
 case 130:
  return "I40E_AQ_RC_ERANGE";
 case 142:
  return "I40E_AQ_RC_EFLUSHED";
 case 150:
  return "I40E_AQ_RC_BAD_ADDR";
 case 138:
  return "I40E_AQ_RC_EMODE";
 case 143:
  return "I40E_AQ_RC_EFBIG";
 }

 snprintf(hw->err_str, sizeof(hw->err_str), "%d", aq_err);
 return hw->err_str;
}
