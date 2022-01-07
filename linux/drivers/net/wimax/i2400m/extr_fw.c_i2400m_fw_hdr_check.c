
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2400m_bcf_hdr {int size; int date; int module_vendor; int module_id; int header_version; int header_len; int module_type; } ;
struct i2400m {int fw_name; } ;
struct device {int dummy; } ;


 int EBADF ;
 int d_printf (int,struct device*,char*,int ,size_t,size_t,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int dev_err (struct device*,char*,int ,size_t,size_t,unsigned int,...) ;
 int dev_warn (struct device*,char*,int ,size_t,size_t,unsigned int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static
int i2400m_fw_hdr_check(struct i2400m *i2400m,
   const struct i2400m_bcf_hdr *bcf_hdr,
   size_t index, size_t offset)
{
 struct device *dev = i2400m_dev(i2400m);

 unsigned module_type, header_len, major_version, minor_version,
  module_id, module_vendor, date, size;

 module_type = le32_to_cpu(bcf_hdr->module_type);
 header_len = sizeof(u32) * le32_to_cpu(bcf_hdr->header_len);
 major_version = (le32_to_cpu(bcf_hdr->header_version) & 0xffff0000)
  >> 16;
 minor_version = le32_to_cpu(bcf_hdr->header_version) & 0x0000ffff;
 module_id = le32_to_cpu(bcf_hdr->module_id);
 module_vendor = le32_to_cpu(bcf_hdr->module_vendor);
 date = le32_to_cpu(bcf_hdr->date);
 size = sizeof(u32) * le32_to_cpu(bcf_hdr->size);

 d_printf(1, dev, "firmware %s #%zd@%08zx: BCF header "
   "type:vendor:id 0x%x:%x:%x v%u.%u (%u/%u B) built %08x\n",
   i2400m->fw_name, index, offset,
   module_type, module_vendor, module_id,
   major_version, minor_version, header_len, size, date);


 if (major_version != 1) {
  dev_err(dev, "firmware %s #%zd@%08zx: major header version "
   "v%u.%u not supported\n",
   i2400m->fw_name, index, offset,
   major_version, minor_version);
  return -EBADF;
 }

 if (module_type != 6) {
  dev_err(dev, "firmware %s #%zd@%08zx: unexpected module "
   "type 0x%x; aborting\n",
   i2400m->fw_name, index, offset,
   module_type);
  return -EBADF;
 }

 if (module_vendor != 0x8086) {
  dev_err(dev, "firmware %s #%zd@%08zx: unexpected module "
   "vendor 0x%x; aborting\n",
   i2400m->fw_name, index, offset, module_vendor);
  return -EBADF;
 }

 if (date < 0x20080300)
  dev_warn(dev, "firmware %s #%zd@%08zx: build date %08x "
    "too old; unsupported\n",
    i2400m->fw_name, index, offset, date);
 return 0;
}
