
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u16 ;
struct seq_file {struct mvpp2_port* private; } ;
struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2_port {int id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {int valid; } ;


 int MVPP2_PRS_VID_PORT_FIRST (int ) ;
 int MVPP2_PRS_VID_PORT_LAST (int ) ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,int) ;
 int mvpp2_prs_tcam_data_byte_get (struct mvpp2_prs_entry*,int,unsigned char*,unsigned char*) ;
 unsigned long mvpp2_prs_tcam_port_map_get (struct mvpp2_prs_entry*) ;
 int seq_printf (struct seq_file*,char*,unsigned char) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static int mvpp2_dbgfs_port_vid_show(struct seq_file *s, void *unused)
{
 struct mvpp2_port *port = s->private;
 unsigned char byte[2], enable[2];
 struct mvpp2 *priv = port->priv;
 struct mvpp2_prs_entry pe;
 unsigned long pmap;
 u16 rvid;
 int tid;

 for (tid = MVPP2_PRS_VID_PORT_FIRST(port->id);
      tid <= MVPP2_PRS_VID_PORT_LAST(port->id); tid++) {
  mvpp2_prs_init_from_hw(priv, &pe, tid);

  pmap = mvpp2_prs_tcam_port_map_get(&pe);

  if (!priv->prs_shadow[tid].valid)
   continue;

  if (!test_bit(port->id, &pmap))
   continue;

  mvpp2_prs_tcam_data_byte_get(&pe, 2, &byte[0], &enable[0]);
  mvpp2_prs_tcam_data_byte_get(&pe, 3, &byte[1], &enable[1]);

  rvid = ((byte[0] & 0xf) << 8) + byte[1];

  seq_printf(s, "%u\n", rvid);
 }

 return 0;
}
