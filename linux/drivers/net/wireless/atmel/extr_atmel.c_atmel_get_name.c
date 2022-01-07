
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int strcpy (char*,char*) ;

__attribute__((used)) static int atmel_get_name(struct net_device *dev,
     struct iw_request_info *info,
     char *cwrq,
     char *extra)
{
 strcpy(cwrq, "IEEE 802.11-DS");
 return 0;
}
