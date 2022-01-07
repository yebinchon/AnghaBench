
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int dummy; } ;


 unsigned long BR_LEARNING ;

__attribute__((used)) static int
ofdpa_port_attr_bridge_flags_support_get(const struct rocker_port *
      rocker_port,
      unsigned long *
      p_brport_flags_support)
{
 *p_brport_flags_support = BR_LEARNING;
 return 0;
}
