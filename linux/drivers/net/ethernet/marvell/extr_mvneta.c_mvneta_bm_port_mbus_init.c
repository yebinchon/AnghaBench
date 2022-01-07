
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mvneta_port {int bm_win_id; int dev; TYPE_1__* bm_priv; } ;
struct TYPE_2__ {int bppi_phys_addr; } ;


 int mvebu_mbus_get_io_win_info (int ,int *,int *,int *) ;
 int mvneta_mbus_io_win_set (struct mvneta_port*,int ,int ,int ,int ) ;
 int netdev_info (int ,char*) ;

__attribute__((used)) static int mvneta_bm_port_mbus_init(struct mvneta_port *pp)
{
 u32 wsize;
 u8 target, attr;
 int err;


 err = mvebu_mbus_get_io_win_info(pp->bm_priv->bppi_phys_addr, &wsize,
      &target, &attr);
 if (err < 0)
  return err;

 pp->bm_win_id = -1;


 err = mvneta_mbus_io_win_set(pp, pp->bm_priv->bppi_phys_addr, wsize,
         target, attr);
 if (err < 0) {
  netdev_info(pp->dev, "fail to configure mbus window to BM\n");
  return err;
 }
 return 0;
}
