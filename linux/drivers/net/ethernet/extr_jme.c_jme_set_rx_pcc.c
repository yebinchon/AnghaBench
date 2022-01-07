
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_adapter {int dev; int flags; } ;


 int JME_FLAG_POLL ;
 int JME_PCCRX0 ;
 int PCCRXTO_MASK ;
 int PCCRXTO_SHIFT ;
 int PCCRX_MASK ;
 int PCCRX_SHIFT ;

 int PCC_OFF_CNT ;
 int PCC_OFF_TO ;

 int PCC_P1_CNT ;
 int PCC_P1_TO ;

 int PCC_P2_CNT ;
 int PCC_P2_TO ;

 int PCC_P3_CNT ;
 int PCC_P3_TO ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int netif_info (struct jme_adapter*,int ,int ,char*,int) ;
 int rx_status ;
 int test_bit (int ,int *) ;
 int wmb () ;

__attribute__((used)) static inline void
jme_set_rx_pcc(struct jme_adapter *jme, int p)
{
 switch (p) {
 case 131:
  jwrite32(jme, JME_PCCRX0,
   ((PCC_OFF_TO << PCCRXTO_SHIFT) & PCCRXTO_MASK) |
   ((PCC_OFF_CNT << PCCRX_SHIFT) & PCCRX_MASK));
  break;
 case 130:
  jwrite32(jme, JME_PCCRX0,
   ((PCC_P1_TO << PCCRXTO_SHIFT) & PCCRXTO_MASK) |
   ((PCC_P1_CNT << PCCRX_SHIFT) & PCCRX_MASK));
  break;
 case 129:
  jwrite32(jme, JME_PCCRX0,
   ((PCC_P2_TO << PCCRXTO_SHIFT) & PCCRXTO_MASK) |
   ((PCC_P2_CNT << PCCRX_SHIFT) & PCCRX_MASK));
  break;
 case 128:
  jwrite32(jme, JME_PCCRX0,
   ((PCC_P3_TO << PCCRXTO_SHIFT) & PCCRXTO_MASK) |
   ((PCC_P3_CNT << PCCRX_SHIFT) & PCCRX_MASK));
  break;
 default:
  break;
 }
 wmb();

 if (!(test_bit(JME_FLAG_POLL, &jme->flags)))
  netif_info(jme, rx_status, jme->dev, "Switched to PCC_P%d\n", p);
}
