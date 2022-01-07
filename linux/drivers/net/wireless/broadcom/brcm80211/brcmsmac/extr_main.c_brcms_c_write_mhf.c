
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct brcms_hardware {int dummy; } ;


 size_t MHFMAX ;
 int M_HOST_FLAGS1 ;
 int M_HOST_FLAGS2 ;
 int M_HOST_FLAGS3 ;
 int M_HOST_FLAGS4 ;
 int M_HOST_FLAGS5 ;
 int brcms_b_write_shm (struct brcms_hardware*,int ,int ) ;

__attribute__((used)) static void brcms_c_write_mhf(struct brcms_hardware *wlc_hw, u16 *mhfs)
{
 u8 idx;
 u16 addr[] = {
  M_HOST_FLAGS1, M_HOST_FLAGS2, M_HOST_FLAGS3, M_HOST_FLAGS4,
  M_HOST_FLAGS5
 };

 for (idx = 0; idx < MHFMAX; idx++)
  brcms_b_write_shm(wlc_hw, addr[idx], mhfs[idx]);
}
