
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct brcmf_pub {int dummy; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;

__attribute__((used)) static inline struct dentry *brcmf_debugfs_get_devdir(struct brcmf_pub *drvr)
{
 return ERR_PTR(-ENOENT);
}
