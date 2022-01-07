
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_device {TYPE_1__* pci_dev; } ;
struct net_device {char* name; } ;
struct TYPE_4__ {int max_adj; int enable; int settime64; int gettime64; int adjtime; int adjfreq; scalar_t__ pps; scalar_t__ n_per_out; scalar_t__ n_ext_ts; scalar_t__ n_alarm; int owner; int name; } ;
struct lio {int * ptp_clock; TYPE_2__ ptp_info; scalar_t__ ptp_adjust; int ptp_lock; scalar_t__ oct_dev; } ;
struct TYPE_3__ {int dev; } ;


 struct lio* GET_LIO (struct net_device*) ;
 scalar_t__ IS_ERR (int *) ;
 int THIS_MODULE ;
 int liquidio_ptp_adjfreq ;
 int liquidio_ptp_adjtime ;
 int liquidio_ptp_enable ;
 int liquidio_ptp_gettime ;
 int liquidio_ptp_settime ;
 int * ptp_clock_register (TYPE_2__*,int *) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void oct_ptp_open(struct net_device *netdev)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct = (struct octeon_device *)lio->oct_dev;

 spin_lock_init(&lio->ptp_lock);

 snprintf(lio->ptp_info.name, 16, "%s", netdev->name);
 lio->ptp_info.owner = THIS_MODULE;
 lio->ptp_info.max_adj = 250000000;
 lio->ptp_info.n_alarm = 0;
 lio->ptp_info.n_ext_ts = 0;
 lio->ptp_info.n_per_out = 0;
 lio->ptp_info.pps = 0;
 lio->ptp_info.adjfreq = liquidio_ptp_adjfreq;
 lio->ptp_info.adjtime = liquidio_ptp_adjtime;
 lio->ptp_info.gettime64 = liquidio_ptp_gettime;
 lio->ptp_info.settime64 = liquidio_ptp_settime;
 lio->ptp_info.enable = liquidio_ptp_enable;

 lio->ptp_adjust = 0;

 lio->ptp_clock = ptp_clock_register(&lio->ptp_info,
          &oct->pci_dev->dev);

 if (IS_ERR(lio->ptp_clock))
  lio->ptp_clock = ((void*)0);
}
