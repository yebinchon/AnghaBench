
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int len; int data; int rid; } ;
struct TYPE_6__ {TYPE_3__ rid; } ;
struct prism2_hostapd_param {TYPE_1__ u; } ;
struct TYPE_9__ {int dev; TYPE_2__* func; } ;
typedef TYPE_4__ local_info_t ;
struct TYPE_7__ {int (* set_rid ) (int ,int ,int ,int) ;} ;


 int EINVAL ;
 int PRISM2_HOSTAPD_RID_HDR_LEN ;
 int stub1 (int ,int ,int ,int) ;

__attribute__((used)) static int prism2_ioctl_set_rid(local_info_t *local,
    struct prism2_hostapd_param *param,
    int param_len)
{
 int max_len;

 max_len = param_len - PRISM2_HOSTAPD_RID_HDR_LEN;
 if (max_len < 0 || max_len < param->u.rid.len)
  return -EINVAL;

 return local->func->set_rid(local->dev, param->u.rid.rid,
        param->u.rid.data, param->u.rid.len);
}
