
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int prism2_get_datarates (struct net_device*,int*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int prism2_get_name(struct net_device *dev,
      struct iw_request_info *info,
      char *name, char *extra)
{
 u8 rates[10];
 int len, i, over2 = 0;

 len = prism2_get_datarates(dev, rates);

 for (i = 0; i < len; i++) {
  if (rates[i] == 0x0b || rates[i] == 0x16) {
   over2 = 1;
   break;
  }
 }

 strcpy(name, over2 ? "IEEE 802.11b" : "IEEE 802.11-DS");

 return 0;
}
