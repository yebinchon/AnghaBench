
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2400m_bcf_hdr {int size; } ;
struct i2400m {int bus_bm_retries; int boot_mode; int fw_name; } ;
struct device {int dummy; } ;
typedef enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;


 int EBADF ;
 int ERESTARTSYS ;
 int I2400M_BRI_MAC_REINIT ;
 int I2400M_BRI_SOFT ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_bcf_hdr const*,size_t,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_bcf_hdr const*,size_t) ;
 int d_printf (int,struct device*,char*,int ) ;
 int dev_err (struct device*,char*,...) ;
 struct i2400m_bcf_hdr* i2400m_bcf_hdr_find (struct i2400m*) ;
 int i2400m_bootrom_init (struct i2400m*,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_dnload_bcf (struct i2400m*,struct i2400m_bcf_hdr const*,size_t) ;
 int i2400m_dnload_finalize (struct i2400m*,struct i2400m_bcf_hdr const*,struct i2400m_bcf_hdr const*,int) ;
 int i2400m_dnload_init (struct i2400m*,struct i2400m_bcf_hdr const*) ;
 int le32_to_cpu (int ) ;
 int wmb () ;

__attribute__((used)) static
int i2400m_fw_dnload(struct i2400m *i2400m, const struct i2400m_bcf_hdr *bcf,
       size_t fw_size, enum i2400m_bri flags)
{
 int ret = 0;
 struct device *dev = i2400m_dev(i2400m);
 int count = i2400m->bus_bm_retries;
 const struct i2400m_bcf_hdr *bcf_hdr;
 size_t bcf_size;

 d_fnstart(5, dev, "(i2400m %p bcf %p fw size %zu)\n",
    i2400m, bcf, fw_size);
 i2400m->boot_mode = 1;
 wmb();
hw_reboot:
 if (count-- == 0) {
  ret = -ERESTARTSYS;
  dev_err(dev, "device rebooted too many times, aborting\n");
  goto error_too_many_reboots;
 }
 if (flags & I2400M_BRI_MAC_REINIT) {
  ret = i2400m_bootrom_init(i2400m, flags);
  if (ret < 0) {
   dev_err(dev, "bootrom init failed: %d\n", ret);
   goto error_bootrom_init;
  }
 }
 flags |= I2400M_BRI_MAC_REINIT;
 ret = -EBADF;
 bcf_hdr = i2400m_bcf_hdr_find(i2400m);
 if (bcf_hdr == ((void*)0))
  goto error_bcf_hdr_find;

 ret = i2400m_dnload_init(i2400m, bcf_hdr);
 if (ret == -ERESTARTSYS)
  goto error_dev_rebooted;
 if (ret < 0)
  goto error_dnload_init;






 bcf_size = sizeof(u32) * le32_to_cpu(bcf_hdr->size);
 ret = i2400m_dnload_bcf(i2400m, bcf, bcf_size);
 if (ret == -ERESTARTSYS)
  goto error_dev_rebooted;
 if (ret < 0) {
  dev_err(dev, "fw %s: download failed: %d\n",
   i2400m->fw_name, ret);
  goto error_dnload_bcf;
 }

 ret = i2400m_dnload_finalize(i2400m, bcf_hdr, bcf, ret);
 if (ret == -ERESTARTSYS)
  goto error_dev_rebooted;
 if (ret < 0) {
  dev_err(dev, "fw %s: "
   "download finalization failed: %d\n",
   i2400m->fw_name, ret);
  goto error_dnload_finalize;
 }

 d_printf(2, dev, "fw %s successfully uploaded\n",
   i2400m->fw_name);
 i2400m->boot_mode = 0;
 wmb();
error_dnload_finalize:
error_dnload_bcf:
error_dnload_init:
error_bcf_hdr_find:
error_bootrom_init:
error_too_many_reboots:
 d_fnend(5, dev, "(i2400m %p bcf %p size %zu) = %d\n",
  i2400m, bcf, fw_size, ret);
 return ret;

error_dev_rebooted:
 dev_err(dev, "device rebooted, %d tries left\n", count);

 flags |= I2400M_BRI_SOFT;
 goto hw_reboot;
}
