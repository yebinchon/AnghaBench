
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_port_info {size_t index; scalar_t__ run; int card; } ;


 unsigned int FST_RDL (int ,int ) ;
 int FST_WRL (int ,int ,unsigned int) ;
 int SETV24O ;
 int fst_issue_cmd (struct fst_port_info*,int ) ;
 int * v24OpSts ;

__attribute__((used)) static inline void
fst_op_raise(struct fst_port_info *port, unsigned int outputs)
{
 outputs |= FST_RDL(port->card, v24OpSts[port->index]);
 FST_WRL(port->card, v24OpSts[port->index], outputs);

 if (port->run)
  fst_issue_cmd(port, SETV24O);
}
