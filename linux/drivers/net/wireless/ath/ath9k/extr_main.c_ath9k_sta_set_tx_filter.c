
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_node {int * key_idx; } ;
struct ath_hw {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int ath9k_hw_set_tx_filter (struct ath_hw*,int ,int) ;

__attribute__((used)) static void ath9k_sta_set_tx_filter(struct ath_hw *ah,
        struct ath_node *an,
        bool set)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(an->key_idx); i++) {
  if (!an->key_idx[i])
   continue;
  ath9k_hw_set_tx_filter(ah, an->key_idx[i], set);
 }
}
