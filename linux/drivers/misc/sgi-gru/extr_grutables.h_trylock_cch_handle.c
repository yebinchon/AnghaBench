
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_context_configuration_handle {int dummy; } ;


 int __trylock_handle (struct gru_context_configuration_handle*) ;

__attribute__((used)) static inline int trylock_cch_handle(struct gru_context_configuration_handle *cch)
{
 return __trylock_handle(cch);
}
