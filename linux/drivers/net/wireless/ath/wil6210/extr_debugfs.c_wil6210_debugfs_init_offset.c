
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int dummy; } ;
struct dentry {int dummy; } ;
struct dbg_off {int type; int off; int mode; scalar_t__ name; } ;


 int debugfs_create_file_unsafe (scalar_t__,int ,struct dentry*,void*,int *) ;
 int debugfs_create_u32 (scalar_t__,int ,struct dentry*,void*) ;
 int debugfs_create_u8 (scalar_t__,int ,struct dentry*,void*) ;
 int debugfs_create_x32 (scalar_t__,int ,struct dentry*,void*) ;





 int wil_debugfs_create_iomem_x32 (scalar_t__,int ,struct dentry*,void*,struct wil6210_priv*) ;
 int wil_fops_ulong ;

__attribute__((used)) static void wil6210_debugfs_init_offset(struct wil6210_priv *wil,
     struct dentry *dbg, void *base,
     const struct dbg_off * const tbl)
{
 int i;

 for (i = 0; tbl[i].name; i++) {
  switch (tbl[i].type) {
  case 131:
   debugfs_create_u32(tbl[i].name, tbl[i].mode, dbg,
        base + tbl[i].off);
   break;
  case 128:
   debugfs_create_x32(tbl[i].name, tbl[i].mode, dbg,
        base + tbl[i].off);
   break;
  case 129:
   debugfs_create_file_unsafe(tbl[i].name, tbl[i].mode,
         dbg, base + tbl[i].off,
         &wil_fops_ulong);
   break;
  case 132:
   wil_debugfs_create_iomem_x32(tbl[i].name, tbl[i].mode,
           dbg, base + tbl[i].off,
           wil);
   break;
  case 130:
   debugfs_create_u8(tbl[i].name, tbl[i].mode, dbg,
       base + tbl[i].off);
   break;
  }
 }
}
