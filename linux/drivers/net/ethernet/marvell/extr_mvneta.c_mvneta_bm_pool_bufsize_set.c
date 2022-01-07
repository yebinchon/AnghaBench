
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mvneta_port {TYPE_2__* dev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ALIGN (int,int) ;
 int IS_ALIGNED (int,int) ;
 int MVNETA_PORT_POOL_BUFFER_SZ_MASK ;
 int MVNETA_PORT_POOL_BUFFER_SZ_REG (int ) ;
 int dev_warn (int ,char*,int,int) ;
 int mvreg_read (struct mvneta_port*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static inline void mvneta_bm_pool_bufsize_set(struct mvneta_port *pp,
           int buf_size,
           u8 pool_id)
{
 u32 val;

 if (!IS_ALIGNED(buf_size, 8)) {
  dev_warn(pp->dev->dev.parent,
    "illegal buf_size value %d, round to %d\n",
    buf_size, ALIGN(buf_size, 8));
  buf_size = ALIGN(buf_size, 8);
 }

 val = mvreg_read(pp, MVNETA_PORT_POOL_BUFFER_SZ_REG(pool_id));
 val |= buf_size & MVNETA_PORT_POOL_BUFFER_SZ_MASK;
 mvreg_write(pp, MVNETA_PORT_POOL_BUFFER_SZ_REG(pool_id), val);
}
