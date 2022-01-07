
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ICE_CORER_REQ ;
 int __ICE_GLOBR_REQ ;
 int __ICE_PFR_REQ ;
 int __ICE_RESET_OICR_RECV ;
 scalar_t__ test_bit (int ,unsigned long*) ;

bool ice_is_reset_in_progress(unsigned long *state)
{
 return test_bit(__ICE_RESET_OICR_RECV, state) ||
        test_bit(__ICE_PFR_REQ, state) ||
        test_bit(__ICE_CORER_REQ, state) ||
        test_bit(__ICE_GLOBR_REQ, state);
}
