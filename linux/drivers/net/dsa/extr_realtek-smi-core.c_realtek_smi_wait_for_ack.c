
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct realtek_smi {int dev; } ;


 int ETIMEDOUT ;
 int REALTEK_SMI_ACK_RETRY_COUNT ;
 int dev_err (int ,char*) ;
 int realtek_smi_read_bits (struct realtek_smi*,int,scalar_t__*) ;

__attribute__((used)) static int realtek_smi_wait_for_ack(struct realtek_smi *smi)
{
 int retry_cnt;

 retry_cnt = 0;
 do {
  u32 ack;

  realtek_smi_read_bits(smi, 1, &ack);
  if (ack == 0)
   break;

  if (++retry_cnt > REALTEK_SMI_ACK_RETRY_COUNT) {
   dev_err(smi->dev, "ACK timeout\n");
   return -ETIMEDOUT;
  }
 } while (1);

 return 0;
}
