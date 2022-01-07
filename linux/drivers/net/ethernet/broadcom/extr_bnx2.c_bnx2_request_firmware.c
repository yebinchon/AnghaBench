
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {scalar_t__ rv2p_firmware; } ;


 int bnx2_request_uncached_firmware (struct bnx2*) ;

__attribute__((used)) static int bnx2_request_firmware(struct bnx2 *bp)
{
 return bp->rv2p_firmware ? 0 : bnx2_request_uncached_firmware(bp);
}
