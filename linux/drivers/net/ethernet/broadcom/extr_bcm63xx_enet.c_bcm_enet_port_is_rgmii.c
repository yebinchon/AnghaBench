
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENETSW_RGMII_PORT0 ;

__attribute__((used)) static inline int bcm_enet_port_is_rgmii(int portid)
{
 return portid >= ENETSW_RGMII_PORT0;
}
