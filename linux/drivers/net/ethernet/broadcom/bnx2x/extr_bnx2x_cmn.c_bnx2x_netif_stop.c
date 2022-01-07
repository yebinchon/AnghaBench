
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 scalar_t__ CNIC_LOADED (struct bnx2x*) ;
 int bnx2x_int_disable_sync (struct bnx2x*,int) ;
 int bnx2x_napi_disable (struct bnx2x*) ;
 int bnx2x_napi_disable_cnic (struct bnx2x*) ;

void bnx2x_netif_stop(struct bnx2x *bp, int disable_hw)
{
 bnx2x_int_disable_sync(bp, disable_hw);
 bnx2x_napi_disable(bp);
 if (CNIC_LOADED(bp))
  bnx2x_napi_disable_cnic(bp);
}
