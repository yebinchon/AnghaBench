
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {int nrxqs; int first_rxq; } ;


 int cpu_online (int) ;
 int num_possible_cpus () ;

__attribute__((used)) static inline u32 mvpp22_rxfh_indir(struct mvpp2_port *port, u32 rxq)
{
 int nrxqs, cpu, cpus = num_possible_cpus();


 nrxqs = port->nrxqs / cpus;


 cpu = rxq / nrxqs;

 if (!cpu_online(cpu))
  return port->first_rxq;




 return port->first_rxq + ((rxq * nrxqs + rxq / cpus) % port->nrxqs);
}
