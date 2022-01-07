
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int u_char ;
struct xfer_info_t {int state; scalar_t__ Offset; int EraseCount; } ;
typedef int ssize_t ;
struct TYPE_5__ {int mtd; } ;
struct TYPE_7__ {int BAMOffset; void* EraseCount; int LogicalEUN; } ;
struct TYPE_6__ {int BlocksPerUnit; TYPE_1__ mbd; TYPE_3__ header; struct xfer_info_t* XferInfo; } ;
typedef TYPE_2__ partition_t ;
typedef scalar_t__ loff_t ;
typedef int header ;
typedef TYPE_3__ erase_unit_header_t ;


 int BLOCK_CONTROL ;
 int DIV_ROUND_UP (scalar_t__,int ) ;
 int SECTOR_SIZE ;
 int XFER_FAILED ;
 int XFER_PREPARED ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mtd_write (int ,scalar_t__,int,int *,int *) ;
 int pr_debug (char*,scalar_t__) ;

__attribute__((used)) static int prepare_xfer(partition_t *part, int i)
{
    erase_unit_header_t header;
    struct xfer_info_t *xfer;
    int nbam, ret;
    uint32_t ctl;
    ssize_t retlen;
    loff_t offset;

    xfer = &part->XferInfo[i];
    xfer->state = XFER_FAILED;

    pr_debug("ftl_cs: preparing xfer unit at 0x%x\n", xfer->Offset);


    header = part->header;
    header.LogicalEUN = cpu_to_le16(0xffff);
    header.EraseCount = cpu_to_le32(xfer->EraseCount);

    ret = mtd_write(part->mbd.mtd, xfer->Offset, sizeof(header), &retlen,
                    (u_char *)&header);

    if (ret) {
 return ret;
    }


    nbam = DIV_ROUND_UP(part->BlocksPerUnit * sizeof(uint32_t) +
   le32_to_cpu(part->header.BAMOffset), SECTOR_SIZE);

    offset = xfer->Offset + le32_to_cpu(part->header.BAMOffset);
    ctl = cpu_to_le32(BLOCK_CONTROL);

    for (i = 0; i < nbam; i++, offset += sizeof(uint32_t)) {

 ret = mtd_write(part->mbd.mtd, offset, sizeof(uint32_t), &retlen,
                        (u_char *)&ctl);

 if (ret)
     return ret;
    }
    xfer->state = XFER_PREPARED;
    return 0;

}
