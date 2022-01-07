
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct status_desc {int * status_desc_data; } ;
struct nx_host_sds_ring {int adapter; int num_desc; struct status_desc* desc_head; } ;
struct TYPE_3__ {int * body; void** words; } ;
typedef TYPE_1__ nx_fw_msg_t ;



 int get_next_index (int,int ) ;
 void* le64_to_cpu (int ) ;
 int netxen_get_nic_msg_opcode (int ) ;
 int netxen_handle_linkevent (int ,TYPE_1__*) ;

__attribute__((used)) static void
netxen_handle_fw_message(int desc_cnt, int index,
  struct nx_host_sds_ring *sds_ring)
{
 nx_fw_msg_t msg;
 struct status_desc *desc;
 int i = 0, opcode;

 while (desc_cnt > 0 && i < 8) {
  desc = &sds_ring->desc_head[index];
  msg.words[i++] = le64_to_cpu(desc->status_desc_data[0]);
  msg.words[i++] = le64_to_cpu(desc->status_desc_data[1]);

  index = get_next_index(index, sds_ring->num_desc);
  desc_cnt--;
 }

 opcode = netxen_get_nic_msg_opcode(msg.body[0]);
 switch (opcode) {
 case 128:
  netxen_handle_linkevent(sds_ring->adapter, &msg);
  break;
 default:
  break;
 }
}
