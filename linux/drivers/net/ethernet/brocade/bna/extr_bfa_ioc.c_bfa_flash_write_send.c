
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bfi_flash_write_req {int last; int alen; int mh; void* length; void* offset; int instance; void* type; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_flash {scalar_t__ type; scalar_t__ addr_off; scalar_t__ offset; scalar_t__ residue; scalar_t__ ubuf; TYPE_1__ mb; int ioc; int dbuf_kva; int dbuf_pa; int instance; } ;


 scalar_t__ BFA_FLASH_DMA_BUF_SZ ;
 int BFI_FLASH_H2I_WRITE_REQ ;
 int BFI_MC_FLASH ;
 void* be32_to_cpu (scalar_t__) ;
 int bfa_alen_set (int *,scalar_t__,int ) ;
 int bfa_ioc_portid (int ) ;
 int bfa_nw_ioc_mbox_queue (int ,TYPE_1__*,int *,int *) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
bfa_flash_write_send(struct bfa_flash *flash)
{
 struct bfi_flash_write_req *msg =
   (struct bfi_flash_write_req *) flash->mb.msg;
 u32 len;

 msg->type = be32_to_cpu(flash->type);
 msg->instance = flash->instance;
 msg->offset = be32_to_cpu(flash->addr_off + flash->offset);
 len = (flash->residue < BFA_FLASH_DMA_BUF_SZ) ?
        flash->residue : BFA_FLASH_DMA_BUF_SZ;
 msg->length = be32_to_cpu(len);


 msg->last = (len == flash->residue) ? 1 : 0;

 bfi_h2i_set(msg->mh, BFI_MC_FLASH, BFI_FLASH_H2I_WRITE_REQ,
      bfa_ioc_portid(flash->ioc));
 bfa_alen_set(&msg->alen, len, flash->dbuf_pa);
 memcpy(flash->dbuf_kva, flash->ubuf + flash->offset, len);
 bfa_nw_ioc_mbox_queue(flash->ioc, &flash->mb, ((void*)0), ((void*)0));

 flash->residue -= len;
 flash->offset += len;
}
