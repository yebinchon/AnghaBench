
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dsaf_device {int dummy; } ;


 int DSAF_PPE_INODE_BASE ;
 int ETH_SS_STATS ;
 char* hns_dsaf_get_node_stats_strings (char*,int,struct dsaf_device*) ;

void hns_dsaf_get_strings(int stringset, u8 *data, int port,
     struct dsaf_device *dsaf_dev)
{
 char *buff = (char *)data;
 int node = port;

 if (stringset != ETH_SS_STATS)
  return;


 buff = hns_dsaf_get_node_stats_strings(buff, node, dsaf_dev);


 node = port + DSAF_PPE_INODE_BASE;
 (void)hns_dsaf_get_node_stats_strings(buff, node, dsaf_dev);
}
