
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_tfh_tfd {struct iwl_tfh_tb* tbs; } ;
struct iwl_tfh_tb {int addr; } ;
struct iwl_tfd_tb {int hi_n_len; int lo; } ;
struct iwl_tfd {struct iwl_tfd_tb* tbs; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ use_tfh; } ;


 int get_unaligned_le32 (int *) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline dma_addr_t iwl_pcie_tfd_tb_get_addr(struct iwl_trans *trans,
        void *_tfd, u8 idx)
{

 if (trans->trans_cfg->use_tfh) {
  struct iwl_tfh_tfd *tfd = _tfd;
  struct iwl_tfh_tb *tb = &tfd->tbs[idx];

  return (dma_addr_t)(le64_to_cpu(tb->addr));
 } else {
  struct iwl_tfd *tfd = _tfd;
  struct iwl_tfd_tb *tb = &tfd->tbs[idx];
  dma_addr_t addr = get_unaligned_le32(&tb->lo);
  dma_addr_t hi_len;

  if (sizeof(dma_addr_t) <= sizeof(u32))
   return addr;

  hi_len = le16_to_cpu(tb->hi_n_len) & 0xF;






  return addr | ((hi_len << 16) << 16);
 }
}
