
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mantis_pci {int dummy; } ;


 int MANTIS_ERROR ;
 int POWER_OFF ;
 int dprintk (int ,int,char*,int) ;
 int mantis_frontend_power (struct mantis_pci*,int ) ;
 int mantis_frontend_soft_reset (struct mantis_pci*) ;

__attribute__((used)) static int mantis_frontend_shutdown(struct mantis_pci *mantis)
{
 int err;

 mantis_frontend_soft_reset(mantis);
 err = mantis_frontend_power(mantis, POWER_OFF);
 if (err != 0) {
  dprintk(MANTIS_ERROR, 1, "Frontend POWER OFF failed! <%d>", err);
  return 1;
 }

 return 0;
}
