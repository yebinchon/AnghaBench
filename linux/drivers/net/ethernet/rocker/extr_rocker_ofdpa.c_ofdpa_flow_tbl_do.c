
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {int dummy; } ;
struct ofdpa_flow_tbl_entry {int dummy; } ;


 int OFDPA_OP_FLAG_REMOVE ;
 int ofdpa_flow_tbl_add (struct ofdpa_port*,int,struct ofdpa_flow_tbl_entry*) ;
 int ofdpa_flow_tbl_del (struct ofdpa_port*,int,struct ofdpa_flow_tbl_entry*) ;

__attribute__((used)) static int ofdpa_flow_tbl_do(struct ofdpa_port *ofdpa_port, int flags,
        struct ofdpa_flow_tbl_entry *entry)
{
 if (flags & OFDPA_OP_FLAG_REMOVE)
  return ofdpa_flow_tbl_del(ofdpa_port, flags, entry);
 else
  return ofdpa_flow_tbl_add(ofdpa_port, flags, entry);
}
