
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct niu {int dev; } ;


 int ENODEV ;
 int SYS_ERR_STAT ;
 int netdev_err (int ,char*,unsigned long long) ;
 int niu_log_device_error (struct niu*,scalar_t__) ;
 scalar_t__ nr64 (int ) ;

__attribute__((used)) static int niu_device_error(struct niu *np)
{
 u64 stat = nr64(SYS_ERR_STAT);

 netdev_err(np->dev, "Core device error, stat[%llx]\n",
     (unsigned long long)stat);

 niu_log_device_error(np, stat);

 return -ENODEV;
}
