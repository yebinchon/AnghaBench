
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_recv_context {int * sds_rings; } ;


 int kfree (int *) ;

void qlcnic_free_sds_rings(struct qlcnic_recv_context *recv_ctx)
{
 kfree(recv_ctx->sds_rings);
 recv_ctx->sds_rings = ((void*)0);
}
