
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mvneta_bm_pool {int dummy; } ;
struct mvneta_bm {int dummy; } ;
typedef enum mvneta_bm_type { ____Placeholder_mvneta_bm_type } mvneta_bm_type ;



__attribute__((used)) static inline struct mvneta_bm_pool *mvneta_bm_pool_use(struct mvneta_bm *priv,
       u8 pool_id,
       enum mvneta_bm_type type,
       u8 port_id,
       int pkt_size)
{ return ((void*)0); }
