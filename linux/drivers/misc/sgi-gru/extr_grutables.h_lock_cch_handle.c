
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_context_configuration_handle {int dummy; } ;


 int __lock_handle (struct gru_context_configuration_handle*) ;

__attribute__((used)) static inline void lock_cch_handle(struct gru_context_configuration_handle *cch)
{
 __lock_handle(cch);
}
