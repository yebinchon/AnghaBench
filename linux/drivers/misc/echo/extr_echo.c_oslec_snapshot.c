
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oslec_state {int taps; int * fir_taps16; int snapshot; } ;
typedef int int16_t ;


 int memcpy (int ,int ,int) ;

void oslec_snapshot(struct oslec_state *ec)
{
 memcpy(ec->snapshot, ec->fir_taps16[0], ec->taps * sizeof(int16_t));
}
