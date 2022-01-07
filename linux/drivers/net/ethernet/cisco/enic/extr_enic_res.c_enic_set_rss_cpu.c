
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct enic {int vdev; } ;
typedef int dma_addr_t ;


 int CMD_RSS_CPU ;
 int vnic_dev_cmd (int ,int ,int *,int *,int) ;

int enic_set_rss_cpu(struct enic *enic, dma_addr_t cpu_pa, u64 len)
{
 u64 a0 = (u64)cpu_pa, a1 = len;
 int wait = 1000;

 return vnic_dev_cmd(enic->vdev, CMD_RSS_CPU, &a0, &a1, wait);
}
