
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wname ;
typedef int ucs2_char_t ;
typedef int u8 ;
typedef int u32 ;
struct rndis_device {int dummy; } ;
struct netvsc_device {int dummy; } ;
struct net_device {int dummy; } ;
typedef int ifalias ;


 int RNDIS_OID_GEN_FRIENDLY_NAME ;
 int dev_set_alias (struct net_device*,int *,unsigned long) ;
 scalar_t__ rndis_filter_query_device (struct rndis_device*,struct netvsc_device*,int ,int *,int*) ;
 scalar_t__ strcmp (int *,char*) ;
 unsigned long ucs2_as_utf8 (int *,int *,int) ;

__attribute__((used)) static void rndis_get_friendly_name(struct net_device *net,
        struct rndis_device *rndis_device,
        struct netvsc_device *net_device)
{
 ucs2_char_t wname[256];
 unsigned long len;
 u8 ifalias[256];
 u32 size;

 size = sizeof(wname);
 if (rndis_filter_query_device(rndis_device, net_device,
          RNDIS_OID_GEN_FRIENDLY_NAME,
          wname, &size) != 0)
  return;

 if (size == 0)
  return;


 len = ucs2_as_utf8(ifalias, wname, sizeof(ifalias));


 if (strcmp(ifalias, "Network Adapter") != 0)
  dev_set_alias(net, ifalias, len);
}
