
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct xfer_info_t {int state; int EraseCount; int Offset; } ;
struct erase_info {int len; int addr; } ;
struct TYPE_6__ {int mtd; } ;
struct TYPE_5__ {int EraseUnitSize; } ;
struct TYPE_7__ {TYPE_2__ mbd; TYPE_1__ header; struct xfer_info_t* XferInfo; } ;
typedef TYPE_3__ partition_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int XFER_ERASED ;
 int XFER_ERASING ;
 int XFER_FAILED ;
 int kfree (struct erase_info*) ;
 struct erase_info* kmalloc (int,int ) ;
 int mtd_erase (int ,struct erase_info*) ;
 int pr_debug (char*,int ) ;
 int pr_notice (char*,int) ;

__attribute__((used)) static int erase_xfer(partition_t *part,
        uint16_t xfernum)
{
    int ret;
    struct xfer_info_t *xfer;
    struct erase_info *erase;

    xfer = &part->XferInfo[xfernum];
    pr_debug("ftl_cs: erasing xfer unit at 0x%x\n", xfer->Offset);
    xfer->state = XFER_ERASING;




    erase=kmalloc(sizeof(struct erase_info), GFP_KERNEL);
    if (!erase)
            return -ENOMEM;

    erase->addr = xfer->Offset;
    erase->len = 1 << part->header.EraseUnitSize;

    ret = mtd_erase(part->mbd.mtd, erase);
    if (!ret) {
 xfer->state = XFER_ERASED;
 xfer->EraseCount++;
    } else {
 xfer->state = XFER_FAILED;
 pr_notice("ftl_cs: erase failed: err = %d\n", ret);
    }

    kfree(erase);

    return ret;
}
