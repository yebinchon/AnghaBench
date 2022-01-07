
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int dummy; } ;


 int brcmf_fws_debugfs_create (struct brcmf_pub*) ;

__attribute__((used)) static void brcmf_proto_bcdc_debugfs_create(struct brcmf_pub *drvr)
{
 brcmf_fws_debugfs_create(drvr);
}
