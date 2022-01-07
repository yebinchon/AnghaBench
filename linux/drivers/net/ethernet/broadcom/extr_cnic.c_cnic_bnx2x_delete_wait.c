
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cnic_local {size_t max_cid_space; struct cnic_context* ctx_tbl; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
struct cnic_context {int cid; int ctx_flags; } ;


 int CTX_FL_DELETE_WAIT ;
 int CTX_FL_OFFLD_START ;
 int msleep (int) ;
 int netdev_warn (int ,char*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void cnic_bnx2x_delete_wait(struct cnic_dev *dev, u32 start_cid)
{
 struct cnic_local *cp = dev->cnic_priv;
 u32 i;

 for (i = start_cid; i < cp->max_cid_space; i++) {
  struct cnic_context *ctx = &cp->ctx_tbl[i];
  int j;

  while (test_bit(CTX_FL_DELETE_WAIT, &ctx->ctx_flags))
   msleep(10);

  for (j = 0; j < 5; j++) {
   if (!test_bit(CTX_FL_OFFLD_START, &ctx->ctx_flags))
    break;
   msleep(20);
  }

  if (test_bit(CTX_FL_OFFLD_START, &ctx->ctx_flags))
   netdev_warn(dev->netdev, "CID %x not deleted\n",
       ctx->cid);
 }
}
