
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {scalar_t__ mapping; scalar_t__ kernelapi; } ;


 int cxl_fs_cnt ;
 int cxl_vfs_mount ;
 int simple_release_fs (int *,int *) ;

void cxl_release_mapping(struct cxl_context *ctx)
{
 if (ctx->kernelapi && ctx->mapping)
  simple_release_fs(&cxl_vfs_mount, &cxl_fs_cnt);
}
