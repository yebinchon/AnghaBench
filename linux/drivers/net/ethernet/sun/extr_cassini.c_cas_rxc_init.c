
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas_rx_comp {int word4; } ;


 int RX_COMP4_ZERO ;
 int cpu_to_le64 (int ) ;
 int memset (struct cas_rx_comp*,int ,int) ;

__attribute__((used)) static inline void cas_rxc_init(struct cas_rx_comp *rxc)
{
 memset(rxc, 0, sizeof(*rxc));
 rxc->word4 = cpu_to_le64(RX_COMP4_ZERO);
}
