
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct mmc_request {struct mmc_data* data; struct mmc_command* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int blksz; int blocks; int sg_len; int error; struct scatterlist* sg; int flags; } ;
struct mmc_command {int opcode; int flags; int error; scalar_t__ arg; } ;
struct mmc_card {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MMC_BUS_TEST_R ;
 int MMC_BUS_TEST_W ;
 int MMC_CMD_ADTC ;
 int MMC_DATA_READ ;
 int MMC_DATA_WRITE ;
 int MMC_RSP_R1 ;
 int MMC_RSP_SPI_R1 ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int*,int) ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_set_data_timeout (struct mmc_data*,struct mmc_card*) ;
 int mmc_wait_for_req (struct mmc_host*,struct mmc_request*) ;
 int pr_err (char*,int ,int) ;
 int sg_init_one (struct scatterlist*,int*,int) ;

__attribute__((used)) static int
mmc_send_bus_test(struct mmc_card *card, struct mmc_host *host, u8 opcode,
    u8 len)
{
 struct mmc_request mrq = {};
 struct mmc_command cmd = {};
 struct mmc_data data = {};
 struct scatterlist sg;
 u8 *data_buf;
 u8 *test_buf;
 int i, err;
 static u8 testdata_8bit[8] = { 0x55, 0xaa, 0, 0, 0, 0, 0, 0 };
 static u8 testdata_4bit[4] = { 0x5a, 0, 0, 0 };




 data_buf = kmalloc(len, GFP_KERNEL);
 if (!data_buf)
  return -ENOMEM;

 if (len == 8)
  test_buf = testdata_8bit;
 else if (len == 4)
  test_buf = testdata_4bit;
 else {
  pr_err("%s: Invalid bus_width %d\n",
         mmc_hostname(host), len);
  kfree(data_buf);
  return -EINVAL;
 }

 if (opcode == MMC_BUS_TEST_W)
  memcpy(data_buf, test_buf, len);

 mrq.cmd = &cmd;
 mrq.data = &data;
 cmd.opcode = opcode;
 cmd.arg = 0;






 cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_ADTC;

 data.blksz = len;
 data.blocks = 1;
 if (opcode == MMC_BUS_TEST_R)
  data.flags = MMC_DATA_READ;
 else
  data.flags = MMC_DATA_WRITE;

 data.sg = &sg;
 data.sg_len = 1;
 mmc_set_data_timeout(&data, card);
 sg_init_one(&sg, data_buf, len);
 mmc_wait_for_req(host, &mrq);
 err = 0;
 if (opcode == MMC_BUS_TEST_R) {
  for (i = 0; i < len / 4; i++)
   if ((test_buf[i] ^ data_buf[i]) != 0xff) {
    err = -EIO;
    break;
   }
 }
 kfree(data_buf);

 if (cmd.error)
  return cmd.error;
 if (data.error)
  return data.error;

 return err;
}
