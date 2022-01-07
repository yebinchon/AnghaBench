
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int set_promisc_tcam_disable (struct dsaf_device*,int ) ;
 int set_promisc_tcam_enable (struct dsaf_device*,int ) ;

void hns_dsaf_set_promisc_tcam(struct dsaf_device *dsaf_dev,
          u32 port, bool enable)
{
 if (enable)
  set_promisc_tcam_enable(dsaf_dev, port);
 else
  set_promisc_tcam_disable(dsaf_dev, port);
}
