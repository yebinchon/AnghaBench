
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slic_device {scalar_t__ duplex; scalar_t__ promisc; } ;


 scalar_t__ DUPLEX_FULL ;
 int SLIC_GRCR_ADDRAEN ;
 int SLIC_GRCR_CTLEN ;
 int SLIC_GRCR_HASHSIZE ;
 int SLIC_GRCR_HASHSIZE_SHIFT ;
 int SLIC_GRCR_RCVALL ;
 int SLIC_GRCR_RCVBAD ;
 int SLIC_GRCR_RCVEN ;
 int SLIC_GRCR_RESET ;
 int SLIC_REG_WRCFG ;
 int slic_write (struct slic_device*,int ,int) ;

__attribute__((used)) static void slic_configure_rcv(struct slic_device *sdev)
{
 u32 val;

 val = SLIC_GRCR_RESET | SLIC_GRCR_ADDRAEN | SLIC_GRCR_RCVEN |
       SLIC_GRCR_HASHSIZE << SLIC_GRCR_HASHSIZE_SHIFT | SLIC_GRCR_RCVBAD;

 if (sdev->duplex == DUPLEX_FULL)
  val |= SLIC_GRCR_CTLEN;

 if (sdev->promisc)
  val |= SLIC_GRCR_RCVALL;

 slic_write(sdev, SLIC_REG_WRCFG, val);
}
