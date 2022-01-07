
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct rtsx_pcr {int sgi; scalar_t__ host_sg_tbl_ptr; } ;
typedef scalar_t__ dma_addr_t ;


 int RTSX_SG_END ;
 int RTSX_SG_TRANS_DATA ;
 int RTSX_SG_VALID ;
 int pcr_dbg (struct rtsx_pcr*,char*,unsigned int,unsigned int) ;
 int put_unaligned_le64 (int,int*) ;

__attribute__((used)) static void rtsx_pci_add_sg_tbl(struct rtsx_pcr *pcr,
  dma_addr_t addr, unsigned int len, int end)
{
 u64 *ptr = (u64 *)(pcr->host_sg_tbl_ptr) + pcr->sgi;
 u64 val;
 u8 option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;

 pcr_dbg(pcr, "DMA addr: 0x%x, Len: 0x%x\n", (unsigned int)addr, len);

 if (end)
  option |= RTSX_SG_END;
 val = ((u64)addr << 32) | ((u64)len << 12) | option;

 put_unaligned_le64(val, ptr);
 pcr->sgi++;
}
