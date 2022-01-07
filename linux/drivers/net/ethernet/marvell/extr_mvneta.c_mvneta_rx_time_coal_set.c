
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct mvneta_rx_queue {int id; } ;
struct mvneta_port {int clk; } ;


 int MVNETA_RXQ_TIME_COAL_REG (int ) ;
 unsigned long clk_get_rate (int ) ;
 int mvreg_write (struct mvneta_port*,int ,unsigned long) ;

__attribute__((used)) static void mvneta_rx_time_coal_set(struct mvneta_port *pp,
        struct mvneta_rx_queue *rxq, u32 value)
{
 u32 val;
 unsigned long clk_rate;

 clk_rate = clk_get_rate(pp->clk);
 val = (clk_rate / 1000000) * value;

 mvreg_write(pp, MVNETA_RXQ_TIME_COAL_REG(rxq->id), val);
}
