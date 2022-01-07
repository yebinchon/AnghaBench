
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ DSAF_BASE_INNER_PORT_NUM ;
 scalar_t__ DSAF_SERVICE_NW_NUM ;
 int EINVAL ;

__attribute__((used)) static int hns_dsaf_get_port_id(u8 port)
{
 if (port < DSAF_SERVICE_NW_NUM)
  return port;

 if (port >= DSAF_BASE_INNER_PORT_NUM)
  return port - DSAF_BASE_INNER_PORT_NUM + DSAF_SERVICE_NW_NUM;

 return -EINVAL;
}
