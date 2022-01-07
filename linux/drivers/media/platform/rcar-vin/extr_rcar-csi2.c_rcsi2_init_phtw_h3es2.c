
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2 {int dummy; } ;


 int __rcsi2_init_phtw_h3_v3h_m3n (struct rcar_csi2*,int ) ;

__attribute__((used)) static int rcsi2_init_phtw_h3es2(struct rcar_csi2 *priv, unsigned int mbps)
{
 return __rcsi2_init_phtw_h3_v3h_m3n(priv, 0);
}
