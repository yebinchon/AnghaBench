
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_proto_s {int chnl_id; } ;
struct TYPE_3__ {int read_queue; } ;
struct TYPE_4__ {scalar_t__ freq; TYPE_1__ rds; } ;
struct fmdev {int flag; TYPE_2__ rx; int * resp_comp; int rx_q; int tx_q; int rx_task; int tx_task; } ;
typedef int fm_st_proto ;


 int FM_CORE_READY ;
 int clear_bit (int ,int *) ;
 int fmdbg (char*) ;
 int fmerr (char*,int) ;
 int memset (struct st_proto_s*,int ,int) ;
 int skb_queue_purge (int *) ;
 int st_unregister (struct st_proto_s*) ;
 int tasklet_kill (int *) ;
 int test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

int fmc_release(struct fmdev *fmdev)
{
 static struct st_proto_s fm_st_proto;
 int ret;

 if (!test_bit(FM_CORE_READY, &fmdev->flag)) {
  fmdbg("FM Core is already down\n");
  return 0;
 }

 wake_up_interruptible(&fmdev->rx.rds.read_queue);

 tasklet_kill(&fmdev->tx_task);
 tasklet_kill(&fmdev->rx_task);

 skb_queue_purge(&fmdev->tx_q);
 skb_queue_purge(&fmdev->rx_q);

 fmdev->resp_comp = ((void*)0);
 fmdev->rx.freq = 0;

 memset(&fm_st_proto, 0, sizeof(fm_st_proto));
 fm_st_proto.chnl_id = 0x08;

 ret = st_unregister(&fm_st_proto);

 if (ret < 0)
  fmerr("Failed to de-register FM from ST %d\n", ret);
 else
  fmdbg("Successfully unregistered from ST\n");

 clear_bit(FM_CORE_READY, &fmdev->flag);
 return ret;
}
