
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int dummy; } ;


 unsigned long BIT (int ) ;

__attribute__((used)) static void *cpsw_xdpf_to_handle(struct xdp_frame *xdpf)
{
 return (void *)((unsigned long)xdpf | BIT(0));
}
