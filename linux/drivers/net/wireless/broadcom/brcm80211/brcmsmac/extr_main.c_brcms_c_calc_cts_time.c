
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct brcms_c_info {int dummy; } ;


 int brcms_c_calc_ack_time (struct brcms_c_info*,int ,int ) ;

__attribute__((used)) static uint
brcms_c_calc_cts_time(struct brcms_c_info *wlc, u32 rspec,
        u8 preamble_type)
{
 return brcms_c_calc_ack_time(wlc, rspec, preamble_type);
}
