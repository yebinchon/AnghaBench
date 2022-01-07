
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
struct dma_info {int core; } ;


 int D64_XC_AE ;
 int bcma_mask32 (int ,int ,int) ;
 int bcma_read32 (int ,int ) ;
 int bcma_set32 (int ,int ,int) ;

__attribute__((used)) static bool _dma64_addrext(struct dma_info *di, uint ctrl_offset)
{
 u32 w;
 bcma_set32(di->core, ctrl_offset, D64_XC_AE);
 w = bcma_read32(di->core, ctrl_offset);
 bcma_mask32(di->core, ctrl_offset, ~D64_XC_AE);
 return (w & D64_XC_AE) == D64_XC_AE;
}
