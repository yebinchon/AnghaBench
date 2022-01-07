
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2 {int dummy; } ;


 int phtw_mbps_v3m_e3 ;
 int rcsi2_phtw_write_mbps (struct rcar_csi2*,unsigned int,int ,int) ;

__attribute__((used)) static int rcsi2_init_phtw_v3m_e3(struct rcar_csi2 *priv, unsigned int mbps)
{
 return rcsi2_phtw_write_mbps(priv, mbps, phtw_mbps_v3m_e3, 0x44);
}
