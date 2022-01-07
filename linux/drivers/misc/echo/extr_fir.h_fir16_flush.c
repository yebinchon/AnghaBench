
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fir16_state_t {int taps; int history; } ;
typedef int int16_t ;


 int memset (int ,int ,int) ;

__attribute__((used)) static inline void fir16_flush(struct fir16_state_t *fir)
{
 memset(fir->history, 0, fir->taps * sizeof(int16_t));
}
