
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hl_device {int kernel_cb_mgr; int dev; } ;
struct hl_cs_parser {int job_userptr_list; int patched_cb; int patched_cb_size; } ;


 int EFAULT ;
 int HL_KERNEL_ASID_ID ;
 int PAGE_SHIFT ;
 int WARN (int,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int goya_patch_cb (struct hl_device*,struct hl_cs_parser*) ;
 int goya_validate_cb (struct hl_device*,struct hl_cs_parser*,int) ;
 int hl_cb_create (struct hl_device*,int *,int ,int*,int ) ;
 int hl_cb_destroy (struct hl_device*,int *,int) ;
 int hl_cb_get (struct hl_device*,int *,int ) ;
 int hl_cb_put (int ) ;
 int hl_userptr_delete_list (struct hl_device*,int ) ;

__attribute__((used)) static int goya_parse_cb_no_mmu(struct hl_device *hdev,
    struct hl_cs_parser *parser)
{
 u64 patched_cb_handle;
 int rc;

 rc = goya_validate_cb(hdev, parser, 0);

 if (rc)
  goto free_userptr;

 rc = hl_cb_create(hdev, &hdev->kernel_cb_mgr,
    parser->patched_cb_size,
    &patched_cb_handle, HL_KERNEL_ASID_ID);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to allocate patched CB for DMA CS %d\n", rc);
  goto free_userptr;
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

 rc = goya_patch_cb(hdev, parser);

 if (rc)
  hl_cb_put(parser->patched_cb);

out:






 hl_cb_destroy(hdev, &hdev->kernel_cb_mgr,
    patched_cb_handle << PAGE_SHIFT);

free_userptr:
 if (rc)
  hl_userptr_delete_list(hdev, parser->job_userptr_list);
 return rc;
}
