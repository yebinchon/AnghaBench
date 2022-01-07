
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int object_is_on_stack (void const*) ;
 scalar_t__ virt_addr_valid (void const*) ;

__attribute__((used)) static bool meson_nfc_is_buffer_dma_safe(const void *buffer)
{
 if (virt_addr_valid(buffer) && (!object_is_on_stack(buffer)))
  return 1;
 return 0;
}
