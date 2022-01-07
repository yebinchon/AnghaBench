
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_func_attr {scalar_t__ ppf_idx; int func_type; } ;
struct hinic_hwif {struct hinic_func_attr attr; } ;


 int HINIC_CSR_PPF_ELECTION_ADDR (int ) ;
 scalar_t__ HINIC_HWIF_FUNC_IDX (struct hinic_hwif*) ;
 int HINIC_HWIF_PCI_INTF (struct hinic_hwif*) ;
 int HINIC_PPF ;
 int HINIC_PPF_ELECTION_CLEAR (int ,int ) ;
 scalar_t__ HINIC_PPF_ELECTION_GET (int ,int ) ;
 int HINIC_PPF_ELECTION_SET (scalar_t__,int ) ;
 int IDX ;
 int hinic_hwif_read_reg (struct hinic_hwif*,int ) ;
 int hinic_hwif_write_reg (struct hinic_hwif*,int ,int ) ;

__attribute__((used)) static void set_ppf(struct hinic_hwif *hwif)
{
 struct hinic_func_attr *attr = &hwif->attr;
 u32 addr, val, ppf_election;


 addr = HINIC_CSR_PPF_ELECTION_ADDR(HINIC_HWIF_PCI_INTF(hwif));

 val = hinic_hwif_read_reg(hwif, addr);
 val = HINIC_PPF_ELECTION_CLEAR(val, IDX);

 ppf_election = HINIC_PPF_ELECTION_SET(HINIC_HWIF_FUNC_IDX(hwif), IDX);

 val |= ppf_election;
 hinic_hwif_write_reg(hwif, addr, val);


 val = hinic_hwif_read_reg(hwif, addr);

 attr->ppf_idx = HINIC_PPF_ELECTION_GET(val, IDX);
 if (attr->ppf_idx == HINIC_HWIF_FUNC_IDX(hwif))
  attr->func_type = HINIC_PPF;
}
