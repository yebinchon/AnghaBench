
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct bnx2x {scalar_t__ dmae_ready; } ;


 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 int GUNZIP_BUF (struct bnx2x*) ;
 int GUNZIP_PHYS (struct bnx2x*) ;
 int bnx2x_init_ind_wr (struct bnx2x*,int ,int ,int ) ;
 int bnx2x_init_str_wr (struct bnx2x*,int ,int ,int ) ;
 int bnx2x_write_dmae_phys_len (struct bnx2x*,int ,int ,int ) ;

__attribute__((used)) static void bnx2x_write_big_buf(struct bnx2x *bp, u32 addr, u32 len,
    u8 wb)
{
 if (bp->dmae_ready)
  bnx2x_write_dmae_phys_len(bp, GUNZIP_PHYS(bp), addr, len);


 else if (wb && CHIP_IS_E1(bp))
  bnx2x_init_ind_wr(bp, addr, GUNZIP_BUF(bp), len);


 else
  bnx2x_init_str_wr(bp, addr, GUNZIP_BUF(bp), len);
}
