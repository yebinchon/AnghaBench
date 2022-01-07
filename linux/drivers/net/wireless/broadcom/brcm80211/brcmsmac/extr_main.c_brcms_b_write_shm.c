
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u16 ;
struct brcms_hardware {int dummy; } ;


 int OBJADDR_SHM_SEL ;
 int brcms_b_write_objmem (struct brcms_hardware*,int ,int ,int ) ;

void brcms_b_write_shm(struct brcms_hardware *wlc_hw, uint offset, u16 v)
{
 brcms_b_write_objmem(wlc_hw, offset, v, OBJADDR_SHM_SEL);
}
