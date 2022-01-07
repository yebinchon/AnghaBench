
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lmc_softc_t ;


 int lmc_mii_writereg (int * const,int ,int,int) ;

__attribute__((used)) static void
lmc_t1_write (lmc_softc_t * const sc, int a, int d)
{
  lmc_mii_writereg (sc, 0, 17, a);
  lmc_mii_writereg (sc, 0, 18, d);
}
