
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct bnxt {scalar_t__ fw_ver_str; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BNX_DIR_EXT_NONE ;
 int BNX_DIR_ORDINAL_FIRST ;
 int BNX_DIR_TYPE_PKG_LOG ;
 int BNX_PKG_LOG_FIELD_IDX_PKG_VERSION ;
 int FW_VER_STR_LEN ;
 int GFP_KERNEL ;
 scalar_t__ bnxt_find_nvram_item (struct net_device*,int ,int ,int ,int *,int *,int *) ;
 scalar_t__ bnxt_get_nvram_item (struct net_device*,int ,int ,int ,int *) ;
 char* bnxt_parse_pkglog (int ,int *,int ) ;
 int dev_err (int *,char*,int ) ;
 scalar_t__ isdigit (char) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int snprintf (scalar_t__,int,char*,char*) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void bnxt_get_pkgver(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);
 u16 index = 0;
 char *pkgver;
 u32 pkglen;
 u8 *pkgbuf;
 int len;

 if (bnxt_find_nvram_item(dev, BNX_DIR_TYPE_PKG_LOG,
     BNX_DIR_ORDINAL_FIRST, BNX_DIR_EXT_NONE,
     &index, ((void*)0), &pkglen) != 0)
  return;

 pkgbuf = kzalloc(pkglen, GFP_KERNEL);
 if (!pkgbuf) {
  dev_err(&bp->pdev->dev, "Unable to allocate memory for pkg version, length = %u\n",
   pkglen);
  return;
 }

 if (bnxt_get_nvram_item(dev, index, 0, pkglen, pkgbuf))
  goto err;

 pkgver = bnxt_parse_pkglog(BNX_PKG_LOG_FIELD_IDX_PKG_VERSION, pkgbuf,
       pkglen);
 if (pkgver && *pkgver != 0 && isdigit(*pkgver)) {
  len = strlen(bp->fw_ver_str);
  snprintf(bp->fw_ver_str + len, FW_VER_STR_LEN - len - 1,
    "/pkg %s", pkgver);
 }
err:
 kfree(pkgbuf);
}
