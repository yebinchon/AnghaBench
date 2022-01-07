
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WMI_RESUME_TRIGGER_BCAST_RX ;
 int WMI_RESUME_TRIGGER_DISCONNECT ;
 int WMI_RESUME_TRIGGER_HOST ;
 int WMI_RESUME_TRIGGER_UCAST_RX ;
 int WMI_RESUME_TRIGGER_WMI_EVT ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void resume_triggers2string(u32 triggers, char *string, int str_size)
{
 string[0] = '\0';

 if (!triggers) {
  strlcat(string, " UNKNOWN", str_size);
  return;
 }

 if (triggers & WMI_RESUME_TRIGGER_HOST)
  strlcat(string, " HOST", str_size);

 if (triggers & WMI_RESUME_TRIGGER_UCAST_RX)
  strlcat(string, " UCAST_RX", str_size);

 if (triggers & WMI_RESUME_TRIGGER_BCAST_RX)
  strlcat(string, " BCAST_RX", str_size);

 if (triggers & WMI_RESUME_TRIGGER_WMI_EVT)
  strlcat(string, " WMI_EVT", str_size);

 if (triggers & WMI_RESUME_TRIGGER_DISCONNECT)
  strlcat(string, " DISCONNECT", str_size);
}
