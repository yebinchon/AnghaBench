
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 unsigned int GENMASK (unsigned int,int ) ;

__attribute__((used)) static int atmel_smc_cs_encode_ncycles(unsigned int ncycles,
           unsigned int msbpos,
           unsigned int msbwidth,
           unsigned int msbfactor,
           unsigned int *encodedval)
{
 unsigned int lsbmask = GENMASK(msbpos - 1, 0);
 unsigned int msbmask = GENMASK(msbwidth - 1, 0);
 unsigned int msb, lsb;
 int ret = 0;

 msb = ncycles / msbfactor;
 lsb = ncycles % msbfactor;

 if (lsb > lsbmask) {
  lsb = 0;
  msb++;
 }






 if (msb > msbmask) {
  msb = msbmask;
  lsb = lsbmask;
  ret = -ERANGE;
 }

 *encodedval = (msb << msbpos) | lsb;

 return ret;
}
