
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_host_attribute {int * host_info; int host_info_dma_addr; } ;
struct ena_com_dev {int dmadev; struct ena_host_attribute host_attr; } ;


 int SZ_4K ;
 int dma_free_coherent (int ,int ,int *,int ) ;

void ena_com_delete_host_info(struct ena_com_dev *ena_dev)
{
 struct ena_host_attribute *host_attr = &ena_dev->host_attr;

 if (host_attr->host_info) {
  dma_free_coherent(ena_dev->dmadev, SZ_4K, host_attr->host_info,
      host_attr->host_info_dma_addr);
  host_attr->host_info = ((void*)0);
 }
}
