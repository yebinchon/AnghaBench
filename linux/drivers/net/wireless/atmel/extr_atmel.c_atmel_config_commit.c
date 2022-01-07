
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int atmel_open (struct net_device*) ;

__attribute__((used)) static int atmel_config_commit(struct net_device *dev,
          struct iw_request_info *info,
          void *zwrq,
          char *extra)
{
 return atmel_open(dev);
}
