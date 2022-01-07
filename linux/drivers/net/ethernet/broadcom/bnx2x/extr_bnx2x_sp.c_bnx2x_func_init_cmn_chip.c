
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_func_sp_drv_ops {int (* init_hw_cmn_chip ) (struct bnx2x*) ;} ;
struct bnx2x {int dummy; } ;


 int bnx2x_func_init_port (struct bnx2x*,struct bnx2x_func_sp_drv_ops const*) ;
 int stub1 (struct bnx2x*) ;

__attribute__((used)) static inline int bnx2x_func_init_cmn_chip(struct bnx2x *bp,
     const struct bnx2x_func_sp_drv_ops *drv)
{
 int rc = drv->init_hw_cmn_chip(bp);
 if (rc)
  return rc;

 return bnx2x_func_init_port(bp, drv);
}
