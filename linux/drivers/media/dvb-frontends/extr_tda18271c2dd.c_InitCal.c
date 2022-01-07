
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda_state {int dummy; } ;


 int CalcRFFilterCurve (struct tda_state*) ;
 int FixedContentsI2CUpdate (struct tda_state*) ;
 int StandBy (struct tda_state*) ;

__attribute__((used)) static int InitCal(struct tda_state *state)
{
 int status = 0;

 do {
  status = FixedContentsI2CUpdate(state);
  if (status < 0)
   break;
  status = CalcRFFilterCurve(state);
  if (status < 0)
   break;
  status = StandBy(state);
  if (status < 0)
   break;

 } while (0);
 return status;
}
