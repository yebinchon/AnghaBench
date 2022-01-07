
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fw_port_cap32_t ;
typedef enum cc_fec { ____Placeholder_cc_fec } cc_fec ;


 int FEC_BASER_RS ;
 int FEC_RS ;
 int FW_PORT_CAP32_FEC_BASER_RS ;
 int FW_PORT_CAP32_FEC_RS ;

__attribute__((used)) static inline enum cc_fec fwcap_to_cc_fec(fw_port_cap32_t fw_fec)
{
 enum cc_fec cc_fec = 0;

 if (fw_fec & FW_PORT_CAP32_FEC_RS)
  cc_fec |= FEC_RS;
 if (fw_fec & FW_PORT_CAP32_FEC_BASER_RS)
  cc_fec |= FEC_BASER_RS;

 return cc_fec;
}
