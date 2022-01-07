
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sv11_shutdown (scalar_t__) ;
 scalar_t__ sv11_unit ;

void cleanup_module(void)
{
 if (sv11_unit)
  sv11_shutdown(sv11_unit);
}
