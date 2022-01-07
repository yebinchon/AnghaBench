
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qede_dev {TYPE_1__* arfs; } ;
struct qede_arfs_fltr_node {scalar_t__ sw_id; struct qede_arfs_fltr_node* data; } ;
struct TYPE_2__ {int arfs_fltr_bmap; } ;


 scalar_t__ QEDE_RFS_MAX_FLTR ;
 int clear_bit (scalar_t__,int ) ;
 int kfree (struct qede_arfs_fltr_node*) ;

__attribute__((used)) static void
qede_free_arfs_filter(struct qede_dev *edev, struct qede_arfs_fltr_node *fltr)
{
 kfree(fltr->data);

 if (fltr->sw_id < QEDE_RFS_MAX_FLTR)
  clear_bit(fltr->sw_id, edev->arfs->arfs_fltr_bmap);

 kfree(fltr);
}
