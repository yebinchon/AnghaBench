
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rndis_device {int dummy; } ;


 int NDIS_RSS_PARAM_FLAG_DISABLE_RSS ;
 int rndis_set_rss_param_msg (struct rndis_device*,int const*,int ) ;

int rndis_filter_set_rss_param(struct rndis_device *rdev,
          const u8 *rss_key)
{

 rndis_set_rss_param_msg(rdev, rss_key,
    NDIS_RSS_PARAM_FLAG_DISABLE_RSS);

 return rndis_set_rss_param_msg(rdev, rss_key, 0);
}
