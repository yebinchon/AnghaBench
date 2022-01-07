
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct vpd_params {char* id; char* ec; char* sn; char* pn; char* na; } ;
struct adapter {int pdev_dev; int pdev; } ;


 scalar_t__ CHELSIO_VPD_UNIQUE_ID ;
 unsigned int EC_LEN ;
 int EINVAL ;
 int ENOMEM ;
 int FIND_VPD_KW (int,char*) ;
 unsigned int ID_LEN ;
 int MACADDR_LEN ;
 int PCI_VPD_INFO_FLD_HDR_SIZE ;
 scalar_t__ PCI_VPD_LRDT_ID_STRING ;
 int PCI_VPD_LRDT_RO_DATA ;
 int PCI_VPD_LRDT_TAG_SIZE ;
 int PN_LEN ;
 int SERNUM_LEN ;
 int VPD_BASE ;
 int VPD_BASE_OLD ;
 unsigned int VPD_LEN ;
 int dev_err (int ,char*,...) ;
 int memcpy (char*,scalar_t__*,unsigned int) ;
 unsigned int min (int,int ) ;
 int pci_read_vpd (int ,int,unsigned int,scalar_t__*) ;
 int pci_vpd_find_tag (scalar_t__*,int ,unsigned int,int ) ;
 int pci_vpd_info_field_size (scalar_t__*) ;
 unsigned int pci_vpd_lrdt_size (scalar_t__*) ;
 int strim (char*) ;
 int vfree (scalar_t__*) ;
 scalar_t__* vmalloc (unsigned int) ;

int t4_get_raw_vpd_params(struct adapter *adapter, struct vpd_params *p)
{
 int i, ret = 0, addr;
 int ec, sn, pn, na;
 u8 *vpd, csum;
 unsigned int vpdr_len, kw_offset, id_len;

 vpd = vmalloc(VPD_LEN);
 if (!vpd)
  return -ENOMEM;




 ret = pci_read_vpd(adapter->pdev, VPD_BASE, sizeof(u32), vpd);
 if (ret < 0)
  goto out;







 addr = *vpd == CHELSIO_VPD_UNIQUE_ID ? VPD_BASE : VPD_BASE_OLD;

 ret = pci_read_vpd(adapter->pdev, addr, VPD_LEN, vpd);
 if (ret < 0)
  goto out;

 if (vpd[0] != PCI_VPD_LRDT_ID_STRING) {
  dev_err(adapter->pdev_dev, "missing VPD ID string\n");
  ret = -EINVAL;
  goto out;
 }

 id_len = pci_vpd_lrdt_size(vpd);
 if (id_len > ID_LEN)
  id_len = ID_LEN;

 i = pci_vpd_find_tag(vpd, 0, VPD_LEN, PCI_VPD_LRDT_RO_DATA);
 if (i < 0) {
  dev_err(adapter->pdev_dev, "missing VPD-R section\n");
  ret = -EINVAL;
  goto out;
 }

 vpdr_len = pci_vpd_lrdt_size(&vpd[i]);
 kw_offset = i + PCI_VPD_LRDT_TAG_SIZE;
 if (vpdr_len + kw_offset > VPD_LEN) {
  dev_err(adapter->pdev_dev, "bad VPD-R length %u\n", vpdr_len);
  ret = -EINVAL;
  goto out;
 }
 do { i = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, "RV"); if (i < 0) { dev_err(adapter->pdev_dev, "missing VPD keyword " "RV" "\n"); ret = -EINVAL; goto out; } i += PCI_VPD_INFO_FLD_HDR_SIZE; } while (0);
 for (csum = 0; i >= 0; i--)
  csum += vpd[i];

 if (csum) {
  dev_err(adapter->pdev_dev,
   "corrupted VPD EEPROM, actual csum %u\n", csum);
  ret = -EINVAL;
  goto out;
 }

 do { ec = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, "EC"); if (ec < 0) { dev_err(adapter->pdev_dev, "missing VPD keyword " "EC" "\n"); ret = -EINVAL; goto out; } ec += PCI_VPD_INFO_FLD_HDR_SIZE; } while (0);
 do { sn = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, "SN"); if (sn < 0) { dev_err(adapter->pdev_dev, "missing VPD keyword " "SN" "\n"); ret = -EINVAL; goto out; } sn += PCI_VPD_INFO_FLD_HDR_SIZE; } while (0);
 do { pn = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, "PN"); if (pn < 0) { dev_err(adapter->pdev_dev, "missing VPD keyword " "PN" "\n"); ret = -EINVAL; goto out; } pn += PCI_VPD_INFO_FLD_HDR_SIZE; } while (0);
 do { na = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, "NA"); if (na < 0) { dev_err(adapter->pdev_dev, "missing VPD keyword " "NA" "\n"); ret = -EINVAL; goto out; } na += PCI_VPD_INFO_FLD_HDR_SIZE; } while (0);


 memcpy(p->id, vpd + PCI_VPD_LRDT_TAG_SIZE, id_len);
 strim(p->id);
 memcpy(p->ec, vpd + ec, EC_LEN);
 strim(p->ec);
 i = pci_vpd_info_field_size(vpd + sn - PCI_VPD_INFO_FLD_HDR_SIZE);
 memcpy(p->sn, vpd + sn, min(i, SERNUM_LEN));
 strim(p->sn);
 i = pci_vpd_info_field_size(vpd + pn - PCI_VPD_INFO_FLD_HDR_SIZE);
 memcpy(p->pn, vpd + pn, min(i, PN_LEN));
 strim(p->pn);
 memcpy(p->na, vpd + na, min(i, MACADDR_LEN));
 strim((char *)p->na);

out:
 vfree(vpd);
 return ret < 0 ? ret : 0;
}
