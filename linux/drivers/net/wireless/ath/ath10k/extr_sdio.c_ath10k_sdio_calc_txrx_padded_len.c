
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_mask; } ;
struct ath10k_sdio {TYPE_1__ mbox_info; } ;


 int __ALIGN_MASK (size_t,int ) ;

__attribute__((used)) static inline int ath10k_sdio_calc_txrx_padded_len(struct ath10k_sdio *ar_sdio,
         size_t len)
{
 return __ALIGN_MASK((len), ar_sdio->mbox_info.block_mask);
}
