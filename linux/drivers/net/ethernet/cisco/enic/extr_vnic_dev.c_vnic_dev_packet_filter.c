
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vnic_dev {int dummy; } ;


 int CMD_PACKET_FILTER ;
 int CMD_PFILTER_ALL_MULTICAST ;
 int CMD_PFILTER_BROADCAST ;
 int CMD_PFILTER_DIRECTED ;
 int CMD_PFILTER_MULTICAST ;
 int CMD_PFILTER_PROMISCUOUS ;
 int vdev_neterr (struct vnic_dev*,char*) ;
 int vnic_dev_cmd (struct vnic_dev*,int ,int*,int*,int) ;

int vnic_dev_packet_filter(struct vnic_dev *vdev, int directed, int multicast,
 int broadcast, int promisc, int allmulti)
{
 u64 a0, a1 = 0;
 int wait = 1000;
 int err;

 a0 = (directed ? CMD_PFILTER_DIRECTED : 0) |
      (multicast ? CMD_PFILTER_MULTICAST : 0) |
      (broadcast ? CMD_PFILTER_BROADCAST : 0) |
      (promisc ? CMD_PFILTER_PROMISCUOUS : 0) |
      (allmulti ? CMD_PFILTER_ALL_MULTICAST : 0);

 err = vnic_dev_cmd(vdev, CMD_PACKET_FILTER, &a0, &a1, wait);
 if (err)
  vdev_neterr(vdev, "Can't set packet filter\n");

 return err;
}
