
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static bool eq_tun_id_and_vni(u8 *tun_id, u8 *vni)
{
 return !memcmp(vni, &tun_id[5], 3);
}
