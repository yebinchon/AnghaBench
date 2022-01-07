
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;


 int napi_complete_done (struct napi_struct*,unsigned int) ;
 unsigned int tun_napi_receive (struct napi_struct*,int) ;

__attribute__((used)) static int tun_napi_poll(struct napi_struct *napi, int budget)
{
 unsigned int received;

 received = tun_napi_receive(napi, budget);

 if (received < budget)
  napi_complete_done(napi, received);

 return received;
}
