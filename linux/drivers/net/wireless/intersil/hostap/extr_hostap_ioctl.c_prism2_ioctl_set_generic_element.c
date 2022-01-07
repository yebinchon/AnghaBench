
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
struct TYPE_6__ {TYPE_1__ generic_elem; } ;
struct prism2_hostapd_param {TYPE_2__ u; } ;
struct TYPE_7__ {int dev; } ;
typedef TYPE_3__ local_info_t ;


 int EINVAL ;
 int PRISM2_HOSTAPD_GENERIC_ELEMENT_HDR_LEN ;
 int prism2_set_genericelement (int ,int ,int) ;

__attribute__((used)) static int prism2_ioctl_set_generic_element(local_info_t *local,
         struct prism2_hostapd_param *param,
         int param_len)
{
 int max_len, len;

 len = param->u.generic_elem.len;
 max_len = param_len - PRISM2_HOSTAPD_GENERIC_ELEMENT_HDR_LEN;
 if (max_len < 0 || max_len < len)
  return -EINVAL;

 return prism2_set_genericelement(local->dev,
      param->u.generic_elem.data, len);
}
