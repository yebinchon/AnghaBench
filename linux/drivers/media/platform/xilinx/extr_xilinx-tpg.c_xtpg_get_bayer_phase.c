
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int XTPG_BAYER_PHASE_BGGR ;
 int XTPG_BAYER_PHASE_GBRG ;
 int XTPG_BAYER_PHASE_GRBG ;
 int XTPG_BAYER_PHASE_OFF ;
 int XTPG_BAYER_PHASE_RGGB ;

__attribute__((used)) static u32 xtpg_get_bayer_phase(unsigned int code)
{
 switch (code) {
 case 128:
  return XTPG_BAYER_PHASE_RGGB;
 case 129:
  return XTPG_BAYER_PHASE_GRBG;
 case 130:
  return XTPG_BAYER_PHASE_GBRG;
 case 131:
  return XTPG_BAYER_PHASE_BGGR;
 default:
  return XTPG_BAYER_PHASE_OFF;
 }
}
