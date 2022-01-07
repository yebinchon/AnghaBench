
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int dummy; } ;


 int DIS_SDSAVE ;
 int ENPDNPS ;
 int ENPWRSAVE ;
 int LINKENA ;
 int OCP_ALDPS_CONFIG ;
 int msleep (int) ;
 int ocp_reg_write (struct r8152*,int ,int) ;

__attribute__((used)) static void r8152_aldps_en(struct r8152 *tp, bool enable)
{
 if (enable) {
  ocp_reg_write(tp, OCP_ALDPS_CONFIG, ENPWRSAVE | ENPDNPS |
          LINKENA | DIS_SDSAVE);
 } else {
  ocp_reg_write(tp, OCP_ALDPS_CONFIG, ENPDNPS | LINKENA |
          DIS_SDSAVE);
  msleep(20);
 }
}
