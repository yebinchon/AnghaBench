
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_drif_hwbuf {unsigned int status; } ;


 unsigned int RCAR_DRIF_MAX_CHANNEL ;

__attribute__((used)) static inline void rcar_drif_bufs_clear(struct rcar_drif_hwbuf **buf,
     unsigned int bit)
{
 unsigned int i;

 for (i = 0; i < RCAR_DRIF_MAX_CHANNEL; i++)
  buf[i]->status &= ~bit;
}
