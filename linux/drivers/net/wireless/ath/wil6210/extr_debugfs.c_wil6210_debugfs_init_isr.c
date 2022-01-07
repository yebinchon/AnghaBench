
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wil6210_priv {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {int icr_off; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* dbg_icr ;
 int wil6210_debugfs_create_ISR (struct wil6210_priv*,int ,struct dentry*,int ) ;

__attribute__((used)) static void wil6210_debugfs_init_isr(struct wil6210_priv *wil,
         struct dentry *dbg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dbg_icr); i++)
  wil6210_debugfs_create_ISR(wil, dbg_icr[i].name, dbg,
        dbg_icr[i].icr_off);
}
