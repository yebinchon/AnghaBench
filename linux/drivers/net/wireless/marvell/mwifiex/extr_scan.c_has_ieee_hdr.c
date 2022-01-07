
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ element_id; } ;
struct ieee_types_generic {TYPE_1__ ieee_hdr; } ;



__attribute__((used)) static bool
has_ieee_hdr(struct ieee_types_generic *ie, u8 key)
{
 return (ie && ie->ieee_hdr.element_id == key);
}
