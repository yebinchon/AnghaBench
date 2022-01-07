
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k {int dummy; } ;


 int ath10k_ce_base_address (struct ath10k*,unsigned int) ;
 int ath10k_ce_dest_ring_base_addr_set (struct ath10k*,unsigned int,int ) ;
 int ath10k_ce_dest_ring_highmark_set (struct ath10k*,int ,int ) ;
 int ath10k_ce_dest_ring_size_set (struct ath10k*,int ,int ) ;

__attribute__((used)) static void ath10k_ce_deinit_dest_ring(struct ath10k *ar, unsigned int ce_id)
{
 u32 ctrl_addr = ath10k_ce_base_address(ar, ce_id);

 ath10k_ce_dest_ring_base_addr_set(ar, ce_id, 0);
 ath10k_ce_dest_ring_size_set(ar, ctrl_addr, 0);
 ath10k_ce_dest_ring_highmark_set(ar, ctrl_addr, 0);
}
