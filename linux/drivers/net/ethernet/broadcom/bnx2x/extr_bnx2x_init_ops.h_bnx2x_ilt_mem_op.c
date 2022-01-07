
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 scalar_t__ CNIC_SUPPORT (struct bnx2x*) ;
 int CONFIGURE_NIC_MODE (struct bnx2x*) ;
 int ILT_CLIENT_CDU ;
 int ILT_CLIENT_QM ;
 int ILT_CLIENT_SRC ;
 int bnx2x_ilt_client_mem_op (struct bnx2x*,int ,int ) ;

__attribute__((used)) static int bnx2x_ilt_mem_op(struct bnx2x *bp, u8 memop)
{
 int rc = bnx2x_ilt_client_mem_op(bp, ILT_CLIENT_CDU, memop);
 if (!rc)
  rc = bnx2x_ilt_client_mem_op(bp, ILT_CLIENT_QM, memop);
 if (!rc && CNIC_SUPPORT(bp) && !CONFIGURE_NIC_MODE(bp))
  rc = bnx2x_ilt_client_mem_op(bp, ILT_CLIENT_SRC, memop);

 return rc;
}
