
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int il_is_associated (struct il_priv*) ;

__attribute__((used)) static inline int
il_is_any_associated(struct il_priv *il)
{
 return il_is_associated(il);
}
