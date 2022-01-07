
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;
typedef enum dsaf_stp_port_type { ____Placeholder_dsaf_stp_port_type } dsaf_stp_port_type ;


 int DSAF_COMM_CHN ;
 scalar_t__ DSAF_STP_PORT_TYPE_0_REG ;
 int DSAF_STP_PORT_TYPE_M ;
 int DSAF_STP_PORT_TYPE_S ;
 int dsaf_set_dev_field (struct dsaf_device*,scalar_t__,int ,int ,int) ;

__attribute__((used)) static void hns_dsaf_stp_port_type_cfg(struct dsaf_device *dsaf_dev,
           enum dsaf_stp_port_type port_type)
{
 u32 i;

 for (i = 0; i < DSAF_COMM_CHN; i++) {
  dsaf_set_dev_field(dsaf_dev,
       DSAF_STP_PORT_TYPE_0_REG + 0x0004 * i,
       DSAF_STP_PORT_TYPE_M, DSAF_STP_PORT_TYPE_S,
       port_type);
 }
}
