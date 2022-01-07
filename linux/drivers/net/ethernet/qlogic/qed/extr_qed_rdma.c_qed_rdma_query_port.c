
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qed_rdma_port {int max_msg_size; int link_speed; int port_state; } ;
struct qed_mcp_link_state {int speed; scalar_t__ link_up; } ;
struct qed_hwfn {int cdev; TYPE_1__* p_rdma_info; } ;
struct TYPE_6__ {TYPE_2__* mcp_info; } ;
struct TYPE_5__ {struct qed_mcp_link_state link_output; } ;
struct TYPE_4__ {struct qed_rdma_port* port; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 TYPE_3__* QED_LEADING_HWFN (int ) ;
 int QED_MSG_RDMA ;
 int QED_RDMA_PORT_DOWN ;
 int QED_RDMA_PORT_UP ;
 int RDMA_MAX_DATA_SIZE_IN_WQE ;

__attribute__((used)) static struct qed_rdma_port *qed_rdma_query_port(void *rdma_cxt)
{
 struct qed_hwfn *p_hwfn = (struct qed_hwfn *)rdma_cxt;
 struct qed_rdma_port *p_port = p_hwfn->p_rdma_info->port;
 struct qed_mcp_link_state *p_link_output;

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "RDMA Query port\n");


 p_link_output = &QED_LEADING_HWFN(p_hwfn->cdev)->mcp_info->link_output;

 p_port->port_state = p_link_output->link_up ? QED_RDMA_PORT_UP
     : QED_RDMA_PORT_DOWN;

 p_port->link_speed = p_link_output->speed;

 p_port->max_msg_size = RDMA_MAX_DATA_SIZE_IN_WQE;

 return p_port;
}
