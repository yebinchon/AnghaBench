
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_ps_ops {int dummy; } ;
struct ath_common {struct ath_ps_ops const* ps_ops; } ;



__attribute__((used)) static inline const struct ath_ps_ops *ath_ps_ops(struct ath_common *common)
{
 return common->ps_ops;
}
