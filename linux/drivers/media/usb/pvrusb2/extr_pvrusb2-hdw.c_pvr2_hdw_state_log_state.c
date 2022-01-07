
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int name; } ;
typedef int buf ;


 int pr_info (char*,int ,unsigned int,char*) ;
 unsigned int pvr2_hdw_report_clients (struct pvr2_hdw*,char*,int) ;
 unsigned int pvr2_hdw_report_unlocked (struct pvr2_hdw*,unsigned int,char*,int) ;

__attribute__((used)) static void pvr2_hdw_state_log_state(struct pvr2_hdw *hdw)
{
 char buf[256];
 unsigned int idx, ccnt;
 unsigned int lcnt, ucnt;

 for (idx = 0; ; idx++) {
  ccnt = pvr2_hdw_report_unlocked(hdw,idx,buf,sizeof(buf));
  if (!ccnt) break;
  pr_info("%s %.*s\n", hdw->name, ccnt, buf);
 }
 ccnt = pvr2_hdw_report_clients(hdw, buf, sizeof(buf));
 if (ccnt >= sizeof(buf))
  ccnt = sizeof(buf);

 ucnt = 0;
 while (ucnt < ccnt) {
  lcnt = 0;
  while ((lcnt + ucnt < ccnt) && (buf[lcnt + ucnt] != '\n')) {
   lcnt++;
  }
  pr_info("%s %.*s\n", hdw->name, lcnt, buf + ucnt);
  ucnt += lcnt + 1;
 }
}
