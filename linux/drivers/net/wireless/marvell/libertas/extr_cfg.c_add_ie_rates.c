
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int bitrate; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int LBS_DEB_ASSOC ;
 int lbs_deb_hex (int ,char*,int*,int) ;
 TYPE_1__* lbs_rates ;

__attribute__((used)) static u8 *
add_ie_rates(u8 *tlv, const u8 *ie, int *nrates)
{
 int hw, ap, ap_max = ie[1];
 u8 hw_rate;


 ie += 2;

 lbs_deb_hex(LBS_DEB_ASSOC, "AP IE Rates", (u8 *) ie, ap_max);

 for (hw = 0; hw < ARRAY_SIZE(lbs_rates); hw++) {
  hw_rate = lbs_rates[hw].bitrate / 5;
  for (ap = 0; ap < ap_max; ap++) {
   if (hw_rate == (ie[ap] & 0x7f)) {
    *tlv++ = ie[ap];
    *nrates = *nrates + 1;
   }
  }
 }
 return tlv;
}
