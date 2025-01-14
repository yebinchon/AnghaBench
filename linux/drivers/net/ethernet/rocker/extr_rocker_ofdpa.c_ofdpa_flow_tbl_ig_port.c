
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct ofdpa_port {int dummy; } ;
struct TYPE_3__ {int goto_tbl; void* in_pport_mask; void* in_pport; } ;
struct TYPE_4__ {TYPE_1__ ig_port; int tbl_id; int priority; } ;
struct ofdpa_flow_tbl_entry {TYPE_2__ key; } ;
typedef enum rocker_of_dpa_table_id { ____Placeholder_rocker_of_dpa_table_id } rocker_of_dpa_table_id ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int OFDPA_PRIORITY_IG_PORT ;
 int ROCKER_OF_DPA_TABLE_ID_INGRESS_PORT ;
 struct ofdpa_flow_tbl_entry* kzalloc (int,int ) ;
 int ofdpa_flow_tbl_do (struct ofdpa_port*,int,struct ofdpa_flow_tbl_entry*) ;

__attribute__((used)) static int ofdpa_flow_tbl_ig_port(struct ofdpa_port *ofdpa_port, int flags,
      u32 in_pport, u32 in_pport_mask,
      enum rocker_of_dpa_table_id goto_tbl)
{
 struct ofdpa_flow_tbl_entry *entry;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 entry->key.priority = OFDPA_PRIORITY_IG_PORT;
 entry->key.tbl_id = ROCKER_OF_DPA_TABLE_ID_INGRESS_PORT;
 entry->key.ig_port.in_pport = in_pport;
 entry->key.ig_port.in_pport_mask = in_pport_mask;
 entry->key.ig_port.goto_tbl = goto_tbl;

 return ofdpa_flow_tbl_do(ofdpa_port, flags, entry);
}
