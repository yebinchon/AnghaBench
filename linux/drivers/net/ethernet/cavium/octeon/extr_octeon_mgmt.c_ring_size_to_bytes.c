
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mgmt_port_ring_entry {int dummy; } mgmt_port_ring_entry ;



__attribute__((used)) static unsigned int ring_size_to_bytes(unsigned int ring_size)
{
 return ring_size * sizeof(union mgmt_port_ring_entry);
}
