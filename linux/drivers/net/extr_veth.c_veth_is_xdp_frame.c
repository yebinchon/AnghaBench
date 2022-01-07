
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long VETH_XDP_FLAG ;

__attribute__((used)) static bool veth_is_xdp_frame(void *ptr)
{
 return (unsigned long)ptr & VETH_XDP_FLAG;
}
