
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TUN_XDP_FLAG ;

void *tun_ptr_to_xdp(void *ptr)
{
 return (void *)((unsigned long)ptr & ~TUN_XDP_FLAG);
}
