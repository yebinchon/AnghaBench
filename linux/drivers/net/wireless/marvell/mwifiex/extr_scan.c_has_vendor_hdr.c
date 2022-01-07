
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ element_id; } ;
struct ieee_types_vendor_specific {TYPE_1__ vend_hdr; } ;



__attribute__((used)) static bool
has_vendor_hdr(struct ieee_types_vendor_specific *ie, u8 key)
{
 return (ie && ie->vend_hdr.element_id == key);
}
