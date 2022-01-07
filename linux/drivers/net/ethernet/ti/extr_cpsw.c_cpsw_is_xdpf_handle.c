
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BIT (int ) ;

__attribute__((used)) static int cpsw_is_xdpf_handle(void *handle)
{
 return (unsigned long)handle & BIT(0);
}
