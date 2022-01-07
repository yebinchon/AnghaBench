
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_range {int we_version_source; int throughput; int we_version_compiled; } ;


 int WIRELESS_EXT ;
 int memset (struct iw_range*,int ,int) ;

__attribute__((used)) static int wl3501_get_range(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct iw_range *range = (struct iw_range *)extra;


 wrqu->data.length = sizeof(*range);


 memset(range, 0, sizeof(*range));


 range->we_version_compiled = WIRELESS_EXT;
 range->we_version_source = 1;
 range->throughput = 2 * 1000 * 1000;

 return 0;
}
