
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {int dummy; } ;
struct ath5k_hw {struct ath_common common; } ;



__attribute__((used)) static inline struct ath_common *ath5k_hw_common(struct ath5k_hw *ah)
{
 return &ah->common;
}
