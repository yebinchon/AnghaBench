
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int dummy; } ;
struct firmware {int data; int size; } ;


 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int ) ;
 int wil_brd_process (struct wil6210_priv*,int ,int) ;
 int wil_dbg_fw (struct wil6210_priv*,char*,char const*,int ) ;
 int wil_err_fw (struct wil6210_priv*,char*,char const*,...) ;
 int wil_fw_verify (struct wil6210_priv*,int ,int ) ;
 int wil_to_dev (struct wil6210_priv*) ;

int wil_request_board(struct wil6210_priv *wil, const char *name)
{
 int rc, dlen;
 const struct firmware *brd;

 rc = request_firmware(&brd, name, wil_to_dev(wil));
 if (rc) {
  wil_err_fw(wil, "Failed to load brd %s\n", name);
  return rc;
 }
 wil_dbg_fw(wil, "Loading <%s>, %zu bytes\n", name, brd->size);


 dlen = wil_fw_verify(wil, brd->data, brd->size);
 if (dlen < 0) {
  rc = dlen;
  goto out;
 }


 rc = wil_brd_process(wil, brd->data, dlen);

out:
 release_firmware(brd);
 if (rc)
  wil_err_fw(wil, "Loading <%s> failed, rc %d\n", name, rc);
 return rc;
}
