
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
typedef int u8 ;
struct brcms_c_rateset {size_t count; int* rates; } ;
struct brcms_c_info {TYPE_1__* stf; } ;
struct TYPE_2__ {int txstreams; } ;


 int BRCMS_RATE_MASK ;
 int brcms_basic_rate (struct brcms_c_info*,int) ;
 int brcms_c_rateset_copy (struct brcms_c_rateset const*,struct brcms_c_rateset*) ;
 struct brcms_c_rateset* brcms_c_rateset_get_hwrs (struct brcms_c_info*) ;
 int brcms_c_rateset_mcs_upd (struct brcms_c_rateset*,int ) ;
 int brcms_c_write_rate_shm (struct brcms_c_info*,int,int) ;

__attribute__((used)) static void brcms_c_set_ratetable(struct brcms_c_info *wlc)
{
 const struct brcms_c_rateset *rs_dflt;
 struct brcms_c_rateset rs;
 u8 rate, basic_rate;
 uint i;

 rs_dflt = brcms_c_rateset_get_hwrs(wlc);

 brcms_c_rateset_copy(rs_dflt, &rs);
 brcms_c_rateset_mcs_upd(&rs, wlc->stf->txstreams);


 for (i = 0; i < rs.count; i++) {
  rate = rs.rates[i] & BRCMS_RATE_MASK;




  basic_rate = brcms_basic_rate(wlc, rate);
  if (basic_rate == 0)



   basic_rate = rs.rates[0] & BRCMS_RATE_MASK;

  brcms_c_write_rate_shm(wlc, rate, basic_rate);
 }
}
