
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int dummy; } ;


 int brcmf_debugfs_add_entry (struct brcmf_pub*,char*,int ) ;
 int brcmf_msgbuf_stats_read ;

__attribute__((used)) static void brcmf_msgbuf_debugfs_create(struct brcmf_pub *drvr)
{
 brcmf_debugfs_add_entry(drvr, "msgbuf_stats", brcmf_msgbuf_stats_read);
}
