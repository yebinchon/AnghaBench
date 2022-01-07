
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vvi ;
typedef int u8 ;
struct virtchnl_version_info {int minor; int major; } ;
struct iavf_adapter {int dummy; } ;


 int VIRTCHNL_OP_VERSION ;
 int VIRTCHNL_VERSION_MAJOR ;
 int VIRTCHNL_VERSION_MINOR ;
 int iavf_send_pf_msg (struct iavf_adapter*,int ,int *,int) ;

int iavf_send_api_ver(struct iavf_adapter *adapter)
{
 struct virtchnl_version_info vvi;

 vvi.major = VIRTCHNL_VERSION_MAJOR;
 vvi.minor = VIRTCHNL_VERSION_MINOR;

 return iavf_send_pf_msg(adapter, VIRTCHNL_OP_VERSION, (u8 *)&vvi,
    sizeof(vvi));
}
