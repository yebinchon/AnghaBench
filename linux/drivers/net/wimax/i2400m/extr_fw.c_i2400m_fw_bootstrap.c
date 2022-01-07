
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2400m_bcf_hdr {int dummy; } ;
struct i2400m {int * fw_hdrs; int fw_name; } ;
struct firmware {int size; scalar_t__ data; } ;
struct device {int dummy; } ;
typedef enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;


 int d_fnend (int,struct device*,char*,struct i2400m*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*) ;
 int dev_err (struct device*,char*,int ,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_fw_check (struct i2400m*,struct i2400m_bcf_hdr const*,int ) ;
 int i2400m_fw_dnload (struct i2400m*,struct i2400m_bcf_hdr const*,int ,int) ;
 int kfree (int *) ;

__attribute__((used)) static
int i2400m_fw_bootstrap(struct i2400m *i2400m, const struct firmware *fw,
   enum i2400m_bri flags)
{
 int ret;
 struct device *dev = i2400m_dev(i2400m);
 const struct i2400m_bcf_hdr *bcf;

 d_fnstart(5, dev, "(i2400m %p)\n", i2400m);
 bcf = (void *) fw->data;
 ret = i2400m_fw_check(i2400m, bcf, fw->size);
 if (ret >= 0)
  ret = i2400m_fw_dnload(i2400m, bcf, fw->size, flags);
 if (ret < 0)
  dev_err(dev, "%s: cannot use: %d, skipping\n",
   i2400m->fw_name, ret);
 kfree(i2400m->fw_hdrs);
 i2400m->fw_hdrs = ((void*)0);
 d_fnend(5, dev, "(i2400m %p) = %d\n", i2400m, ret);
 return ret;
}
