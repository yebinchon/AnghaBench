
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {void* data_len; void* version; void* prog; void* req_id; } ;
struct as10x_cmd_t {TYPE_1__ header; } ;


 int SERVICE_PROG_ID ;
 int SERVICE_PROG_VERSION ;
 void* cpu_to_le16 (int ) ;

void as10x_cmd_build(struct as10x_cmd_t *pcmd,
       uint16_t xid, uint16_t cmd_len)
{
 pcmd->header.req_id = cpu_to_le16(xid);
 pcmd->header.prog = cpu_to_le16(SERVICE_PROG_ID);
 pcmd->header.version = cpu_to_le16(SERVICE_PROG_VERSION);
 pcmd->header.data_len = cpu_to_le16(cmd_len);
}
