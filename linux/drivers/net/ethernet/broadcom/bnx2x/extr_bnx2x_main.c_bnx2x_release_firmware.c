
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int * firmware; int init_data; int init_ops; int init_ops_offsets; } ;


 int kfree (int ) ;
 int release_firmware (int *) ;

__attribute__((used)) static void bnx2x_release_firmware(struct bnx2x *bp)
{
 kfree(bp->init_ops_offsets);
 kfree(bp->init_ops);
 kfree(bp->init_data);
 release_firmware(bp->firmware);
 bp->firmware = ((void*)0);
}
