
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_fl_lag {unsigned int pkt_num; } ;


 unsigned int NFP_FL_LAG_PKT_NUMBER_MASK ;

__attribute__((used)) static unsigned int nfp_fl_get_next_pkt_number(struct nfp_fl_lag *lag)
{
 lag->pkt_num++;
 lag->pkt_num &= NFP_FL_LAG_PKT_NUMBER_MASK;

 return lag->pkt_num;
}
