
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline bool ice_is_tc_ena(unsigned long bitmap, u8 tc)
{
 return test_bit(tc, &bitmap);
}
