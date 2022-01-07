
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rndis_device {int ndev; } ;
struct netvsc_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ revision; scalar_t__ size; } ;
struct ndis_offload {TYPE_1__ header; } ;


 int EINVAL ;
 scalar_t__ NDIS_OBJECT_TYPE_OFFLOAD ;
 scalar_t__ NDIS_OFFLOAD_PARAMETERS_REVISION_1 ;
 scalar_t__ NDIS_OFFLOAD_SIZE_6_0 ;
 int OID_TCP_OFFLOAD_HARDWARE_CAPABILITIES ;
 int memset (struct ndis_offload*,int ,int) ;
 int netdev_warn (int ,char*,scalar_t__,...) ;
 int rndis_filter_query_device (struct rndis_device*,struct netvsc_device*,int ,struct ndis_offload*,scalar_t__*) ;

__attribute__((used)) static int
rndis_query_hwcaps(struct rndis_device *dev, struct netvsc_device *net_device,
     struct ndis_offload *caps)
{
 u32 caps_len = sizeof(*caps);
 int ret;

 memset(caps, 0, sizeof(*caps));

 ret = rndis_filter_query_device(dev, net_device,
     OID_TCP_OFFLOAD_HARDWARE_CAPABILITIES,
     caps, &caps_len);
 if (ret)
  return ret;

 if (caps->header.type != NDIS_OBJECT_TYPE_OFFLOAD) {
  netdev_warn(dev->ndev, "invalid NDIS objtype %#x\n",
       caps->header.type);
  return -EINVAL;
 }

 if (caps->header.revision < NDIS_OFFLOAD_PARAMETERS_REVISION_1) {
  netdev_warn(dev->ndev, "invalid NDIS objrev %x\n",
       caps->header.revision);
  return -EINVAL;
 }

 if (caps->header.size > caps_len ||
     caps->header.size < NDIS_OFFLOAD_SIZE_6_0) {
  netdev_warn(dev->ndev,
       "invalid NDIS objsize %u, data size %u\n",
       caps->header.size, caps_len);
  return -EINVAL;
 }

 return 0;
}
