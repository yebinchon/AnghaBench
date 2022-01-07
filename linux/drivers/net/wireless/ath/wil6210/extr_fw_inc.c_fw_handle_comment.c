
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil_fw_record_comment_hdr {int magic; } ;
struct wil6210_priv {int dummy; } ;


 int DUMP_PREFIX_OFFSET ;



 int fw_handle_brd_file (struct wil6210_priv*,void const*,size_t) ;
 int fw_handle_capabilities (struct wil6210_priv*,void const*,size_t) ;
 int fw_handle_concurrency (struct wil6210_priv*,void const*,size_t) ;
 int le32_to_cpu (int ) ;
 int wil_dbg_fw (struct wil6210_priv*,char*) ;
 int wil_hex_dump_fw (char*,int ,int,int,void const*,size_t,int) ;

__attribute__((used)) static int
fw_handle_comment(struct wil6210_priv *wil, const void *data,
    size_t size)
{
 const struct wil_fw_record_comment_hdr *hdr = data;
 u32 magic;
 int rc = 0;

 if (size < sizeof(*hdr))
  return 0;

 magic = le32_to_cpu(hdr->magic);

 switch (magic) {
 case 129:
  wil_dbg_fw(wil, "magic is WIL_FW_CAPABILITIES_MAGIC\n");
  rc = fw_handle_capabilities(wil, data, size);
  break;
 case 130:
  wil_dbg_fw(wil, "magic is WIL_BRD_FILE_MAGIC\n");
  rc = fw_handle_brd_file(wil, data, size);
  break;
 case 128:
  wil_dbg_fw(wil, "magic is WIL_FW_CONCURRENCY_MAGIC\n");
  rc = fw_handle_concurrency(wil, data, size);
  break;
 default:
  wil_hex_dump_fw("", DUMP_PREFIX_OFFSET, 16, 1,
    data, size, 1);
 }

 return rc;
}
