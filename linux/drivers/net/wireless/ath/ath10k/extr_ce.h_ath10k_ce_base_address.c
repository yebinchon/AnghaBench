
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ath10k {int dummy; } ;


 unsigned int CE0_BASE_ADDRESS ;
 unsigned int CE1_BASE_ADDRESS ;

__attribute__((used)) static inline u32 ath10k_ce_base_address(struct ath10k *ar, unsigned int ce_id)
{
 return CE0_BASE_ADDRESS + (CE1_BASE_ADDRESS - CE0_BASE_ADDRESS) * ce_id;
}
