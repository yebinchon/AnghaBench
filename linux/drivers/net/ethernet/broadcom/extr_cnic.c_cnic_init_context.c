
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cnic_dev {int dummy; } ;


 int CTX_SIZE ;
 int GET_CID_ADDR (int ) ;
 int cnic_ctx_wr (struct cnic_dev*,int ,int,int ) ;

__attribute__((used)) static void cnic_init_context(struct cnic_dev *dev, u32 cid)
{
 u32 cid_addr;
 int i;

 cid_addr = GET_CID_ADDR(cid);

 for (i = 0; i < CTX_SIZE; i += 4)
  cnic_ctx_wr(dev, cid_addr, i, 0);
}
