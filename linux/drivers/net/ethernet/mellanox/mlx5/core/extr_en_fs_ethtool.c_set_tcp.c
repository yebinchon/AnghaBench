
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __be16 ;


 int IPPROTO_TCP ;
 int MLX5E_FTE_SET (void*,int ,int) ;
 int ip_protocol ;
 int ntohs (scalar_t__) ;
 int tcp_dport ;
 int tcp_sport ;

__attribute__((used)) static void
set_tcp(void *headers_c, void *headers_v, __be16 psrc_m, __be16 psrc_v,
 __be16 pdst_m, __be16 pdst_v)
{
 if (psrc_m) {
  MLX5E_FTE_SET(headers_c, tcp_sport, ntohs(psrc_m));
  MLX5E_FTE_SET(headers_v, tcp_sport, ntohs(psrc_v));
 }
 if (pdst_m) {
  MLX5E_FTE_SET(headers_c, tcp_dport, ntohs(pdst_m));
  MLX5E_FTE_SET(headers_v, tcp_dport, ntohs(pdst_v));
 }

 MLX5E_FTE_SET(headers_c, ip_protocol, 0xffff);
 MLX5E_FTE_SET(headers_v, ip_protocol, IPPROTO_TCP);
}
