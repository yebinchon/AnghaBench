
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa168_eth_private {int dummy; } ;


 int INT_CAUSE ;
 int INT_MASK ;
 int INT_W_CLEAR ;
 int PCR_HS ;
 int PORT_CONFIG ;
 int SDCR_BLMR ;
 int SDCR_BLMT ;
 int SDCR_BSZ8 ;
 int SDCR_RC_MAX_RETRANS ;
 int SDCR_RIFB ;
 int SDMA_CONFIG ;
 int abort_dma (struct pxa168_eth_private*) ;
 int init_hash_table (struct pxa168_eth_private*) ;
 int set_port_config_ext (struct pxa168_eth_private*) ;
 int wrl (struct pxa168_eth_private*,int ,int) ;

__attribute__((used)) static int pxa168_init_hw(struct pxa168_eth_private *pep)
{
 int err = 0;


 wrl(pep, INT_MASK, 0);
 wrl(pep, INT_CAUSE, 0);

 wrl(pep, INT_W_CLEAR, 0);



 abort_dma(pep);

 err = init_hash_table(pep);
 if (err)
  return err;

 wrl(pep, SDMA_CONFIG, SDCR_BSZ8 |
     SDCR_RIFB |
     SDCR_BLMT |
     SDCR_BLMR |
     SDCR_RC_MAX_RETRANS);

 wrl(pep, PORT_CONFIG, PCR_HS);
 set_port_config_ext(pep);

 return err;
}
