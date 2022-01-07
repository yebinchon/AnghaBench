
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ena_host_attribute {TYPE_1__* host_info; int host_info_dma_addr; } ;
struct ena_com_dev {int dmadev; struct ena_host_attribute host_attr; } ;
struct TYPE_2__ {int ena_spec_version; } ;


 int ENA_COMMON_SPEC_VERSION_MAJOR ;
 int ENA_COMMON_SPEC_VERSION_MINOR ;
 int ENA_REGS_VERSION_MAJOR_VERSION_SHIFT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SZ_4K ;
 TYPE_1__* dma_alloc_coherent (int ,int ,int *,int ) ;
 scalar_t__ unlikely (int) ;

int ena_com_allocate_host_info(struct ena_com_dev *ena_dev)
{
 struct ena_host_attribute *host_attr = &ena_dev->host_attr;

 host_attr->host_info =
  dma_alloc_coherent(ena_dev->dmadev, SZ_4K,
       &host_attr->host_info_dma_addr, GFP_KERNEL);
 if (unlikely(!host_attr->host_info))
  return -ENOMEM;

 host_attr->host_info->ena_spec_version = ((ENA_COMMON_SPEC_VERSION_MAJOR <<
  ENA_REGS_VERSION_MAJOR_VERSION_SHIFT) |
  (ENA_COMMON_SPEC_VERSION_MINOR));

 return 0;
}
