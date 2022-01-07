
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * csr_address; } ;
struct lan743x_adapter {TYPE_1__ csr; } ;


 int ioread32 (int *) ;

u32 lan743x_csr_read(struct lan743x_adapter *adapter, int offset)
{
 return ioread32(&adapter->csr.csr_address[offset]);
}
