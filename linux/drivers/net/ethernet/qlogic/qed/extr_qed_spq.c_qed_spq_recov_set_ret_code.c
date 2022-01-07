
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ protocol_id; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct qed_spq_entry {TYPE_2__ elem; } ;


 scalar_t__ PROTOCOLID_IWARP ;
 scalar_t__ PROTOCOLID_ROCE ;
 int RDMA_RETURN_OK ;

__attribute__((used)) static void qed_spq_recov_set_ret_code(struct qed_spq_entry *p_ent,
           u8 *fw_return_code)
{
 if (!fw_return_code)
  return;

 if (p_ent->elem.hdr.protocol_id == PROTOCOLID_ROCE ||
     p_ent->elem.hdr.protocol_id == PROTOCOLID_IWARP)
  *fw_return_code = RDMA_RETURN_OK;
}
