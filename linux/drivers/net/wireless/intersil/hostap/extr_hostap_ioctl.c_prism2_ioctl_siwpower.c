
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; scalar_t__ disabled; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int HFA384X_RID_CNFMAXSLEEPDURATION ;
 int HFA384X_RID_CNFMULTICASTRECEIVE ;
 int HFA384X_RID_CNFPMENABLED ;
 int HFA384X_RID_CNFPMHOLDOVERDURATION ;

 int IW_POWER_MODE ;

 int IW_POWER_PERIOD ;
 int IW_POWER_TIMEOUT ;

 int hostap_set_word (struct net_device*,int ,int) ;

__attribute__((used)) static int prism2_ioctl_siwpower(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *wrq, char *extra)
{



 int ret = 0;

 if (wrq->disabled)
  return hostap_set_word(dev, HFA384X_RID_CNFPMENABLED, 0);

 switch (wrq->flags & IW_POWER_MODE) {
 case 128:
  ret = hostap_set_word(dev, HFA384X_RID_CNFMULTICASTRECEIVE, 0);
  if (ret)
   return ret;
  ret = hostap_set_word(dev, HFA384X_RID_CNFPMENABLED, 1);
  if (ret)
   return ret;
  break;
 case 130:
  ret = hostap_set_word(dev, HFA384X_RID_CNFMULTICASTRECEIVE, 1);
  if (ret)
   return ret;
  ret = hostap_set_word(dev, HFA384X_RID_CNFPMENABLED, 1);
  if (ret)
   return ret;
  break;
 case 129:
  break;
 default:
  return -EINVAL;
 }

 if (wrq->flags & IW_POWER_TIMEOUT) {
  ret = hostap_set_word(dev, HFA384X_RID_CNFPMENABLED, 1);
  if (ret)
   return ret;
  ret = hostap_set_word(dev, HFA384X_RID_CNFPMHOLDOVERDURATION,
          wrq->value / 1024);
  if (ret)
   return ret;
 }
 if (wrq->flags & IW_POWER_PERIOD) {
  ret = hostap_set_word(dev, HFA384X_RID_CNFPMENABLED, 1);
  if (ret)
   return ret;
  ret = hostap_set_word(dev, HFA384X_RID_CNFMAXSLEEPDURATION,
          wrq->value / 1024);
  if (ret)
   return ret;
 }

 return ret;

}
