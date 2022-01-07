
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct af_vsockmon_hdr {int dummy; } ;



__attribute__((used)) static int vsockmon_is_valid_mtu(int new_mtu)
{
 return new_mtu >= (int)sizeof(struct af_vsockmon_hdr);
}
