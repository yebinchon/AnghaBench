
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_pf {int flags; } ;


 int ICE_FLAG_ADV_FEATURES ;
 int test_bit (int ,int ) ;

bool ice_is_safe_mode(struct ice_pf *pf)
{
 return !test_bit(ICE_FLAG_ADV_FEATURES, pf->flags);
}
