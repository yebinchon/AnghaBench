
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct falcon_board {TYPE_1__* type; int minor; int major; } ;
struct ef4_nic {int net_dev; } ;
struct TYPE_3__ {scalar_t__ id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENODEV ;
 int FALCON_BOARD_MAJOR (int ) ;
 int FALCON_BOARD_MINOR (int ) ;
 scalar_t__ FALCON_BOARD_TYPE (int ) ;
 TYPE_1__* board_types ;
 struct falcon_board* falcon_board (struct ef4_nic*) ;
 int netif_err (struct ef4_nic*,int ,int ,char*,scalar_t__) ;
 int probe ;

int falcon_probe_board(struct ef4_nic *efx, u16 revision_info)
{
 struct falcon_board *board = falcon_board(efx);
 u8 type_id = FALCON_BOARD_TYPE(revision_info);
 int i;

 board->major = FALCON_BOARD_MAJOR(revision_info);
 board->minor = FALCON_BOARD_MINOR(revision_info);

 for (i = 0; i < ARRAY_SIZE(board_types); i++)
  if (board_types[i].id == type_id)
   board->type = &board_types[i];

 if (board->type) {
  return 0;
 } else {
  netif_err(efx, probe, efx->net_dev, "unknown board type %d\n",
     type_id);
  return -ENODEV;
 }
}
