
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int EACCES ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 int ETIME ;
 int dev_err (struct device*,char*,...) ;

__attribute__((used)) static int gve_adminq_parse_err(struct device *dev, u32 status)
{
 if (status != 129 &&
     status != 128)
  dev_err(dev, "AQ command failed with status %d\n", status);

 switch (status) {
 case 129:
  return 0;
 case 128:
  dev_err(dev, "parse_aq_err: err and status both unset, this should not be possible.\n");
  return -EINVAL;
 case 145:
 case 143:
 case 142:
 case 140:
 case 132:
  return -EAGAIN;
 case 144:
 case 139:
 case 138:
 case 137:
 case 136:
 case 130:
  return -EINVAL;
 case 141:
  return -ETIME;
 case 135:
 case 133:
  return -EACCES;
 case 134:
  return -ENOMEM;
 case 131:
  return -ENOTSUPP;
 default:
  dev_err(dev, "parse_aq_err: unknown status code %d\n", status);
  return -EINVAL;
 }
}
