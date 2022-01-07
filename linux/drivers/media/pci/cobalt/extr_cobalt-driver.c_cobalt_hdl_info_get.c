
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cobalt {char* hdl_info; scalar_t__ bar1; } ;


 scalar_t__ COBALT_HDL_INFO_BASE ;
 int COBALT_HDL_INFO_SIZE ;
 int COBALT_HDL_SEARCH_STR ;
 char ioread8 (scalar_t__) ;
 scalar_t__ strstr (char*,int ) ;

__attribute__((used)) static int cobalt_hdl_info_get(struct cobalt *cobalt)
{
 int i;

 for (i = 0; i < COBALT_HDL_INFO_SIZE; i++)
  cobalt->hdl_info[i] =
   ioread8(cobalt->bar1 + COBALT_HDL_INFO_BASE + i);
 cobalt->hdl_info[COBALT_HDL_INFO_SIZE - 1] = '\0';
 if (strstr(cobalt->hdl_info, COBALT_HDL_SEARCH_STR))
  return 0;

 return 1;
}
