
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int dummy; } ;


 int pvr2_hdw_get_desc (struct pvr2_hdw*) ;
 int pvr2_hdw_state_report (struct pvr2_hdw*,char*,unsigned int) ;
 int scnprintf (char*,unsigned int,char*,...) ;

int pvr2_debugifc_print_info(struct pvr2_hdw *hdw,char *buf,unsigned int acnt)
{
 int bcnt = 0;
 int ccnt;
 ccnt = scnprintf(buf, acnt, "Driver hardware description: %s\n",
    pvr2_hdw_get_desc(hdw));
 bcnt += ccnt; acnt -= ccnt; buf += ccnt;
 ccnt = scnprintf(buf,acnt,"Driver state info:\n");
 bcnt += ccnt; acnt -= ccnt; buf += ccnt;
 ccnt = pvr2_hdw_state_report(hdw,buf,acnt);
 bcnt += ccnt; acnt -= ccnt; buf += ccnt;

 return bcnt;
}
