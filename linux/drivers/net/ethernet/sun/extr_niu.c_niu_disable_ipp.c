
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct niu {int dev; } ;


 int IPP_CFIG ;
 scalar_t__ IPP_CFIG_CKSUM_EN ;
 scalar_t__ IPP_CFIG_DFIFO_ECC_EN ;
 scalar_t__ IPP_CFIG_DROP_BAD_CRC ;
 scalar_t__ IPP_CFIG_IPP_ENABLE ;
 int IPP_DFIFO_RD_PTR ;
 int IPP_DFIFO_WR_PTR ;
 int netdev_err (int ,char*,unsigned long long,unsigned long long) ;
 int niu_ipp_reset (struct niu*) ;
 scalar_t__ nr64_ipp (int ) ;
 int nw64_ipp (int ,scalar_t__) ;

__attribute__((used)) static void niu_disable_ipp(struct niu *np)
{
 u64 rd, wr, val;
 int limit;

 rd = nr64_ipp(IPP_DFIFO_RD_PTR);
 wr = nr64_ipp(IPP_DFIFO_WR_PTR);
 limit = 100;
 while (--limit >= 0 && (rd != wr)) {
  rd = nr64_ipp(IPP_DFIFO_RD_PTR);
  wr = nr64_ipp(IPP_DFIFO_WR_PTR);
 }
 if (limit < 0 &&
     (rd != 0 && wr != 1)) {
  netdev_err(np->dev, "IPP would not quiesce, rd_ptr[%llx] wr_ptr[%llx]\n",
      (unsigned long long)nr64_ipp(IPP_DFIFO_RD_PTR),
      (unsigned long long)nr64_ipp(IPP_DFIFO_WR_PTR));
 }

 val = nr64_ipp(IPP_CFIG);
 val &= ~(IPP_CFIG_IPP_ENABLE |
   IPP_CFIG_DFIFO_ECC_EN |
   IPP_CFIG_DROP_BAD_CRC |
   IPP_CFIG_CKSUM_EN);
 nw64_ipp(IPP_CFIG, val);

 (void) niu_ipp_reset(np);
}
