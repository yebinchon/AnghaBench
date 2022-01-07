
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct fastrpc_remote_arg {int dummy; } ;
struct fastrpc_phy_page {int dummy; } ;
struct fastrpc_invoke_ctx {int nscalars; } ;
struct fastrpc_invoke_buf {int dummy; } ;


 int FASTRPC_MAX_CRCLIST ;
 int FASTRPC_MAX_FDLIST ;

__attribute__((used)) static int fastrpc_get_meta_size(struct fastrpc_invoke_ctx *ctx)
{
 int size = 0;

 size = (sizeof(struct fastrpc_remote_arg) +
  sizeof(struct fastrpc_invoke_buf) +
  sizeof(struct fastrpc_phy_page)) * ctx->nscalars +
  sizeof(u64) * FASTRPC_MAX_FDLIST +
  sizeof(u32) * FASTRPC_MAX_CRCLIST;

 return size;
}
