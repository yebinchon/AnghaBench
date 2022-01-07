
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msdc_host {int dummy; } ;
struct mmc_request {int dummy; } ;
struct mmc_command {int dummy; } ;







 int mmc_resp_type (struct mmc_command*) ;

__attribute__((used)) static inline u32 msdc_cmd_find_resp(struct msdc_host *host,
  struct mmc_request *mrq, struct mmc_command *cmd)
{
 u32 resp;

 switch (mmc_resp_type(cmd)) {

 case 131:
  resp = 0x1;
  break;
 case 130:
  resp = 0x7;
  break;
 case 129:
  resp = 0x2;
  break;
 case 128:
  resp = 0x3;
  break;
 case 132:
 default:
  resp = 0x0;
  break;
 }

 return resp;
}
