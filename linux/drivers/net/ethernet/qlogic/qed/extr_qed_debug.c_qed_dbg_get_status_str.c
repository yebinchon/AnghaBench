
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int MAX_DBG_STATUS ;
 char const** s_status_str ;

const char *qed_dbg_get_status_str(enum dbg_status status)
{
 return (status <
  MAX_DBG_STATUS) ? s_status_str[status] : "Invalid debug status";
}
