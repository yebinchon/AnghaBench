
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct adapter* private; } ;
struct port_info {int viid; int port_id; } ;
struct net_device {int name; } ;
struct adapter {struct net_device** port; } ;


 void* SEQ_START_TOKEN ;
 struct port_info* netdev_priv (struct net_device*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int interfaces_show(struct seq_file *seq, void *v)
{
 if (v == SEQ_START_TOKEN) {
  seq_puts(seq, "Interface  Port   VIID\n");
 } else {
  struct adapter *adapter = seq->private;
  int pidx = (uintptr_t)v - 2;
  struct net_device *dev = adapter->port[pidx];
  struct port_info *pi = netdev_priv(dev);

  seq_printf(seq, "%9s  %4d  %#5x\n",
      dev->name, pi->port_id, pi->viid);
 }
 return 0;
}
