
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_tx_meta {int dummy; } ;
struct ena_com_tx_ctx {int ena_meta; int meta_valid; } ;
struct ena_com_io_sq {int cached_tx_meta; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static inline bool ena_com_meta_desc_changed(struct ena_com_io_sq *io_sq,
          struct ena_com_tx_ctx *ena_tx_ctx)
{
 if (!ena_tx_ctx->meta_valid)
  return 0;

 return !!memcmp(&io_sq->cached_tx_meta,
   &ena_tx_ctx->ena_meta,
   sizeof(struct ena_com_tx_meta));
}
