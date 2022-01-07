
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char const* u32 ;
struct slic_device {scalar_t__ model; TYPE_1__* pdev; } ;
struct firmware {char const* size; scalar_t__* data; } ;
typedef scalar_t__ __le32 ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 char const* SLIC_FIRMWARE_MIN_SIZE ;
 scalar_t__ SLIC_MODEL_OASIS ;
 char const* SLIC_RCVWCS_BEGIN ;
 char const* SLIC_RCVWCS_FINISH ;
 char* SLIC_RCV_FIRMWARE_MOJAVE ;
 char* SLIC_RCV_FIRMWARE_OASIS ;
 int SLIC_REG_RCV_WCS ;
 int dev_err (int *,char*,char const*,...) ;
 char const* le32_to_cpu (scalar_t__) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;
 int slic_flush_write (struct slic_device*) ;
 char const* slic_read_dword_from_firmware (struct firmware const*,int*) ;
 int slic_write (struct slic_device*,int ,char const*) ;

__attribute__((used)) static int slic_load_rcvseq_firmware(struct slic_device *sdev)
{
 const struct firmware *fw;
 const char *file;
 u32 codelen;
 int idx = 0;
 u32 instr;
 u32 addr;
 int err;

 file = (sdev->model == SLIC_MODEL_OASIS) ? SLIC_RCV_FIRMWARE_OASIS :
          SLIC_RCV_FIRMWARE_MOJAVE;
 err = request_firmware(&fw, file, &sdev->pdev->dev);
 if (err) {
  dev_err(&sdev->pdev->dev,
   "failed to load receive sequencer firmware %s\n", file);
  return err;
 }



 if (fw->size < SLIC_FIRMWARE_MIN_SIZE) {
  dev_err(&sdev->pdev->dev,
   "invalid firmware size %zu (min %u expected)\n",
   fw->size, SLIC_FIRMWARE_MIN_SIZE);
  err = -EINVAL;
  goto release;
 }

 codelen = slic_read_dword_from_firmware(fw, &idx);


 if ((codelen + 4) > fw->size) {
  dev_err(&sdev->pdev->dev,
   "invalid rcv-sequencer firmware size %zu\n", fw->size);
  err = -EINVAL;
  goto release;
 }


 slic_write(sdev, SLIC_REG_RCV_WCS, SLIC_RCVWCS_BEGIN);
 for (addr = 0; addr < codelen; addr++) {
  __le32 val;

  slic_write(sdev, SLIC_REG_RCV_WCS, addr);

  instr = slic_read_dword_from_firmware(fw, &idx);

  slic_write(sdev, SLIC_REG_RCV_WCS, instr);

  val = (__le32)fw->data[idx];
  instr = le32_to_cpu(val);
  idx++;

  slic_write(sdev, SLIC_REG_RCV_WCS, instr);
 }

 slic_write(sdev, SLIC_REG_RCV_WCS, SLIC_RCVWCS_FINISH);
 slic_flush_write(sdev);
release:
 release_firmware(fw);

 return err;
}
