
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_hdr {int dummy; } ;
typedef int __wsum ;


 int csum_add (int ,int ) ;

__attribute__((used)) static inline __wsum get_fixed_vlan_csum(__wsum hw_checksum,
      struct vlan_hdr *vlanh)
{
 return csum_add(hw_checksum, *(__wsum *)vlanh);
}
