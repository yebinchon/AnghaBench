
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {TYPE_1__* dev; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int name; } ;


 struct dentry* debugfs_create_dir (int ,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct mvpp2_port*,int *) ;
 int mvpp2_dbgfs_filter_fops ;
 int mvpp2_dbgfs_port_parser_fops ;
 int mvpp2_dbgfs_port_vid_fops ;

__attribute__((used)) static int mvpp2_dbgfs_port_init(struct dentry *parent,
     struct mvpp2_port *port)
{
 struct dentry *port_dir;

 port_dir = debugfs_create_dir(port->dev->name, parent);

 debugfs_create_file("parser_entries", 0444, port_dir, port,
       &mvpp2_dbgfs_port_parser_fops);

 debugfs_create_file("mac_filter", 0444, port_dir, port,
       &mvpp2_dbgfs_filter_fops);

 debugfs_create_file("vid_filter", 0444, port_dir, port,
       &mvpp2_dbgfs_port_vid_fops);

 return 0;
}
