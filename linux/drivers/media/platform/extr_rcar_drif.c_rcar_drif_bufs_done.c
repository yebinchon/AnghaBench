
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_drif_hwbuf {int status; } ;


 int RCAR_DRIF_BUF_DONE ;

__attribute__((used)) static inline bool rcar_drif_bufs_done(struct rcar_drif_hwbuf **buf)
{
 return (buf[0]->status & buf[1]->status & RCAR_DRIF_BUF_DONE);
}
