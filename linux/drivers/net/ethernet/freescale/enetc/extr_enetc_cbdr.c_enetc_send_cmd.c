
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_cbdr {int next_to_use; int bd_count; int cir; int pir; int bd_base; } ;
struct enetc_si {struct enetc_cbdr cbd_ring; } ;
struct enetc_cbd {int dummy; } ;


 int EBUSY ;
 int EIO ;
 struct enetc_cbd* ENETC_CBD (struct enetc_cbdr,int) ;
 int ENETC_CBDR_TIMEOUT ;
 int enetc_cbd_unused (struct enetc_cbdr*) ;
 int enetc_clean_cbdr (struct enetc_si*) ;
 int enetc_rd_reg (int ) ;
 int enetc_wr_reg (int ,int) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int enetc_send_cmd(struct enetc_si *si, struct enetc_cbd *cbd)
{
 struct enetc_cbdr *ring = &si->cbd_ring;
 int timeout = ENETC_CBDR_TIMEOUT;
 struct enetc_cbd *dest_cbd;
 int i;

 if (unlikely(!ring->bd_base))
  return -EIO;

 if (unlikely(!enetc_cbd_unused(ring)))
  enetc_clean_cbdr(si);

 i = ring->next_to_use;
 dest_cbd = ENETC_CBD(*ring, i);


 *dest_cbd = *cbd;
 i = (i + 1) % ring->bd_count;

 ring->next_to_use = i;

 enetc_wr_reg(ring->pir, i);

 do {
  if (enetc_rd_reg(ring->cir) == i)
   break;
  udelay(10);
  timeout -= 10;
 } while (timeout);

 if (!timeout)
  return -EBUSY;

 enetc_clean_cbdr(si);

 return 0;
}
