
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dsaf_device {int dummy; } ;


 int DSAF_PPE_INODE_BASE ;
 int * hns_dsaf_get_node_stats (struct dsaf_device*,int *,int) ;

void hns_dsaf_get_stats(struct dsaf_device *ddev, u64 *data, int port)
{
 u64 *p = data;
 int node_num = port;


 p = hns_dsaf_get_node_stats(ddev, p, node_num);


 node_num = port + DSAF_PPE_INODE_BASE;
 (void)hns_dsaf_get_node_stats(ddev, p, node_num);
}
