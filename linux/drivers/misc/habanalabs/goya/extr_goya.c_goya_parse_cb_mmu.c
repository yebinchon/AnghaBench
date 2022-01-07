
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct packet_msg_prot {int dummy; } ;
struct hl_device {int kernel_cb_mgr; int dev; } ;
struct hl_cs_parser {scalar_t__ patched_cb_size; scalar_t__ user_cb_size; struct hl_cb* patched_cb; struct hl_cb* user_cb; } ;
struct hl_cb {scalar_t__ kernel_address; } ;


 int EFAULT ;
 int EINVAL ;
 int HL_KERNEL_ASID_ID ;
 int PAGE_SHIFT ;
 int WARN (int,char*,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int goya_validate_cb (struct hl_device*,struct hl_cs_parser*,int) ;
 int hl_cb_create (struct hl_device*,int *,scalar_t__,int*,int ) ;
 int hl_cb_destroy (struct hl_device*,int *,int) ;
 struct hl_cb* hl_cb_get (struct hl_device*,int *,scalar_t__) ;
 int hl_cb_put (struct hl_cb*) ;
 int memcpy (void*,void*,scalar_t__) ;

__attribute__((used)) static int goya_parse_cb_mmu(struct hl_device *hdev,
  struct hl_cs_parser *parser)
{
 u64 patched_cb_handle;
 u32 patched_cb_size;
 struct hl_cb *user_cb;
 int rc;






 parser->patched_cb_size = parser->user_cb_size +
   sizeof(struct packet_msg_prot) * 2;

 rc = hl_cb_create(hdev, &hdev->kernel_cb_mgr,
    parser->patched_cb_size,
    &patched_cb_handle, HL_KERNEL_ASID_ID);

 if (rc) {
  dev_err(hdev->dev,
   "Failed to allocate patched CB for DMA CS %d\n",
   rc);
  return rc;
 }

 patched_cb_handle >>= PAGE_SHIFT;
 parser->patched_cb = hl_cb_get(hdev, &hdev->kernel_cb_mgr,
    (u32) patched_cb_handle);

 WARN(!parser->patched_cb, "DMA CB handle invalid 0x%x\n",
   (u32) patched_cb_handle);
 if (!parser->patched_cb) {
  rc = -EFAULT;
  goto out;
 }





 memcpy((void *) (uintptr_t) parser->patched_cb->kernel_address,
  (void *) (uintptr_t) parser->user_cb->kernel_address,
  parser->user_cb_size);

 patched_cb_size = parser->patched_cb_size;


 user_cb = parser->user_cb;
 parser->user_cb = parser->patched_cb;
 rc = goya_validate_cb(hdev, parser, 1);
 parser->user_cb = user_cb;

 if (rc) {
  hl_cb_put(parser->patched_cb);
  goto out;
 }

 if (patched_cb_size != parser->patched_cb_size) {
  dev_err(hdev->dev, "user CB size mismatch\n");
  hl_cb_put(parser->patched_cb);
  rc = -EINVAL;
  goto out;
 }

out:






 hl_cb_destroy(hdev, &hdev->kernel_cb_mgr,
     patched_cb_handle << PAGE_SHIFT);

 return rc;
}
