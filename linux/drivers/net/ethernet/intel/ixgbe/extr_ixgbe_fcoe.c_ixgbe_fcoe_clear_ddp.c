
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_fcoe_ddp {int err; unsigned long udp; scalar_t__ sgc; int * sgl; int * udl; scalar_t__ len; } ;



__attribute__((used)) static inline void ixgbe_fcoe_clear_ddp(struct ixgbe_fcoe_ddp *ddp)
{
 ddp->len = 0;
 ddp->err = 1;
 ddp->udl = ((void*)0);
 ddp->udp = 0UL;
 ddp->sgl = ((void*)0);
 ddp->sgc = 0;
}
