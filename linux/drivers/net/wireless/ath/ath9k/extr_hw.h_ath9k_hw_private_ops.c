
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_private_ops {int dummy; } ;
struct ath_hw {struct ath_hw_private_ops private_ops; } ;



__attribute__((used)) static inline struct ath_hw_private_ops *ath9k_hw_private_ops(struct ath_hw *ah)
{
 return &ah->private_ops;
}
