
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mac {scalar_t__* hwlro_ip; } ;


 int MTK_MAX_LRO_IP_CNT ;

__attribute__((used)) static int mtk_hwlro_get_ip_cnt(struct mtk_mac *mac)
{
 int cnt = 0;
 int i;

 for (i = 0; i < MTK_MAX_LRO_IP_CNT; i++) {
  if (mac->hwlro_ip[i])
   cnt++;
 }

 return cnt;
}
