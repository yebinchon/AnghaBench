
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_hw {int dummy; } ;


 int IGC_ALGNERRC ;
 int IGC_BPRC ;
 int IGC_BPTC ;
 int IGC_CBRMPC ;
 int IGC_CBTMPC ;
 int IGC_CEXTERR ;
 int IGC_COLC ;
 int IGC_CRCERRS ;
 int IGC_DC ;
 int IGC_ECOL ;
 int IGC_FCRUC ;
 int IGC_GORCH ;
 int IGC_GORCL ;
 int IGC_GOTCH ;
 int IGC_GOTCL ;
 int IGC_GPRC ;
 int IGC_GPTC ;
 int IGC_HGORCH ;
 int IGC_HGORCL ;
 int IGC_HGOTCH ;
 int IGC_HGOTCL ;
 int IGC_HGPTC ;
 int IGC_HTCBDPC ;
 int IGC_HTDPMC ;
 int IGC_IAC ;
 int IGC_ICRXATC ;
 int IGC_ICRXDMTC ;
 int IGC_ICRXOC ;
 int IGC_ICRXPTC ;
 int IGC_ICTXATC ;
 int IGC_ICTXPTC ;
 int IGC_ICTXQEC ;
 int IGC_ICTXQMTC ;
 int IGC_LATECOL ;
 int IGC_LENERRS ;
 int IGC_MCC ;
 int IGC_MGTPDC ;
 int IGC_MGTPRC ;
 int IGC_MGTPTC ;
 int IGC_MPC ;
 int IGC_MPRC ;
 int IGC_MPTC ;
 int IGC_PRC1023 ;
 int IGC_PRC127 ;
 int IGC_PRC1522 ;
 int IGC_PRC255 ;
 int IGC_PRC511 ;
 int IGC_PRC64 ;
 int IGC_PTC1023 ;
 int IGC_PTC127 ;
 int IGC_PTC1522 ;
 int IGC_PTC255 ;
 int IGC_PTC511 ;
 int IGC_PTC64 ;
 int IGC_RFC ;
 int IGC_RJC ;
 int IGC_RLEC ;
 int IGC_RNBC ;
 int IGC_ROC ;
 int IGC_RPTHC ;
 int IGC_RUC ;
 int IGC_RXERRC ;
 int IGC_SCC ;
 int IGC_SEC ;
 int IGC_SYMERRS ;
 int IGC_TNCRS ;
 int IGC_TORH ;
 int IGC_TORL ;
 int IGC_TOTH ;
 int IGC_TOTL ;
 int IGC_TPR ;
 int IGC_TPT ;
 int IGC_TSCTC ;
 int IGC_TSCTFC ;
 int IGC_XOFFRXC ;
 int IGC_XOFFTXC ;
 int IGC_XONRXC ;
 int IGC_XONTXC ;
 int rd32 (int ) ;

void igc_clear_hw_cntrs_base(struct igc_hw *hw)
{
 rd32(IGC_CRCERRS);
 rd32(IGC_SYMERRS);
 rd32(IGC_MPC);
 rd32(IGC_SCC);
 rd32(IGC_ECOL);
 rd32(IGC_MCC);
 rd32(IGC_LATECOL);
 rd32(IGC_COLC);
 rd32(IGC_DC);
 rd32(IGC_SEC);
 rd32(IGC_RLEC);
 rd32(IGC_XONRXC);
 rd32(IGC_XONTXC);
 rd32(IGC_XOFFRXC);
 rd32(IGC_XOFFTXC);
 rd32(IGC_FCRUC);
 rd32(IGC_GPRC);
 rd32(IGC_BPRC);
 rd32(IGC_MPRC);
 rd32(IGC_GPTC);
 rd32(IGC_GORCL);
 rd32(IGC_GORCH);
 rd32(IGC_GOTCL);
 rd32(IGC_GOTCH);
 rd32(IGC_RNBC);
 rd32(IGC_RUC);
 rd32(IGC_RFC);
 rd32(IGC_ROC);
 rd32(IGC_RJC);
 rd32(IGC_TORL);
 rd32(IGC_TORH);
 rd32(IGC_TOTL);
 rd32(IGC_TOTH);
 rd32(IGC_TPR);
 rd32(IGC_TPT);
 rd32(IGC_MPTC);
 rd32(IGC_BPTC);

 rd32(IGC_PRC64);
 rd32(IGC_PRC127);
 rd32(IGC_PRC255);
 rd32(IGC_PRC511);
 rd32(IGC_PRC1023);
 rd32(IGC_PRC1522);
 rd32(IGC_PTC64);
 rd32(IGC_PTC127);
 rd32(IGC_PTC255);
 rd32(IGC_PTC511);
 rd32(IGC_PTC1023);
 rd32(IGC_PTC1522);

 rd32(IGC_ALGNERRC);
 rd32(IGC_RXERRC);
 rd32(IGC_TNCRS);
 rd32(IGC_CEXTERR);
 rd32(IGC_TSCTC);
 rd32(IGC_TSCTFC);

 rd32(IGC_MGTPRC);
 rd32(IGC_MGTPDC);
 rd32(IGC_MGTPTC);

 rd32(IGC_IAC);
 rd32(IGC_ICRXOC);

 rd32(IGC_ICRXPTC);
 rd32(IGC_ICRXATC);
 rd32(IGC_ICTXPTC);
 rd32(IGC_ICTXATC);
 rd32(IGC_ICTXQEC);
 rd32(IGC_ICTXQMTC);
 rd32(IGC_ICRXDMTC);

 rd32(IGC_CBTMPC);
 rd32(IGC_HTDPMC);
 rd32(IGC_CBRMPC);
 rd32(IGC_RPTHC);
 rd32(IGC_HGPTC);
 rd32(IGC_HTCBDPC);
 rd32(IGC_HGORCL);
 rd32(IGC_HGORCH);
 rd32(IGC_HGOTCL);
 rd32(IGC_HGOTCH);
 rd32(IGC_LENERRS);
}
