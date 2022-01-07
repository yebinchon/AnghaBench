
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct prism2_hostapd_param {int cmd; } ;
struct iw_point {int length; int pointer; } ;
struct TYPE_11__ {int ap; } ;
typedef TYPE_1__ local_info_t ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct prism2_hostapd_param*) ;


 int PRISM2_HOSTAPD_MAX_BUF_SIZE ;






 int PTR_ERR (struct prism2_hostapd_param*) ;
 scalar_t__ copy_to_user (int ,struct prism2_hostapd_param*,int) ;
 int kfree (struct prism2_hostapd_param*) ;
 struct prism2_hostapd_param* memdup_user (int ,int) ;
 int prism2_hostapd (int ,struct prism2_hostapd_param*) ;
 int prism2_ioctl_get_encryption (TYPE_1__*,struct prism2_hostapd_param*,int) ;
 int prism2_ioctl_get_rid (TYPE_1__*,struct prism2_hostapd_param*,int) ;
 int prism2_ioctl_mlme (TYPE_1__*,struct prism2_hostapd_param*) ;
 int prism2_ioctl_scan_req (TYPE_1__*,struct prism2_hostapd_param*) ;
 int prism2_ioctl_set_assoc_ap_addr (TYPE_1__*,struct prism2_hostapd_param*,int) ;
 int prism2_ioctl_set_encryption (TYPE_1__*,struct prism2_hostapd_param*,int) ;
 int prism2_ioctl_set_generic_element (TYPE_1__*,struct prism2_hostapd_param*,int) ;
 int prism2_ioctl_set_rid (TYPE_1__*,struct prism2_hostapd_param*,int) ;

__attribute__((used)) static int prism2_ioctl_priv_hostapd(local_info_t *local, struct iw_point *p)
{
 struct prism2_hostapd_param *param;
 int ret = 0;
 int ap_ioctl = 0;

 if (p->length < sizeof(struct prism2_hostapd_param) ||
     p->length > PRISM2_HOSTAPD_MAX_BUF_SIZE || !p->pointer)
  return -EINVAL;

 param = memdup_user(p->pointer, p->length);
 if (IS_ERR(param)) {
  return PTR_ERR(param);
 }

 switch (param->cmd) {
 case 128:
  ret = prism2_ioctl_set_encryption(local, param, p->length);
  break;
 case 135:
  ret = prism2_ioctl_get_encryption(local, param, p->length);
  break;
 case 134:
  ret = prism2_ioctl_get_rid(local, param, p->length);
  break;
 case 129:
  ret = prism2_ioctl_set_rid(local, param, p->length);
  break;
 case 131:
  ret = prism2_ioctl_set_assoc_ap_addr(local, param, p->length);
  break;
 case 130:
  ret = prism2_ioctl_set_generic_element(local, param,
             p->length);
  break;
 case 133:
  ret = prism2_ioctl_mlme(local, param);
  break;
 case 132:
  ret = prism2_ioctl_scan_req(local, param);
  break;
 default:
  ret = prism2_hostapd(local->ap, param);
  ap_ioctl = 1;
  break;
 }

 if (ret == 1 || !ap_ioctl) {
  if (copy_to_user(p->pointer, param, p->length)) {
   ret = -EFAULT;
   goto out;
  } else if (ap_ioctl)
   ret = 0;
 }

 out:
 kfree(param);
 return ret;
}
