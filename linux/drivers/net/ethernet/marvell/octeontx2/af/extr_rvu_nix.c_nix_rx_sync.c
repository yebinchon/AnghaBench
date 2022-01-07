
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int dev; } ;


 int BIT_ULL (int ) ;
 int NIX_AF_RX_SW_SYNC ;
 int dev_err (int ,char*) ;
 scalar_t__ is_rvu_9xxx_A0 (struct rvu*) ;
 int rvu_poll_reg (struct rvu*,int,int ,int ,int) ;
 int rvu_write64 (struct rvu*,int,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void nix_rx_sync(struct rvu *rvu, int blkaddr)
{
 int err;


 rvu_write64(rvu, blkaddr, NIX_AF_RX_SW_SYNC, BIT_ULL(0));
 err = rvu_poll_reg(rvu, blkaddr, NIX_AF_RX_SW_SYNC, BIT_ULL(0), 1);
 if (err)
  dev_err(rvu->dev, "NIX RX software sync failed\n");




 if (is_rvu_9xxx_A0(rvu))
  usleep_range(50, 60);
}
