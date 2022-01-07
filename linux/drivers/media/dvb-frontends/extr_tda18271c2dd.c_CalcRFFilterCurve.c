
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda_state {int m_TMValue_RFCal; } ;


 int PowerScanInit (struct tda_state*) ;
 int RFTrackingFiltersInit (struct tda_state*,int) ;
 int ThermometerRead (struct tda_state*,int *) ;
 int msleep (int) ;

__attribute__((used)) static int CalcRFFilterCurve(struct tda_state *state)
{
 int status = 0;
 do {
  msleep(200);
  status = PowerScanInit(state);
  if (status < 0)
   break;
  status = RFTrackingFiltersInit(state, 0);
  if (status < 0)
   break;
  status = RFTrackingFiltersInit(state, 1);
  if (status < 0)
   break;
  status = RFTrackingFiltersInit(state, 2);
  if (status < 0)
   break;
  status = RFTrackingFiltersInit(state, 3);
  if (status < 0)
   break;
  status = RFTrackingFiltersInit(state, 4);
  if (status < 0)
   break;
  status = RFTrackingFiltersInit(state, 5);
  if (status < 0)
   break;
  status = RFTrackingFiltersInit(state, 6);
  if (status < 0)
   break;
  status = ThermometerRead(state, &state->m_TMValue_RFCal);
  if (status < 0)
   break;
 } while (0);

 return status;
}
