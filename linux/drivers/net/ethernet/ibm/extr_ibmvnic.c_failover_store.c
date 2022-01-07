
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ibmvnic_adapter {TYPE_1__* vdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef scalar_t__ __be64 ;
struct TYPE_2__ {int unit_address; } ;


 size_t EINVAL ;
 int H_GET_SESSION_TOKEN ;
 int H_SESSION_ERR_DETECTED ;
 int H_VIOCTL ;
 int PLPAR_HCALL_BUFSIZE ;
 int be64_to_cpu (scalar_t__) ;
 struct net_device* dev_get_drvdata (struct device*) ;
 int netdev_dbg (struct net_device*,char*,int ) ;
 int netdev_err (struct net_device*,char*,long) ;
 struct ibmvnic_adapter* netdev_priv (struct net_device*) ;
 long plpar_hcall (int ,unsigned long*,int ,int ,int ,int ,int ) ;
 long plpar_hcall_norets (int ,int ,int ,scalar_t__,int ,int ) ;
 int sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t failover_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct net_device *netdev = dev_get_drvdata(dev);
 struct ibmvnic_adapter *adapter = netdev_priv(netdev);
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 __be64 session_token;
 long rc;

 if (!sysfs_streq(buf, "1"))
  return -EINVAL;

 rc = plpar_hcall(H_VIOCTL, retbuf, adapter->vdev->unit_address,
    H_GET_SESSION_TOKEN, 0, 0, 0);
 if (rc) {
  netdev_err(netdev, "Couldn't retrieve session token, rc %ld\n",
      rc);
  return -EINVAL;
 }

 session_token = (__be64)retbuf[0];
 netdev_dbg(netdev, "Initiating client failover, session id %llx\n",
     be64_to_cpu(session_token));
 rc = plpar_hcall_norets(H_VIOCTL, adapter->vdev->unit_address,
    H_SESSION_ERR_DETECTED, session_token, 0, 0);
 if (rc) {
  netdev_err(netdev, "Client initiated failover failed, rc %ld\n",
      rc);
  return -EINVAL;
 }

 return count;
}
