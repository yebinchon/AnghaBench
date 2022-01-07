
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_rds_gen {int picode; int pty; int mono_stereo; int art_head; int compressed; int dyn_pty; int tp; int ta; int ms; int radiotext; int psname; scalar_t__ use_rbds; } ;


 int snprintf (int ,int,char*,unsigned int,unsigned int) ;
 int strscpy (int ,char*,int) ;

void vivid_rds_gen_fill(struct vivid_rds_gen *rds, unsigned freq,
     bool alt)
{

 if (rds->use_rbds) {
  rds->picode = 0x2e75;
  rds->pty = alt ? 29 : 2;
 } else {
  rds->picode = 0x8088;
  rds->pty = alt ? 16 : 3;
 }
 rds->mono_stereo = 1;
 rds->art_head = 0;
 rds->compressed = 0;
 rds->dyn_pty = 0;
 rds->tp = 1;
 rds->ta = alt;
 rds->ms = 1;
 snprintf(rds->psname, sizeof(rds->psname), "%6d.%1d",
   freq / 16, ((freq & 0xf) * 10) / 16);
 if (alt)
  strscpy(rds->radiotext,
   " The Radio Data System can switch between different Radio Texts ",
   sizeof(rds->radiotext));
 else
  strscpy(rds->radiotext,
   "An example of Radio Text as transmitted by the Radio Data System",
   sizeof(rds->radiotext));
}
