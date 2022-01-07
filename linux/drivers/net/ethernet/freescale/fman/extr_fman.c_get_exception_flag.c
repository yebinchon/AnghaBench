
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum fman_exceptions { ____Placeholder_fman_exceptions } fman_exceptions ;


 int EX_BMI_DISPATCH_RAM_ECC ;
 int EX_BMI_LIST_RAM_ECC ;
 int EX_BMI_STATISTICS_RAM_ECC ;
 int EX_BMI_STORAGE_PROFILE_ECC ;
 int EX_DMA_BUS_ERROR ;
 int EX_DMA_FM_WRITE_ECC ;
 int EX_DMA_READ_ECC ;
 int EX_DMA_SINGLE_PORT_ECC ;
 int EX_DMA_SYSTEM_WRITE_ECC ;
 int EX_FPM_DOUBLE_ECC ;
 int EX_FPM_SINGLE_ECC ;
 int EX_FPM_STALL_ON_TASKS ;
 int EX_MURAM_ECC ;
 int EX_QMI_DEQ_FROM_UNKNOWN_PORTID ;
 int EX_QMI_DOUBLE_ECC ;
 int EX_QMI_SINGLE_ECC ;
__attribute__((used)) static u32 get_exception_flag(enum fman_exceptions exception)
{
 u32 bit_mask;

 switch (exception) {
 case 139:
  bit_mask = EX_DMA_BUS_ERROR;
  break;
 case 136:
  bit_mask = EX_DMA_SINGLE_PORT_ECC;
  break;
 case 137:
  bit_mask = EX_DMA_READ_ECC;
  break;
 case 135:
  bit_mask = EX_DMA_SYSTEM_WRITE_ECC;
  break;
 case 138:
  bit_mask = EX_DMA_FM_WRITE_ECC;
  break;
 case 132:
  bit_mask = EX_FPM_STALL_ON_TASKS;
  break;
 case 133:
  bit_mask = EX_FPM_SINGLE_ECC;
  break;
 case 134:
  bit_mask = EX_FPM_DOUBLE_ECC;
  break;
 case 128:
  bit_mask = EX_QMI_SINGLE_ECC;
  break;
 case 129:
  bit_mask = EX_QMI_DOUBLE_ECC;
  break;
 case 130:
  bit_mask = EX_QMI_DEQ_FROM_UNKNOWN_PORTID;
  break;
 case 142:
  bit_mask = EX_BMI_LIST_RAM_ECC;
  break;
 case 140:
  bit_mask = EX_BMI_STORAGE_PROFILE_ECC;
  break;
 case 141:
  bit_mask = EX_BMI_STATISTICS_RAM_ECC;
  break;
 case 143:
  bit_mask = EX_BMI_DISPATCH_RAM_ECC;
  break;
 case 131:
  bit_mask = EX_MURAM_ECC;
  break;
 default:
  bit_mask = 0;
  break;
 }

 return bit_mask;
}
