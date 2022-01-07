
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPIF_STATUS ;
 int VPIF_STATUS_CLR ;
 int regr (int ) ;
 int regw (int,int ) ;

__attribute__((used)) static inline int vpif_intr_status(int channel)
{
 int status = 0;
 int mask;

 if (channel < 0 || channel > 3)
  return 0;

 mask = 1 << channel;
 status = regr(VPIF_STATUS) & mask;
 regw(status, VPIF_STATUS_CLR);

 return status;
}
