
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {int * rv2p_firmware; int * mips_firmware; } ;


 int release_firmware (int *) ;

__attribute__((used)) static void bnx2_release_firmware(struct bnx2 *bp)
{
 if (bp->rv2p_firmware) {
  release_firmware(bp->mips_firmware);
  release_firmware(bp->rv2p_firmware);
  bp->rv2p_firmware = ((void*)0);
 }
}
