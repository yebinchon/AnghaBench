; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_phy_initn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_phy_initn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_11__*, %struct.b43_phy }
%struct.TYPE_11__ = type { i32, i64, i64, %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.ssb_sprom* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.ssb_sprom = type { i32, i32, i32 }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32, i32, i32*, i32, i32, i64, i32, i32, i32, %struct.TYPE_16__*, i32*, i64, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.nphy_txgains = type { i32 }

@B43_BFL_EXTLNA = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_BFH2_INTERNDET_TXIQCAL = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_OVER3 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_OVER4 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_OVER5 = common dso_local global i32 0, align 4
@B43_NPHY_REV7_RF_CTL_OVER6 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S0 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B32S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC3 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC4 = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE_CAOVER = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE_TROVER = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3 = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3_SCALE = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3_SCALE_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_AFESEQ_TX2RX_PUD_20M = common dso_local global i32 0, align 4
@B43_NPHY_AFESEQ_TX2RX_PUD_40M = common dso_local global i32 0, align 4
@B43_BFL2_SKWRKFEM_BRD = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@BCMA_BOARD_TYPE_BCM943224M93 = common dso_local global i64 0, align 8
@B43_NPHY_TXREALFD = common dso_local global i32 0, align 4
@B43_NPHY_MIMO_CRSTXEXT = common dso_local global i32 0, align 4
@B43_NPHY_PLOAD_CSENSE_EXTLEN = common dso_local global i32 0, align 4
@B43_NPHY_TXRIFS_FRDEL = common dso_local global i32 0, align 4
@B43_NPHY_DUP40_GFBL = common dso_local global i32 0, align 4
@B43_NPHY_DUP40_BL = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@B43_NPHY_EPS_TABLE_ADJ0 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@B43_NPHY_EPS_TABLE_ADJ1 = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG_RSTCCA = common dso_local global i32 0, align 4
@B43_RFSEQ_RX2TX = common dso_local global i32 0, align 4
@B43_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@B43_NPHY_TXMACIF_HOLDOFF = common dso_local global i32 0, align 4
@B43_NPHY_TXMACDELAY = common dso_local global i32 0, align 4
@BCMA_CC_CHIPCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_CHIPCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_phy_initn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_initn(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca %struct.b43_phy_n*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nphy_txgains, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nphy_txgains, align 4
  %13 = alloca %struct.nphy_txgains, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 5
  %18 = load %struct.ssb_sprom*, %struct.ssb_sprom** %17, align 8
  store %struct.ssb_sprom* %18, %struct.ssb_sprom** %3, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 2
  store %struct.b43_phy* %20, %struct.b43_phy** %4, align 8
  %21 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %22 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %21, i32 0, i32 1
  %23 = load %struct.b43_phy_n*, %struct.b43_phy_n** %22, align 8
  store %struct.b43_phy_n* %23, %struct.b43_phy_n** %5, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 3
  br i1 %28, label %29, label %50

29:                                               ; preds = %1
  %30 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %31 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @B43_BFL_EXTLNA, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @b43_current_band(i32 %39)
  %41 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %49 [
  ]

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %36, %29, %1
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %50
  %55 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %56 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %57, 7
  br i1 %58, label %73, label %59

59:                                               ; preds = %54
  %60 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %61 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 5
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %66 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @B43_BFH2_INTERNDET_TXIQCAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %64, %59
  %72 = phi i1 [ false, %59 ], [ %70, %64 ]
  br label %73

73:                                               ; preds = %71, %54, %50
  %74 = phi i1 [ true, %54 ], [ true, %50 ], [ %72, %71 ]
  %75 = zext i1 %74 to i32
  %76 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %77 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %79 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %78, i32 0, i32 18
  store i64 0, i64* %79, align 8
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %81 = call i32 @b43_nphy_tables_init(%struct.b43_wldev* %80)
  %82 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %83 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %85 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %89, 3
  br i1 %90, label %91, label %128

91:                                               ; preds = %73
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %94 = call i32 @b43_phy_write(%struct.b43_wldev* %92, i32 %93, i32 0)
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %97 = call i32 @b43_phy_write(%struct.b43_wldev* %95, i32 %96, i32 0)
  %98 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %99 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %100, 7
  br i1 %101, label %102, label %115

102:                                              ; preds = %91
  %103 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %104 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER3, align 4
  %105 = call i32 @b43_phy_write(%struct.b43_wldev* %103, i32 %104, i32 0)
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %107 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER4, align 4
  %108 = call i32 @b43_phy_write(%struct.b43_wldev* %106, i32 %107, i32 0)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER5, align 4
  %111 = call i32 @b43_phy_write(%struct.b43_wldev* %109, i32 %110, i32 0)
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %113 = load i32, i32* @B43_NPHY_REV7_RF_CTL_OVER6, align 4
  %114 = call i32 @b43_phy_write(%struct.b43_wldev* %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %102, %91
  %116 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %117 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sge i32 %118, 19
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %115
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %123 = load i32, i32* @B43_NPHY_TXF_40CO_B1S0, align 4
  %124 = call i32 @b43_phy_write(%struct.b43_wldev* %122, i32 %123, i32 0)
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %126 = load i32, i32* @B43_NPHY_TXF_40CO_B32S1, align 4
  %127 = call i32 @b43_phy_write(%struct.b43_wldev* %125, i32 %126, i32 0)
  br label %132

128:                                              ; preds = %73
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %131 = call i32 @b43_phy_write(%struct.b43_wldev* %129, i32 %130, i32 0)
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %135 = call i32 @b43_phy_write(%struct.b43_wldev* %133, i32 %134, i32 0)
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %137 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %138 = call i32 @b43_phy_write(%struct.b43_wldev* %136, i32 %137, i32 0)
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %140 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 6
  br i1 %143, label %144, label %151

144:                                              ; preds = %132
  %145 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %146 = load i32, i32* @B43_NPHY_RFCTL_INTC3, align 4
  %147 = call i32 @b43_phy_write(%struct.b43_wldev* %145, i32 %146, i32 0)
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %149 = load i32, i32* @B43_NPHY_RFCTL_INTC4, align 4
  %150 = call i32 @b43_phy_write(%struct.b43_wldev* %148, i32 %149, i32 0)
  br label %151

151:                                              ; preds = %144, %132
  %152 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %153 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %154 = load i32, i32* @B43_NPHY_RFSEQMODE_CAOVER, align 4
  %155 = load i32, i32* @B43_NPHY_RFSEQMODE_TROVER, align 4
  %156 = or i32 %154, %155
  %157 = xor i32 %156, -1
  %158 = call i32 @b43_phy_mask(%struct.b43_wldev* %152, i32 %153, i32 %157)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp sge i32 %162, 3
  br i1 %163, label %164, label %168

164:                                              ; preds = %151
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %167 = call i32 @b43_phy_write(%struct.b43_wldev* %165, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %164, %151
  %169 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %170 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %171 = call i32 @b43_phy_write(%struct.b43_wldev* %169, i32 %170, i32 0)
  %172 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %173 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp sle i32 %175, 2
  br i1 %176, label %177, label %193

177:                                              ; preds = %168
  %178 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %179 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 59, i32 64
  store i32 %184, i32* %8, align 4
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %187 = load i32, i32* @B43_NPHY_BPHY_CTL3_SCALE, align 4
  %188 = xor i32 %187, -1
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @B43_NPHY_BPHY_CTL3_SCALE_SHIFT, align 4
  %191 = shl i32 %189, %190
  %192 = call i32 @b43_phy_maskset(%struct.b43_wldev* %185, i32 %186, i32 %188, i32 %191)
  br label %193

193:                                              ; preds = %177, %168
  %194 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %195 = load i32, i32* @B43_NPHY_AFESEQ_TX2RX_PUD_20M, align 4
  %196 = call i32 @b43_phy_write(%struct.b43_wldev* %194, i32 %195, i32 32)
  %197 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %198 = load i32, i32* @B43_NPHY_AFESEQ_TX2RX_PUD_40M, align 4
  %199 = call i32 @b43_phy_write(%struct.b43_wldev* %197, i32 %198, i32 32)
  %200 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %201 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @B43_BFL2_SKWRKFEM_BRD, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %222, label %206

206:                                              ; preds = %193
  %207 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %208 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %207, i32 0, i32 1
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %226

214:                                              ; preds = %206
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %216 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %215, i32 0, i32 1
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @BCMA_BOARD_TYPE_BCM943224M93, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %214, %193
  %223 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %224 = load i32, i32* @B43_NPHY_TXREALFD, align 4
  %225 = call i32 @b43_phy_write(%struct.b43_wldev* %223, i32 %224, i32 160)
  br label %230

226:                                              ; preds = %214, %206
  %227 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %228 = load i32, i32* @B43_NPHY_TXREALFD, align 4
  %229 = call i32 @b43_phy_write(%struct.b43_wldev* %227, i32 %228, i32 184)
  br label %230

230:                                              ; preds = %226, %222
  %231 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %232 = load i32, i32* @B43_NPHY_MIMO_CRSTXEXT, align 4
  %233 = call i32 @b43_phy_write(%struct.b43_wldev* %231, i32 %232, i32 200)
  %234 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %235 = load i32, i32* @B43_NPHY_PLOAD_CSENSE_EXTLEN, align 4
  %236 = call i32 @b43_phy_write(%struct.b43_wldev* %234, i32 %235, i32 80)
  %237 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %238 = load i32, i32* @B43_NPHY_TXRIFS_FRDEL, align 4
  %239 = call i32 @b43_phy_write(%struct.b43_wldev* %237, i32 %238, i32 48)
  %240 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %241 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %242, 8
  br i1 %243, label %244, label %250

244:                                              ; preds = %230
  %245 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %246 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %247 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %246, i32 0, i32 17
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @b43_nphy_update_mimo_config(%struct.b43_wldev* %245, i32 %248)
  br label %250

250:                                              ; preds = %244, %230
  %251 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %252 = call i32 @b43_nphy_update_txrx_chain(%struct.b43_wldev* %251)
  %253 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %254 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp slt i32 %255, 2
  br i1 %256, label %257, label %264

257:                                              ; preds = %250
  %258 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %259 = load i32, i32* @B43_NPHY_DUP40_GFBL, align 4
  %260 = call i32 @b43_phy_write(%struct.b43_wldev* %258, i32 %259, i32 2728)
  %261 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %262 = load i32, i32* @B43_NPHY_DUP40_BL, align 4
  %263 = call i32 @b43_phy_write(%struct.b43_wldev* %261, i32 %262, i32 2468)
  br label %264

264:                                              ; preds = %257, %250
  %265 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %266 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %295

268:                                              ; preds = %264
  %269 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %270 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  %271 = call i32 @b43_phy_set(%struct.b43_wldev* %269, i32 %270, i32 1)
  %272 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %273 = load i32, i32* @B43_NPHY_EPS_TABLE_ADJ0, align 4
  %274 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %275 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %274, i32 0, i32 3
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = shl i32 %278, 7
  %280 = call i32 @b43_phy_maskset(%struct.b43_wldev* %272, i32 %273, i32 127, i32 %279)
  %281 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %282 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  %283 = call i32 @b43_phy_set(%struct.b43_wldev* %281, i32 %282, i32 1)
  %284 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %285 = load i32, i32* @B43_NPHY_EPS_TABLE_ADJ1, align 4
  %286 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %287 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %286, i32 0, i32 3
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = shl i32 %290, 7
  %292 = call i32 @b43_phy_maskset(%struct.b43_wldev* %284, i32 %285, i32 127, i32 %291)
  %293 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %294 = call i32 @b43_nphy_int_pa_set_tx_dig_filters(%struct.b43_wldev* %293)
  br label %304

295:                                              ; preds = %264
  %296 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %297 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp sge i32 %298, 5
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  %301 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %302 = call i32 @b43_nphy_ext_pa_set_tx_dig_filters(%struct.b43_wldev* %301)
  br label %303

303:                                              ; preds = %300, %295
  br label %304

304:                                              ; preds = %303, %268
  %305 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %306 = call i32 @b43_nphy_workarounds(%struct.b43_wldev* %305)
  %307 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %308 = call i32 @b43_phy_force_clock(%struct.b43_wldev* %307, i32 1)
  %309 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %310 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %311 = call i32 @b43_phy_read(%struct.b43_wldev* %309, i32 %310)
  store i32 %311, i32* %8, align 4
  %312 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %313 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* @B43_NPHY_BBCFG_RSTCCA, align 4
  %316 = or i32 %314, %315
  %317 = call i32 @b43_phy_write(%struct.b43_wldev* %312, i32 %313, i32 %316)
  %318 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %319 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* @B43_NPHY_BBCFG_RSTCCA, align 4
  %322 = xor i32 %321, -1
  %323 = and i32 %320, %322
  %324 = call i32 @b43_phy_write(%struct.b43_wldev* %318, i32 %319, i32 %323)
  %325 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %326 = call i32 @b43_phy_force_clock(%struct.b43_wldev* %325, i32 0)
  %327 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %328 = call i32 @b43_mac_phy_clock_set(%struct.b43_wldev* %327, i32 1)
  %329 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %330 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %331, 7
  br i1 %332, label %333, label %344

333:                                              ; preds = %304
  %334 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %335 = call i32 @b43_nphy_pa_override(%struct.b43_wldev* %334, i32 0)
  %336 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %337 = load i32, i32* @B43_RFSEQ_RX2TX, align 4
  %338 = call i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev* %336, i32 %337)
  %339 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %340 = load i32, i32* @B43_RFSEQ_RESET2RX, align 4
  %341 = call i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev* %339, i32 %340)
  %342 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %343 = call i32 @b43_nphy_pa_override(%struct.b43_wldev* %342, i32 1)
  br label %344

344:                                              ; preds = %333, %304
  %345 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %346 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %345, i32 0, i32 0)
  %347 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %348 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %349 = call i32 @b43_nphy_read_clip_detection(%struct.b43_wldev* %347, i32* %348)
  %350 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %351 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i64 @b43_current_band(i32 %352)
  %354 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %359

356:                                              ; preds = %344
  %357 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %358 = call i32 @b43_nphy_bphy_init(%struct.b43_wldev* %357)
  br label %359

359:                                              ; preds = %356, %344
  %360 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %361 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  store i32 %362, i32* %6, align 4
  %363 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %364 = call i32 @b43_nphy_tx_power_ctrl(%struct.b43_wldev* %363, i32 0)
  %365 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %366 = call i32 @b43_nphy_tx_power_fix(%struct.b43_wldev* %365)
  %367 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %368 = call i32 @b43_nphy_tx_power_ctl_idle_tssi(%struct.b43_wldev* %367)
  %369 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %370 = call i32 @b43_nphy_tx_power_ctl_setup(%struct.b43_wldev* %369)
  %371 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %372 = call i32 @b43_nphy_tx_gain_table_upload(%struct.b43_wldev* %371)
  %373 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %374 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 3
  br i1 %376, label %377, label %383

377:                                              ; preds = %359
  %378 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %379 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %380 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %379, i32 0, i32 5
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @b43_nphy_set_rx_core_state(%struct.b43_wldev* %378, i32 %381)
  br label %383

383:                                              ; preds = %377, %359
  %384 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %385 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %384, i32 0, i32 6
  %386 = load i64, i64* %385, align 8
  %387 = icmp sgt i64 %386, 0
  br i1 %387, label %388, label %389

388:                                              ; preds = %383
  br label %389

389:                                              ; preds = %388, %383
  store i32 0, i32* %9, align 4
  %390 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %391 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp sge i32 %392, 3
  br i1 %393, label %394, label %427

394:                                              ; preds = %389
  %395 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %396 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = call i64 @b43_current_band(i32 %397)
  %399 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %409

401:                                              ; preds = %394
  %402 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %403 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %402, i32 0, i32 16
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  %407 = xor i1 %406, true
  %408 = zext i1 %407 to i32
  store i32 %408, i32* %9, align 4
  br label %417

409:                                              ; preds = %394
  %410 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %411 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %410, i32 0, i32 15
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp ne i32 %413, 0
  %415 = xor i1 %414, true
  %416 = zext i1 %415 to i32
  store i32 %416, i32* %9, align 4
  br label %417

417:                                              ; preds = %409, %401
  %418 = load i32, i32* %9, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %417
  %421 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %422 = call i32 @b43_nphy_rssi_cal(%struct.b43_wldev* %421)
  br label %426

423:                                              ; preds = %417
  %424 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %425 = call i32 @b43_nphy_restore_rssi_cal(%struct.b43_wldev* %424)
  br label %426

426:                                              ; preds = %423, %420
  br label %430

427:                                              ; preds = %389
  %428 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %429 = call i32 @b43_nphy_rssi_cal(%struct.b43_wldev* %428)
  br label %430

430:                                              ; preds = %427, %426
  %431 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %432 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %431, i32 0, i32 7
  %433 = load i32, i32* %432, align 8
  %434 = and i32 %433, 6
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %548, label %436

436:                                              ; preds = %430
  %437 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %438 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = call i64 @b43_current_band(i32 %439)
  %441 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %451

443:                                              ; preds = %436
  %444 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %445 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %444, i32 0, i32 14
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = icmp ne i32 %447, 0
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  store i32 %450, i32* %11, align 4
  br label %459

451:                                              ; preds = %436
  %452 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %453 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %452, i32 0, i32 13
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = icmp ne i32 %455, 0
  %457 = xor i1 %456, true
  %458 = zext i1 %457 to i32
  store i32 %458, i32* %11, align 4
  br label %459

459:                                              ; preds = %451, %443
  %460 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %461 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %460, i32 0, i32 12
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %459
  store i32 0, i32* %11, align 4
  br label %465

465:                                              ; preds = %464, %459
  %466 = load i32, i32* %11, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %544

468:                                              ; preds = %465
  %469 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %470 = call i32 @b43_nphy_get_tx_gains(%struct.b43_wldev* %469)
  %471 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %12, i32 0, i32 0
  store i32 %470, i32* %471, align 4
  %472 = bitcast %struct.nphy_txgains* %7 to i8*
  %473 = bitcast %struct.nphy_txgains* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %472, i8* align 4 %473, i64 4, i1 false)
  %474 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %475 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %474, i32 0, i32 8
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 2
  br i1 %477, label %478, label %481

478:                                              ; preds = %468
  %479 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %480 = call i32 @b43_nphy_superswitch_init(%struct.b43_wldev* %479, i32 1)
  br label %481

481:                                              ; preds = %478, %468
  %482 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %483 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %482, i32 0, i32 9
  %484 = load i32, i32* %483, align 8
  %485 = icmp ne i32 %484, 2
  br i1 %485, label %486, label %536

486:                                              ; preds = %481
  %487 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %488 = call i32 @b43_nphy_rssi_cal(%struct.b43_wldev* %487)
  %489 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %490 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = icmp sge i32 %491, 3
  br i1 %492, label %493, label %519

493:                                              ; preds = %486
  %494 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %495 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %494, i32 0, i32 10
  %496 = load %struct.TYPE_16__*, %struct.TYPE_16__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %496, i64 0
  %498 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %501 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %500, i32 0, i32 11
  %502 = load i32*, i32** %501, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 0
  store i32 %499, i32* %503, align 4
  %504 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %505 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %504, i32 0, i32 10
  %506 = load %struct.TYPE_16__*, %struct.TYPE_16__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %506, i64 1
  %508 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %511 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %510, i32 0, i32 11
  %512 = load i32*, i32** %511, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 1
  store i32 %509, i32* %513, align 4
  %514 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %515 = call i32 @b43_nphy_get_tx_gains(%struct.b43_wldev* %514)
  %516 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %13, i32 0, i32 0
  store i32 %515, i32* %516, align 4
  %517 = bitcast %struct.nphy_txgains* %7 to i8*
  %518 = bitcast %struct.nphy_txgains* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %517, i8* align 4 %518, i64 4, i1 false)
  br label %519

519:                                              ; preds = %493, %486
  %520 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %521 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %7, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = call i32 @b43_nphy_cal_tx_iq_lo(%struct.b43_wldev* %520, i32 %522, i32 1, i32 0)
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %535, label %525

525:                                              ; preds = %519
  %526 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %527 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %7, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = call i64 @b43_nphy_cal_rx_iq(%struct.b43_wldev* %526, i32 %528, i32 2, i32 0)
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %531, label %534

531:                                              ; preds = %525
  %532 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %533 = call i32 @b43_nphy_save_cal(%struct.b43_wldev* %532)
  br label %534

534:                                              ; preds = %531, %525
  br label %535

535:                                              ; preds = %534, %519
  br label %543

536:                                              ; preds = %481
  %537 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %538 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %537, i32 0, i32 6
  %539 = load i64, i64* %538, align 8
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %541, label %542

541:                                              ; preds = %536
  br label %542

542:                                              ; preds = %541, %536
  br label %543

543:                                              ; preds = %542, %535
  br label %547

544:                                              ; preds = %465
  %545 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %546 = call i32 @b43_nphy_restore_cal(%struct.b43_wldev* %545)
  br label %547

547:                                              ; preds = %544, %543
  br label %548

548:                                              ; preds = %547, %430
  %549 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %550 = call i32 @b43_nphy_tx_pwr_ctrl_coef_setup(%struct.b43_wldev* %549)
  %551 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %552 = load i32, i32* %6, align 4
  %553 = call i32 @b43_nphy_tx_power_ctrl(%struct.b43_wldev* %551, i32 %552)
  %554 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %555 = load i32, i32* @B43_NPHY_TXMACIF_HOLDOFF, align 4
  %556 = call i32 @b43_phy_write(%struct.b43_wldev* %554, i32 %555, i32 21)
  %557 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %558 = load i32, i32* @B43_NPHY_TXMACDELAY, align 4
  %559 = call i32 @b43_phy_write(%struct.b43_wldev* %557, i32 %558, i32 800)
  %560 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %561 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = icmp sge i32 %562, 3
  br i1 %563, label %564, label %573

564:                                              ; preds = %548
  %565 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %566 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = icmp sle i32 %567, 6
  br i1 %568, label %569, label %573

569:                                              ; preds = %564
  %570 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %571 = load i32, i32* @B43_NPHY_PLOAD_CSENSE_EXTLEN, align 4
  %572 = call i32 @b43_phy_write(%struct.b43_wldev* %570, i32 %571, i32 50)
  br label %573

573:                                              ; preds = %569, %564, %548
  %574 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %575 = call i32 @b43_nphy_tx_lpf_bw(%struct.b43_wldev* %574)
  %576 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %577 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = icmp sge i32 %578, 3
  br i1 %579, label %580, label %583

580:                                              ; preds = %573
  %581 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %582 = call i32 @b43_nphy_spur_workaround(%struct.b43_wldev* %581)
  br label %583

583:                                              ; preds = %580, %573
  ret i32 0
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tables_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_nphy_update_mimo_config(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_update_txrx_chain(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_int_pa_set_tx_dig_filters(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_ext_pa_set_tx_dig_filters(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_workarounds(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_force_clock(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_mac_phy_clock_set(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_pa_override(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_classifier(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_read_clip_detection(%struct.b43_wldev*, i32*) #1

declare dso_local i32 @b43_nphy_bphy_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_power_ctrl(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_tx_power_fix(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_power_ctl_idle_tssi(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_power_ctl_setup(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_gain_table_upload(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_set_rx_core_state(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_rssi_cal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_restore_rssi_cal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_get_tx_gains(%struct.b43_wldev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @b43_nphy_superswitch_init(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_cal_tx_iq_lo(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @b43_nphy_cal_rx_iq(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_nphy_save_cal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_restore_cal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_pwr_ctrl_coef_setup(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_lpf_bw(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_spur_workaround(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
