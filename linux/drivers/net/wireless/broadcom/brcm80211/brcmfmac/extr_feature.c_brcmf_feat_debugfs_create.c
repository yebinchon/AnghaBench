
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int dummy; } ;


 int brcmf_debugfs_add_entry (struct brcmf_pub*,char*,int ) ;
 int brcmf_feat_debugfs_read ;
 int brcmf_feat_fwcap_debugfs_read ;

void brcmf_feat_debugfs_create(struct brcmf_pub *drvr)
{
 brcmf_debugfs_add_entry(drvr, "features", brcmf_feat_debugfs_read);
 brcmf_debugfs_add_entry(drvr, "fwcap", brcmf_feat_fwcap_debugfs_read);
}
