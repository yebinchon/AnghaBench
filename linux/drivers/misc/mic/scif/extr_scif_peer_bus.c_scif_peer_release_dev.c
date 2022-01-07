
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_peer_dev {size_t dnode; } ;
struct scif_dev {int dummy; } ;
struct device {int dummy; } ;


 struct scif_peer_dev* dev_to_scif_peer (struct device*) ;
 int kfree (struct scif_peer_dev*) ;
 int scif_cleanup_scifdev (struct scif_dev*) ;
 struct scif_dev* scif_dev ;

__attribute__((used)) static void scif_peer_release_dev(struct device *d)
{
 struct scif_peer_dev *sdev = dev_to_scif_peer(d);
 struct scif_dev *scifdev = &scif_dev[sdev->dnode];

 scif_cleanup_scifdev(scifdev);
 kfree(sdev);
}
