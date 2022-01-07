
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hl_device {int dummy; } ;


 int CFG_BASE ;
 int PROT_BITS_OFFS ;
 int WREG32 (int,int ) ;

__attribute__((used)) static void goya_pb_set_block(struct hl_device *hdev, u64 base)
{
 u32 pb_addr = base - CFG_BASE + PROT_BITS_OFFS;

 while (pb_addr & 0xFFF) {
  WREG32(pb_addr, 0);
  pb_addr += 4;
 }
}
