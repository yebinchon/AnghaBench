
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hl_device {int dev; scalar_t__ pldm; } ;


 int BIT (int) ;
 int CORESIGHT_TIMEOUT_USEC ;
 int EFAULT ;
 int GOYA_PLDM_CORESIGHT_TIMEOUT_USEC ;
 int dev_err (int ,char*,int ,int,int) ;
 int hl_poll_timeout (struct hl_device*,int ,int,int,int,int) ;

__attribute__((used)) static int goya_coresight_timeout(struct hl_device *hdev, u64 addr,
  int position, bool up)
{
 int rc;
 u32 val, timeout_usec;

 if (hdev->pldm)
  timeout_usec = GOYA_PLDM_CORESIGHT_TIMEOUT_USEC;
 else
  timeout_usec = CORESIGHT_TIMEOUT_USEC;

 rc = hl_poll_timeout(
  hdev,
  addr,
  val,
  up ? val & BIT(position) : !(val & BIT(position)),
  1000,
  timeout_usec);

 if (rc) {
  dev_err(hdev->dev,
   "Timeout while waiting for coresight, addr: 0x%llx, position: %d, up: %d\n",
    addr, position, up);
  return -EFAULT;
 }

 return 0;
}
