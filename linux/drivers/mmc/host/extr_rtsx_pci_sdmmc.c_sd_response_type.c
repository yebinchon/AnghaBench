
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_command {int dummy; } ;


 int EINVAL ;






 int SD_NO_CHECK_CRC7 ;
 int SD_RSP_TYPE_R0 ;
 int SD_RSP_TYPE_R1 ;
 int SD_RSP_TYPE_R1b ;
 int SD_RSP_TYPE_R2 ;
 int SD_RSP_TYPE_R3 ;
 int mmc_resp_type (struct mmc_command*) ;

__attribute__((used)) static int sd_response_type(struct mmc_command *cmd)
{
 switch (mmc_resp_type(cmd)) {
 case 133:
  return SD_RSP_TYPE_R0;
 case 132:
  return SD_RSP_TYPE_R1;
 case 130:
  return SD_RSP_TYPE_R1 | SD_NO_CHECK_CRC7;
 case 131:
  return SD_RSP_TYPE_R1b;
 case 129:
  return SD_RSP_TYPE_R2;
 case 128:
  return SD_RSP_TYPE_R3;
 default:
  return -EINVAL;
 }
}
