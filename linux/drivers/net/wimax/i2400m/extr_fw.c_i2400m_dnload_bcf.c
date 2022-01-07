
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2400m_bootrom_header {int target_addr; int data_size; } ;
struct i2400m_bcf_hdr {int header_len; } ;
struct i2400m {int fw_name; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int ack ;


 size_t ALIGN (int,int) ;
 size_t EINVAL ;
 int I2400M_BM_CMD_RAW ;
 scalar_t__ I2400M_BRH_JUMP ;
 scalar_t__ I2400M_BRH_SIGNED_JUMP ;
 int __i2400m_msleep (int) ;
 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_bcf_hdr const*,size_t,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_bcf_hdr const*,size_t) ;
 int d_printf (int,struct device*,char*,size_t,...) ;
 int dev_err (struct device*,char*,int ,size_t,size_t,int,...) ;
 size_t i2400m_bm_cmd (struct i2400m*,struct i2400m_bootrom_header const*,size_t,struct i2400m_bootrom_header*,int,int ) ;
 scalar_t__ i2400m_brh_get_opcode (struct i2400m_bootrom_header const*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static
ssize_t i2400m_dnload_bcf(struct i2400m *i2400m,
     const struct i2400m_bcf_hdr *bcf, size_t bcf_len)
{
 ssize_t ret;
 struct device *dev = i2400m_dev(i2400m);
 size_t offset,
  data_size,
  section_size,
  section = 1;
 const struct i2400m_bootrom_header *bh;
 struct i2400m_bootrom_header ack;

 d_fnstart(3, dev, "(i2400m %p bcf %p bcf_len %zu)\n",
    i2400m, bcf, bcf_len);


 offset = le32_to_cpu(bcf->header_len) * sizeof(u32);
 while (1) {
  bh = (void *) bcf + offset;
  data_size = le32_to_cpu(bh->data_size);
  section_size = ALIGN(sizeof(*bh) + data_size, 4);
  d_printf(7, dev,
    "downloading section #%zu (@%zu %zu B) to 0x%08x\n",
    section, offset, sizeof(*bh) + data_size,
    le32_to_cpu(bh->target_addr));






  if (i2400m_brh_get_opcode(bh) == I2400M_BRH_SIGNED_JUMP ||
   i2400m_brh_get_opcode(bh) == I2400M_BRH_JUMP) {
   d_printf(5, dev, "jump found @%zu\n", offset);
   break;
  }
  if (offset + section_size > bcf_len) {
   dev_err(dev, "fw %s: bad section #%zu, "
    "end (@%zu) beyond EOF (@%zu)\n",
    i2400m->fw_name, section,
    offset + section_size, bcf_len);
   ret = -EINVAL;
   goto error_section_beyond_eof;
  }
  __i2400m_msleep(20);
  ret = i2400m_bm_cmd(i2400m, bh, section_size,
        &ack, sizeof(ack), I2400M_BM_CMD_RAW);
  if (ret < 0) {
   dev_err(dev, "fw %s: section #%zu (@%zu %zu B) "
    "failed %d\n", i2400m->fw_name, section,
    offset, sizeof(*bh) + data_size, (int) ret);
   goto error_send;
  }
  offset += section_size;
  section++;
 }
 ret = offset;
error_section_beyond_eof:
error_send:
 d_fnend(3, dev, "(i2400m %p bcf %p bcf_len %zu) = %d\n",
  i2400m, bcf, bcf_len, (int) ret);
 return ret;
}
