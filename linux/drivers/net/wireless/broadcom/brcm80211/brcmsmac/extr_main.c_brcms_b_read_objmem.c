
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
typedef int u16 ;
struct brcms_hardware {struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;


 int D11REGOFFS (int ) ;
 int bcma_read16 (struct bcma_device*,int) ;
 int bcma_read32 (struct bcma_device*,int) ;
 int bcma_write32 (struct bcma_device*,int,int) ;
 int objaddr ;
 int objdata ;

__attribute__((used)) static u16
brcms_b_read_objmem(struct brcms_hardware *wlc_hw, uint offset, u32 sel)
{
 struct bcma_device *core = wlc_hw->d11core;
 u16 objoff = D11REGOFFS(objdata);

 bcma_write32(core, D11REGOFFS(objaddr), sel | (offset >> 2));
 (void)bcma_read32(core, D11REGOFFS(objaddr));
 if (offset & 2)
  objoff += 2;

 return bcma_read16(core, objoff);
}
