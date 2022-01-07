
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mvpp2_dbgfs_flow_entry* private; } ;
struct mvpp2_dbgfs_flow_entry {int flow; } ;
struct mvpp2_cls_flow {int flow_type; } ;


 int EINVAL ;






 struct mvpp2_cls_flow* mvpp2_cls_flow_get (int ) ;
 int seq_printf (struct seq_file*,char*,char const*) ;

__attribute__((used)) static int mvpp2_dbgfs_flow_type_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_flow_entry *entry = s->private;
 const struct mvpp2_cls_flow *f;
 const char *flow_name;

 f = mvpp2_cls_flow_get(entry->flow);
 if (!f)
  return -EINVAL;

 switch (f->flow_type) {
 case 133:
  flow_name = "ipv4";
  break;
 case 132:
  flow_name = "ipv6";
  break;
 case 131:
  flow_name = "tcp4";
  break;
 case 130:
  flow_name = "tcp6";
  break;
 case 129:
  flow_name = "udp4";
  break;
 case 128:
  flow_name = "udp6";
  break;
 default:
  flow_name = "other";
 }

 seq_printf(s, "%s\n", flow_name);

 return 0;
}
