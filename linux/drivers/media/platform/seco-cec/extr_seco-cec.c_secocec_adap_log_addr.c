
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cec_adapter {int dummy; } ;


 int SECOCEC_DEVICE_LA ;
 int SECOCEC_ENABLE_REG_1 ;
 int SECOCEC_ENABLE_REG_1_CEC ;
 int smb_rd16 (int ,int*) ;
 int smb_wr16 (int ,int) ;

__attribute__((used)) static int secocec_adap_log_addr(struct cec_adapter *adap, u8 logical_addr)
{
 u16 enable_val = 0;
 int status;


 status = smb_rd16(SECOCEC_ENABLE_REG_1, &enable_val);
 if (status)
  return status;

 status = smb_wr16(SECOCEC_ENABLE_REG_1,
     enable_val & ~SECOCEC_ENABLE_REG_1_CEC);
 if (status)
  return status;




 status = smb_wr16(SECOCEC_DEVICE_LA, logical_addr & 0xf);
 if (status)
  return status;


 status = smb_wr16(SECOCEC_ENABLE_REG_1,
     enable_val | SECOCEC_ENABLE_REG_1_CEC);
 if (status)
  return status;

 return 0;
}
