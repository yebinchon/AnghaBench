
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct mvpp2_port* private; } ;
struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2_port {int id; struct mvpp2* priv; } ;
struct mvpp2 {TYPE_1__* prs_shadow; } ;
struct TYPE_2__ {scalar_t__ lu; scalar_t__ udf; int valid; } ;


 int ETH_ALEN ;
 int MVPP2_PE_MAC_RANGE_END ;
 int MVPP2_PE_MAC_RANGE_START ;
 scalar_t__ MVPP2_PRS_LU_MAC ;
 scalar_t__ MVPP2_PRS_UDF_MAC_DEF ;
 int mvpp2_prs_init_from_hw (struct mvpp2*,struct mvpp2_prs_entry*,int) ;
 int mvpp2_prs_tcam_data_byte_get (struct mvpp2_prs_entry*,int,unsigned char*,unsigned char*) ;
 unsigned long mvpp2_prs_tcam_port_map_get (struct mvpp2_prs_entry*) ;
 int seq_printf (struct seq_file*,char*,unsigned char*) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static int mvpp2_dbgfs_filter_show(struct seq_file *s, void *unused)
{
 struct mvpp2_port *port = s->private;
 struct mvpp2 *priv = port->priv;
 struct mvpp2_prs_entry pe;
 unsigned long pmap;
 int index, tid;

 for (tid = MVPP2_PE_MAC_RANGE_START;
      tid <= MVPP2_PE_MAC_RANGE_END; tid++) {
  unsigned char da[ETH_ALEN], da_mask[ETH_ALEN];

  if (!priv->prs_shadow[tid].valid ||
      priv->prs_shadow[tid].lu != MVPP2_PRS_LU_MAC ||
      priv->prs_shadow[tid].udf != MVPP2_PRS_UDF_MAC_DEF)
   continue;

  mvpp2_prs_init_from_hw(priv, &pe, tid);

  pmap = mvpp2_prs_tcam_port_map_get(&pe);


  if (!test_bit(port->id, &pmap))
   continue;


  for (index = 0; index < ETH_ALEN; index++)
   mvpp2_prs_tcam_data_byte_get(&pe, index, &da[index],
           &da_mask[index]);

  seq_printf(s, "%pM\n", da);
 }

 return 0;
}
