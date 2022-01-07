
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 scalar_t__ CONFIGURE_NIC_MODE (struct bnx2x*) ;
 int INITOP_SET ;
 int bnx2x_ilt_init_op_cnic (struct bnx2x*,int ) ;
 int bnx2x_init_searcher (struct bnx2x*) ;
 int bnx2x_reset_nic_mode (struct bnx2x*) ;

int bnx2x_init_hw_func_cnic(struct bnx2x *bp)
{
 int rc;

 bnx2x_ilt_init_op_cnic(bp, INITOP_SET);

 if (CONFIGURE_NIC_MODE(bp)) {

  bnx2x_init_searcher(bp);


  rc = bnx2x_reset_nic_mode(bp);
  if (rc)
   BNX2X_ERR("Can't change NIC mode!\n");
  return rc;
 }

 return 0;
}
