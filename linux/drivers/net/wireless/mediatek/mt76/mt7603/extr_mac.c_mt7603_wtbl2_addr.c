
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MT_PCIE_REMAP_BASE_1 ;
 int MT_WTBL2_SIZE ;

__attribute__((used)) static u32
mt7603_wtbl2_addr(int idx)
{

 return MT_PCIE_REMAP_BASE_1 + idx * MT_WTBL2_SIZE;
}
