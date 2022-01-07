
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCDC_DISABLE_VIDEO_PORT ;
 int CCDC_ENABLE_VIDEO_PORT ;
 int CCDC_FMTCFG ;
 int regw (int ,int ) ;

__attribute__((used)) static void ccdc_enable_vport(int flag)
{
 if (flag)

  regw(CCDC_ENABLE_VIDEO_PORT, CCDC_FMTCFG);
 else
  regw(CCDC_DISABLE_VIDEO_PORT, CCDC_FMTCFG);
}
