
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otx2_mbox {int dummy; } ;
struct mbox_msghdr {int dummy; } ;


 struct mbox_msghdr* otx2_mbox_alloc_msg_rsp (struct otx2_mbox*,int,int,int ) ;

__attribute__((used)) static inline struct mbox_msghdr *otx2_mbox_alloc_msg(struct otx2_mbox *mbox,
            int devid, int size)
{
 return otx2_mbox_alloc_msg_rsp(mbox, devid, size, 0);
}
