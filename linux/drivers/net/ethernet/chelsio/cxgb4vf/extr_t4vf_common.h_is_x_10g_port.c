
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_config {int pcaps; } ;
typedef int fw_port_cap32_t ;


 int FW_PORT_CAP32_SPEED_100M ;
 int FW_PORT_CAP32_SPEED_1G ;
 int FW_PORT_CAP32_SPEED_G (int ) ;
 int FW_PORT_CAP32_SPEED_V (int ) ;

__attribute__((used)) static inline bool is_x_10g_port(const struct link_config *lc)
{
 fw_port_cap32_t speeds, high_speeds;

 speeds = FW_PORT_CAP32_SPEED_V(FW_PORT_CAP32_SPEED_G(lc->pcaps));
 high_speeds =
  speeds & ~(FW_PORT_CAP32_SPEED_100M | FW_PORT_CAP32_SPEED_1G);

 return high_speeds != 0;
}
