
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2io_nic {int dummy; } ;
struct ring_info {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int DBG_PRINT (int ,char*,int ) ;
 int ENOMEM ;
 int INFO_DBG ;
 int fill_rx_buffers (struct s2io_nic*,struct ring_info*,int ) ;

__attribute__((used)) static int s2io_chk_rx_buffers(struct s2io_nic *nic, struct ring_info *ring)
{
 if (fill_rx_buffers(nic, ring, 0) == -ENOMEM) {
  DBG_PRINT(INFO_DBG, "%s: Out of memory in Rx Intr!!\n",
     ring->dev->name);
 }
 return 0;
}
