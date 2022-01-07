
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * csr_address; } ;
struct lan743x_adapter {TYPE_1__ csr; } ;


 int iowrite32 (int ,int *) ;

void lan743x_csr_write(struct lan743x_adapter *adapter, int offset,
         u32 data)
{
 iowrite32(data, &adapter->csr.csr_address[offset]);
}
