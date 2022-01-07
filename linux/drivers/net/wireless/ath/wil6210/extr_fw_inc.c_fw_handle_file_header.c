
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil_fw_record_file_header {scalar_t__ comment; int data_len; int version; } ;
struct wil6210_priv {int fw_version; } ;


 int DUMP_PREFIX_OFFSET ;
 int EINVAL ;
 int WIL_FW_VERSION_PREFIX ;
 scalar_t__ WIL_FW_VERSION_PREFIX_LEN ;
 int memcmp (scalar_t__,int ,scalar_t__) ;
 int memcpy (int ,scalar_t__,int ) ;
 int min (scalar_t__,int) ;
 int wil_dbg_fw (struct wil6210_priv*,char*,int ,int ) ;
 int wil_err_fw (struct wil6210_priv*,char*,size_t) ;
 int wil_hex_dump_fw (char*,int ,int,int,scalar_t__,int,int) ;

__attribute__((used)) static int fw_handle_file_header(struct wil6210_priv *wil, const void *data,
     size_t size)
{
 const struct wil_fw_record_file_header *d = data;

 if (size != sizeof(*d)) {
  wil_err_fw(wil, "file header length incorrect: %zu\n", size);
  return -EINVAL;
 }

 wil_dbg_fw(wil, "new file, ver. %d, %i bytes\n",
     d->version, d->data_len);
 wil_hex_dump_fw("", DUMP_PREFIX_OFFSET, 16, 1, d->comment,
   sizeof(d->comment), 1);

 if (!memcmp(d->comment, WIL_FW_VERSION_PREFIX,
      WIL_FW_VERSION_PREFIX_LEN))
  memcpy(wil->fw_version,
         d->comment + WIL_FW_VERSION_PREFIX_LEN,
         min(sizeof(d->comment) - WIL_FW_VERSION_PREFIX_LEN,
      sizeof(wil->fw_version) - 1));

 return 0;
}
