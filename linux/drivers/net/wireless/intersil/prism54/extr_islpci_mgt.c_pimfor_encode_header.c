
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int operation; void* length; void* oid; scalar_t__ flags; int device_id; int version; } ;
typedef TYPE_1__ pimfor_header_t ;


 int PIMFOR_DEV_ID_MHLI_MIB ;
 int PIMFOR_VERSION ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static void
pimfor_encode_header(int operation, u32 oid, u32 length, pimfor_header_t *h)
{
 h->version = PIMFOR_VERSION;
 h->operation = operation;
 h->device_id = PIMFOR_DEV_ID_MHLI_MIB;
 h->flags = 0;
 h->oid = cpu_to_be32(oid);
 h->length = cpu_to_be32(length);
}
