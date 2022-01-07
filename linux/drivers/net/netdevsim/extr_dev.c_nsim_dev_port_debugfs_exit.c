
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsim_dev_port {int ddir; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void nsim_dev_port_debugfs_exit(struct nsim_dev_port *nsim_dev_port)
{
 debugfs_remove_recursive(nsim_dev_port->ddir);
}
