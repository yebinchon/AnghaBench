
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_trans {int dummy; } ;
struct iwl_tfh_tfd {int num_tbs; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static u8 iwl_pcie_gen2_get_num_tbs(struct iwl_trans *trans,
        struct iwl_tfh_tfd *tfd)
{
 return le16_to_cpu(tfd->num_tbs) & 0x1f;
}
