
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int CSR ;
 int CSR_RPO ;
 int CSR_TPO0 ;
 int CSR_TPO1 ;
 int CSR_TPO2 ;
 int CSR_TPO3 ;
 int TCCR ;
 int TCCR_TSRQ0 ;
 int TCCR_TSRQ1 ;
 int TCCR_TSRQ2 ;
 int TCCR_TSRQ3 ;
 int ravb_config (struct net_device*) ;
 int ravb_rcv_snd_disable (struct net_device*) ;
 int ravb_wait (struct net_device*,int ,int,int ) ;

__attribute__((used)) static int ravb_stop_dma(struct net_device *ndev)
{
 int error;


 error = ravb_wait(ndev, TCCR,
     TCCR_TSRQ0 | TCCR_TSRQ1 | TCCR_TSRQ2 | TCCR_TSRQ3, 0);
 if (error)
  return error;

 error = ravb_wait(ndev, CSR, CSR_TPO0 | CSR_TPO1 | CSR_TPO2 | CSR_TPO3,
     0);
 if (error)
  return error;


 ravb_rcv_snd_disable(ndev);


 error = ravb_wait(ndev, CSR, CSR_RPO, 0);
 if (error)
  return error;


 return ravb_config(ndev);
}
