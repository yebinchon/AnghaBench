
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbnet_ring {unsigned int prod; unsigned int cons; } ;



__attribute__((used)) static unsigned int tbnet_available_buffers(const struct tbnet_ring *ring)
{
 return ring->prod - ring->cons;
}
