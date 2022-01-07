; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_init_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_init_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i32, i32, i32, i32*, i32, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_13__*, i32*, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32, i64, %struct.TYPE_16__*, i64 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.nphy_txgains = type { i32 }
%struct.brcms_phy_pub = type { i32 }

@PHY_HOLD_FOR_SCAN = common dso_local global i32 0, align 4
@PHY_HOLD_FOR_NOT_ASSOC = common dso_local global i32 0, align 4
@BCMA_PKG_ID_BCM4717 = common dso_local global i64 0, align 8
@BCMA_PKG_ID_BCM4718 = common dso_local global i64 0, align 8
@BFL_EXTLNA = common dso_local global i32 0, align 4
@BCMA_CC_CHIPCTL = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM5357 = common dso_local global i64 0, align 8
@CCTRL5357_EXTPA = common dso_local global i32 0, align 4
@clk_ctl_st = common dso_local global i32 0, align 4
@CCS_FORCEHT = common dso_local global i32 0, align 4
@CCS_HTAREQ = common dso_local global i32 0, align 4
@BFL2_INTERNDET_TXIQCAL = common dso_local global i32 0, align 4
@BFL2_SKWRKFEM_BRD = common dso_local global i32 0, align 4
@PHY_CORE_0 = common dso_local global i64 0, align 8
@ON = common dso_local global i32 0, align 4
@BBCFG_RESETCCA = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@NPHY_RFSEQ_RX2TX = common dso_local global i32 0, align 4
@NPHY_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@PHY_TPC_HW_OFF = common dso_local global i32 0, align 4
@nphy_tpc_5GHz_txgain_rev3 = common dso_local global i32* null, align 8
@nphy_tpc_5GHz_txgain_HiPwrEPA = common dso_local global i32* null, align 8
@nphy_tpc_5GHz_txgain_rev4 = common dso_local global i32* null, align 8
@nphy_tpc_5GHz_txgain_rev5 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_epa_2057rev5 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_epa_2057rev3 = common dso_local global i32* null, align 8
@nphy_tpc_txgain_HiPwrEPA = common dso_local global i32* null, align 8
@nphy_tpc_txgain_rev3 = common dso_local global i32* null, align 8
@NPHY_TBL_ID_CORE1TXPWRCTL = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE2TXPWRCTL = common dso_local global i32 0, align 4
@nphy_papd_pga_gain_delta_ipa_2g = common dso_local global i64* null, align 8
@nphy_papd_pga_gain_delta_ipa_5g = common dso_local global i64* null, align 8
@nphy_tpc_txgain = common dso_local global i32* null, align 8
@ANTSEL_2x3 = common dso_local global i64 0, align 8
@PHY_PERICAL_MPHASE = common dso_local global i64 0, align 8
@PHY_CORE_1 = common dso_local global i64 0, align 8
@MPHASE_CAL_STATE_IDLE = common dso_local global i64 0, align 8
@PHY_PERICAL_PHYINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_init_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca %struct.nphy_txgains, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nphy_txgains, align 4
  %17 = alloca %struct.nphy_txgains, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %8, align 8
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PHY_HOLD_FOR_SCAN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @PHY_HOLD_FOR_NOT_ASSOC, align 4
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = call i64 @ISNPHY(%struct.brcms_phy* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %30
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 14
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @NREV_GE(i32 %38, i32 5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %34
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 15
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BCMA_PKG_ID_BCM4717, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 15
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BCMA_PKG_ID_BCM4718, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %49, %41
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 15
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BFL_EXTLNA, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %57
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %68 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %67, i32 0, i32 19
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @CHSPEC_IS2G(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %73, i32 0, i32 25
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* @BCMA_CC_CHIPCTL, align 4
  %80 = call i32 @bcma_cc_set32(i32* %78, i32 %79, i32 64)
  br label %81

81:                                               ; preds = %72, %66, %57
  br label %82

82:                                               ; preds = %81, %49, %34, %30
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %84 = call i64 @PHY_IPA(%struct.brcms_phy* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %82
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 15
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BCMA_CHIP_ID_BCM5357, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %96 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %95, i32 0, i32 25
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* @CCTRL5357_EXTPA, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* @CCTRL5357_EXTPA, align 4
  %104 = call i32 @bcma_chipco_chipctl_maskset(i32* %100, i32 1, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %94, %86, %82
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %107 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %106, i32 0, i32 26
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %105
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %112 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %111, i32 0, i32 19
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @CHSPEC_IS2G(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %110
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %117, i32 0, i32 19
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @CHSPEC_IS40(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %116
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %124 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %123, i32 0, i32 25
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = load i32, i32* @clk_ctl_st, align 4
  %127 = call i32 @D11REGOFFS(i32 %126)
  %128 = call i32 @bcma_read32(%struct.TYPE_16__* %125, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %130 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %129, i32 0, i32 25
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = load i32, i32* @clk_ctl_st, align 4
  %133 = call i32 @D11REGOFFS(i32 %132)
  %134 = load i32, i32* @CCS_FORCEHT, align 4
  %135 = load i32, i32* @CCS_HTAREQ, align 4
  %136 = or i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = call i32 @bcma_mask32(%struct.TYPE_16__* %131, i32 %133, i32 %137)
  %139 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %140 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %139, i32 0, i32 25
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load i32, i32* @clk_ctl_st, align 4
  %143 = call i32 @D11REGOFFS(i32 %142)
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @bcma_write32(%struct.TYPE_16__* %141, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %122, %116, %110, %105
  %147 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %148 = call i64 @PHY_IPA(%struct.brcms_phy* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %177, label %150

150:                                              ; preds = %146
  %151 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %152 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %151, i32 0, i32 14
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @NREV_GE(i32 %154, i32 7)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %175, label %157

157:                                              ; preds = %150
  %158 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %159 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %158, i32 0, i32 14
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @NREV_GE(i32 %161, i32 5)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %157
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %166 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %165, i32 0, i32 15
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @BFL2_INTERNDET_TXIQCAL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br label %173

173:                                              ; preds = %164, %157
  %174 = phi i1 [ false, %157 ], [ %172, %164 ]
  br label %175

175:                                              ; preds = %173, %150
  %176 = phi i1 [ true, %150 ], [ %174, %173 ]
  br label %177

177:                                              ; preds = %175, %146
  %178 = phi i1 [ true, %146 ], [ %176, %175 ]
  %179 = zext i1 %178 to i32
  %180 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %181 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %183 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %182, i32 0, i32 2
  store i32 0, i32* %183, align 8
  %184 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %185 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %184, i32 0, i32 24
  store i64 0, i64* %185, align 8
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %187 = call i32 @wlc_phy_tbl_init_nphy(%struct.brcms_phy* %186)
  %188 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %189 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %188, i32 0, i32 3
  store i32 0, i32* %189, align 4
  %190 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %191 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %190, i32 0, i32 4
  store i32 0, i32* %191, align 8
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %193 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %192, i32 0, i32 14
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @NREV_GE(i32 %195, i32 3)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %223

198:                                              ; preds = %177
  %199 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %200 = call i32 @write_phy_reg(%struct.brcms_phy* %199, i32 231, i32 0)
  %201 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %202 = call i32 @write_phy_reg(%struct.brcms_phy* %201, i32 236, i32 0)
  %203 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %204 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %203, i32 0, i32 14
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @NREV_GE(i32 %206, i32 7)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %198
  %210 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %211 = call i32 @write_phy_reg(%struct.brcms_phy* %210, i32 834, i32 0)
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %213 = call i32 @write_phy_reg(%struct.brcms_phy* %212, i32 835, i32 0)
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %215 = call i32 @write_phy_reg(%struct.brcms_phy* %214, i32 838, i32 0)
  %216 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %217 = call i32 @write_phy_reg(%struct.brcms_phy* %216, i32 839, i32 0)
  br label %218

218:                                              ; preds = %209, %198
  %219 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %220 = call i32 @write_phy_reg(%struct.brcms_phy* %219, i32 229, i32 0)
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %222 = call i32 @write_phy_reg(%struct.brcms_phy* %221, i32 230, i32 0)
  br label %226

223:                                              ; preds = %177
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %225 = call i32 @write_phy_reg(%struct.brcms_phy* %224, i32 236, i32 0)
  br label %226

226:                                              ; preds = %223, %218
  %227 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %228 = call i32 @write_phy_reg(%struct.brcms_phy* %227, i32 145, i32 0)
  %229 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %230 = call i32 @write_phy_reg(%struct.brcms_phy* %229, i32 146, i32 0)
  %231 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %232 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %231, i32 0, i32 14
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @NREV_LT(i32 %234, i32 6)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %226
  %238 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %239 = call i32 @write_phy_reg(%struct.brcms_phy* %238, i32 147, i32 0)
  %240 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %241 = call i32 @write_phy_reg(%struct.brcms_phy* %240, i32 148, i32 0)
  br label %242

242:                                              ; preds = %237, %226
  %243 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %244 = call i32 @and_phy_reg(%struct.brcms_phy* %243, i32 161, i32 -4)
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %246 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %245, i32 0, i32 14
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @NREV_GE(i32 %248, i32 3)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %242
  %252 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %253 = call i32 @write_phy_reg(%struct.brcms_phy* %252, i32 143, i32 0)
  %254 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %255 = call i32 @write_phy_reg(%struct.brcms_phy* %254, i32 165, i32 0)
  br label %259

256:                                              ; preds = %242
  %257 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %258 = call i32 @write_phy_reg(%struct.brcms_phy* %257, i32 165, i32 0)
  br label %259

259:                                              ; preds = %256, %251
  %260 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %261 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %260, i32 0, i32 14
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = call i64 @NREV_IS(i32 %263, i32 2)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %268 = call i32 @mod_phy_reg(%struct.brcms_phy* %267, i32 220, i32 255, i32 59)
  br label %280

269:                                              ; preds = %259
  %270 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %271 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %270, i32 0, i32 14
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i64 @NREV_LT(i32 %273, i32 2)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %269
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %278 = call i32 @mod_phy_reg(%struct.brcms_phy* %277, i32 220, i32 255, i32 64)
  br label %279

279:                                              ; preds = %276, %269
  br label %280

280:                                              ; preds = %279, %266
  %281 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %282 = call i32 @write_phy_reg(%struct.brcms_phy* %281, i32 515, i32 32)
  %283 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %284 = call i32 @write_phy_reg(%struct.brcms_phy* %283, i32 513, i32 32)
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %286 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %285, i32 0, i32 15
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @BFL2_SKWRKFEM_BRD, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %280
  %294 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %295 = call i32 @write_phy_reg(%struct.brcms_phy* %294, i32 525, i32 160)
  br label %299

296:                                              ; preds = %280
  %297 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %298 = call i32 @write_phy_reg(%struct.brcms_phy* %297, i32 525, i32 184)
  br label %299

299:                                              ; preds = %296, %293
  %300 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %301 = call i32 @write_phy_reg(%struct.brcms_phy* %300, i32 314, i32 200)
  %302 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %303 = call i32 @write_phy_reg(%struct.brcms_phy* %302, i32 112, i32 80)
  %304 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %305 = call i32 @write_phy_reg(%struct.brcms_phy* %304, i32 511, i32 48)
  %306 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %307 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %306, i32 0, i32 14
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = call i64 @NREV_LT(i32 %309, i32 8)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %299
  %313 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %314 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %315 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %314, i32 0, i32 23
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @wlc_phy_update_mimoconfig_nphy(%struct.brcms_phy* %313, i32 %316)
  br label %318

318:                                              ; preds = %312, %299
  %319 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %320 = call i32 @wlc_phy_stf_chain_upd_nphy(%struct.brcms_phy* %319)
  %321 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %322 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %321, i32 0, i32 14
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = call i64 @NREV_LT(i32 %324, i32 2)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %318
  %328 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %329 = call i32 @write_phy_reg(%struct.brcms_phy* %328, i32 384, i32 2728)
  %330 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %331 = call i32 @write_phy_reg(%struct.brcms_phy* %330, i32 385, i32 2468)
  br label %332

332:                                              ; preds = %327, %318
  %333 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %334 = call i64 @PHY_IPA(%struct.brcms_phy* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %372

336:                                              ; preds = %332
  store i64 0, i64* %8, align 8
  br label %337

337:                                              ; preds = %366, %336
  %338 = load i64, i64* %8, align 8
  %339 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %340 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %339, i32 0, i32 14
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = icmp ult i64 %338, %342
  br i1 %343, label %344, label %369

344:                                              ; preds = %337
  %345 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %346 = load i64, i64* %8, align 8
  %347 = load i64, i64* @PHY_CORE_0, align 8
  %348 = icmp eq i64 %346, %347
  %349 = zext i1 %348 to i64
  %350 = select i1 %348, i32 663, i32 667
  %351 = call i32 @mod_phy_reg(%struct.brcms_phy* %345, i32 %350, i32 1, i32 1)
  %352 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %353 = load i64, i64* %8, align 8
  %354 = load i64, i64* @PHY_CORE_0, align 8
  %355 = icmp eq i64 %353, %354
  %356 = zext i1 %355 to i64
  %357 = select i1 %355, i32 664, i32 668
  %358 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %359 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %358, i32 0, i32 5
  %360 = load i32*, i32** %359, align 8
  %361 = load i64, i64* %8, align 8
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = shl i32 %363, 7
  %365 = call i32 @mod_phy_reg(%struct.brcms_phy* %352, i32 %357, i32 65408, i32 %364)
  br label %366

366:                                              ; preds = %344
  %367 = load i64, i64* %8, align 8
  %368 = add i64 %367, 1
  store i64 %368, i64* %8, align 8
  br label %337

369:                                              ; preds = %337
  %370 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %371 = call i32 @wlc_phy_ipa_set_tx_digi_filts_nphy(%struct.brcms_phy* %370)
  br label %383

372:                                              ; preds = %332
  %373 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %374 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %373, i32 0, i32 14
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = call i64 @NREV_GE(i32 %376, i32 5)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %372
  %380 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %381 = call i32 @wlc_phy_extpa_set_tx_digi_filts_nphy(%struct.brcms_phy* %380)
  br label %382

382:                                              ; preds = %379, %372
  br label %383

383:                                              ; preds = %382, %369
  %384 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %385 = call i32 @wlc_phy_workarounds_nphy(%struct.brcms_phy* %384)
  %386 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %387 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %386, i32 0, i32 15
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @ON, align 4
  %392 = call i32 @wlapi_bmac_phyclk_fgc(i32 %390, i32 %391)
  %393 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %394 = call i32 @read_phy_reg(%struct.brcms_phy* %393, i32 1)
  store i32 %394, i32* %3, align 4
  %395 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %396 = load i32, i32* %3, align 4
  %397 = load i32, i32* @BBCFG_RESETCCA, align 4
  %398 = or i32 %396, %397
  %399 = call i32 @write_phy_reg(%struct.brcms_phy* %395, i32 1, i32 %398)
  %400 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %401 = load i32, i32* %3, align 4
  %402 = load i32, i32* @BBCFG_RESETCCA, align 4
  %403 = xor i32 %402, -1
  %404 = and i32 %401, %403
  %405 = call i32 @write_phy_reg(%struct.brcms_phy* %400, i32 1, i32 %404)
  %406 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %407 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %406, i32 0, i32 15
  %408 = load %struct.TYPE_14__*, %struct.TYPE_14__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 6
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @OFF, align 4
  %412 = call i32 @wlapi_bmac_phyclk_fgc(i32 %410, i32 %411)
  %413 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %414 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %413, i32 0, i32 15
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 6
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @ON, align 4
  %419 = call i32 @wlapi_bmac_macphyclk_set(i32 %417, i32 %418)
  %420 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %421 = load i32, i32* @OFF, align 4
  %422 = call i32 @wlc_phy_pa_override_nphy(%struct.brcms_phy* %420, i32 %421)
  %423 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %424 = load i32, i32* @NPHY_RFSEQ_RX2TX, align 4
  %425 = call i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy* %423, i32 %424)
  %426 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %427 = load i32, i32* @NPHY_RFSEQ_RESET2RX, align 4
  %428 = call i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy* %426, i32 %427)
  %429 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %430 = load i32, i32* @ON, align 4
  %431 = call i32 @wlc_phy_pa_override_nphy(%struct.brcms_phy* %429, i32 %430)
  %432 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %433 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %432, i32 0, i32 0)
  %434 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %435 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %436 = call i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy* %434, i32 0, i32* %435)
  %437 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %438 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %437, i32 0, i32 19
  %439 = load i32, i32* %438, align 4
  %440 = call i64 @CHSPEC_IS2G(i32 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %383
  %443 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %444 = call i32 @wlc_phy_bphy_init_nphy(%struct.brcms_phy* %443)
  br label %445

445:                                              ; preds = %442, %383
  %446 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %447 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %446, i32 0, i32 22
  %448 = load i32, i32* %447, align 8
  store i32 %448, i32* %6, align 4
  %449 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %450 = load i32, i32* @PHY_TPC_HW_OFF, align 4
  %451 = call i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %449, i32 %450)
  %452 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %453 = call i32 @wlc_phy_txpwr_fixpower_nphy(%struct.brcms_phy* %452)
  %454 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %455 = call i32 @wlc_phy_txpwrctrl_idle_tssi_nphy(%struct.brcms_phy* %454)
  %456 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %457 = call i32 @wlc_phy_txpwrctrl_pwr_setup_nphy(%struct.brcms_phy* %456)
  %458 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %459 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %458, i32 0, i32 14
  %460 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 4
  %462 = call i64 @NREV_GE(i32 %461, i32 3)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %660

464:                                              ; preds = %445
  store i32* null, i32** %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %465 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %466 = call i64 @PHY_IPA(%struct.brcms_phy* %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %471

468:                                              ; preds = %464
  %469 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %470 = call i32* @wlc_phy_get_ipa_gaintbl_nphy(%struct.brcms_phy* %469)
  store i32* %470, i32** %11, align 8
  br label %554

471:                                              ; preds = %464
  %472 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %473 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %472, i32 0, i32 19
  %474 = load i32, i32* %473, align 4
  %475 = call i64 @CHSPEC_IS5G(i32 %474)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %509

477:                                              ; preds = %471
  %478 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %479 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %478, i32 0, i32 14
  %480 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = call i64 @NREV_IS(i32 %481, i32 3)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %477
  %485 = load i32*, i32** @nphy_tpc_5GHz_txgain_rev3, align 8
  store i32* %485, i32** %11, align 8
  br label %508

486:                                              ; preds = %477
  %487 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %488 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %487, i32 0, i32 14
  %489 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %488, i32 0, i32 2
  %490 = load i32, i32* %489, align 4
  %491 = call i64 @NREV_IS(i32 %490, i32 4)
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %505

493:                                              ; preds = %486
  %494 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %495 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %494, i32 0, i32 21
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = icmp eq i32 %497, 3
  br i1 %498, label %499, label %501

499:                                              ; preds = %493
  %500 = load i32*, i32** @nphy_tpc_5GHz_txgain_HiPwrEPA, align 8
  br label %503

501:                                              ; preds = %493
  %502 = load i32*, i32** @nphy_tpc_5GHz_txgain_rev4, align 8
  br label %503

503:                                              ; preds = %501, %499
  %504 = phi i32* [ %500, %499 ], [ %502, %501 ]
  store i32* %504, i32** %11, align 8
  br label %507

505:                                              ; preds = %486
  %506 = load i32*, i32** @nphy_tpc_5GHz_txgain_rev5, align 8
  store i32* %506, i32** %11, align 8
  br label %507

507:                                              ; preds = %505, %503
  br label %508

508:                                              ; preds = %507, %484
  br label %553

509:                                              ; preds = %471
  %510 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %511 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %510, i32 0, i32 14
  %512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 4
  %514 = call i64 @NREV_GE(i32 %513, i32 7)
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %534

516:                                              ; preds = %509
  %517 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %518 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %517, i32 0, i32 14
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = icmp eq i32 %520, 5
  br i1 %521, label %522, label %524

522:                                              ; preds = %516
  %523 = load i32*, i32** @nphy_tpc_txgain_epa_2057rev5, align 8
  store i32* %523, i32** %11, align 8
  br label %533

524:                                              ; preds = %516
  %525 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %526 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %525, i32 0, i32 14
  %527 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 8
  %529 = icmp eq i32 %528, 3
  br i1 %529, label %530, label %532

530:                                              ; preds = %524
  %531 = load i32*, i32** @nphy_tpc_txgain_epa_2057rev3, align 8
  store i32* %531, i32** %11, align 8
  br label %532

532:                                              ; preds = %530, %524
  br label %533

533:                                              ; preds = %532, %522
  br label %552

534:                                              ; preds = %509
  %535 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %536 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %535, i32 0, i32 14
  %537 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 4
  %539 = call i64 @NREV_GE(i32 %538, i32 5)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %541, label %549

541:                                              ; preds = %534
  %542 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %543 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %542, i32 0, i32 20
  %544 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = icmp eq i32 %545, 3
  br i1 %546, label %547, label %549

547:                                              ; preds = %541
  %548 = load i32*, i32** @nphy_tpc_txgain_HiPwrEPA, align 8
  store i32* %548, i32** %11, align 8
  br label %551

549:                                              ; preds = %541, %534
  %550 = load i32*, i32** @nphy_tpc_txgain_rev3, align 8
  store i32* %550, i32** %11, align 8
  br label %551

551:                                              ; preds = %549, %547
  br label %552

552:                                              ; preds = %551, %533
  br label %553

553:                                              ; preds = %552, %508
  br label %554

554:                                              ; preds = %553, %468
  %555 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %556 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  %557 = load i32*, i32** %11, align 8
  %558 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %555, i32 %556, i32 128, i32 192, i32 32, i32* %557)
  %559 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %560 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %561 = load i32*, i32** %11, align 8
  %562 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %559, i32 %560, i32 128, i32 192, i32 32, i32* %561)
  %563 = load i32*, i32** %11, align 8
  %564 = load i32, i32* %563, align 4
  %565 = ashr i32 %564, 16
  %566 = and i32 %565, 28672
  %567 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %568 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %567, i32 0, i32 6
  store i32 %566, i32* %568, align 8
  %569 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %570 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %569, i32 0, i32 14
  %571 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 4
  %573 = call i64 @NREV_GE(i32 %572, i32 7)
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %614

575:                                              ; preds = %554
  store i32 0, i32* %12, align 4
  br label %576

576:                                              ; preds = %610, %575
  %577 = load i32, i32* %12, align 4
  %578 = icmp slt i32 %577, 128
  br i1 %578, label %579, label %613

579:                                              ; preds = %576
  %580 = load i32*, i32** %11, align 8
  %581 = load i32, i32* %12, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32, i32* %580, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = ashr i32 %584, 24
  %586 = and i32 %585, 15
  %587 = sext i32 %586 to i64
  store i64 %587, i64* %13, align 8
  %588 = load i32*, i32** %11, align 8
  %589 = load i32, i32* %12, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i32, i32* %588, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = ashr i32 %592, 19
  %594 = and i32 %593, 31
  %595 = sext i32 %594 to i64
  store i64 %595, i64* %14, align 8
  %596 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %597 = load i64, i64* %13, align 8
  %598 = load i64, i64* %14, align 8
  %599 = call i32 @get_rf_pwr_offset(%struct.brcms_phy* %596, i64 %597, i64 %598)
  store i32 %599, i32* %15, align 4
  %600 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %601 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  %602 = load i32, i32* %12, align 4
  %603 = add nsw i32 576, %602
  %604 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %600, i32 %601, i32 1, i32 %603, i32 32, i32* %15)
  %605 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %606 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %607 = load i32, i32* %12, align 4
  %608 = add nsw i32 576, %607
  %609 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %605, i32 %606, i32 1, i32 %608, i32 32, i32* %15)
  br label %610

610:                                              ; preds = %579
  %611 = load i32, i32* %12, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %12, align 4
  br label %576

613:                                              ; preds = %576
  br label %659

614:                                              ; preds = %554
  store i32 0, i32* %12, align 4
  br label %615

615:                                              ; preds = %655, %614
  %616 = load i32, i32* %12, align 4
  %617 = icmp slt i32 %616, 128
  br i1 %617, label %618, label %658

618:                                              ; preds = %615
  %619 = load i32*, i32** %11, align 8
  %620 = load i32, i32* %12, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i32, i32* %619, i64 %621
  %623 = load i32, i32* %622, align 4
  %624 = ashr i32 %623, 24
  %625 = and i32 %624, 15
  %626 = sext i32 %625 to i64
  store i64 %626, i64* %13, align 8
  %627 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %628 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %627, i32 0, i32 19
  %629 = load i32, i32* %628, align 4
  %630 = call i64 @CHSPEC_IS2G(i32 %629)
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %638

632:                                              ; preds = %618
  %633 = load i64*, i64** @nphy_papd_pga_gain_delta_ipa_2g, align 8
  %634 = load i64, i64* %13, align 8
  %635 = getelementptr inbounds i64, i64* %633, i64 %634
  %636 = load i64, i64* %635, align 8
  %637 = trunc i64 %636 to i32
  store i32 %637, i32* %15, align 4
  br label %644

638:                                              ; preds = %618
  %639 = load i64*, i64** @nphy_papd_pga_gain_delta_ipa_5g, align 8
  %640 = load i64, i64* %13, align 8
  %641 = getelementptr inbounds i64, i64* %639, i64 %640
  %642 = load i64, i64* %641, align 8
  %643 = trunc i64 %642 to i32
  store i32 %643, i32* %15, align 4
  br label %644

644:                                              ; preds = %638, %632
  %645 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %646 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  %647 = load i32, i32* %12, align 4
  %648 = add nsw i32 576, %647
  %649 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %645, i32 %646, i32 1, i32 %648, i32 32, i32* %15)
  %650 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %651 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %652 = load i32, i32* %12, align 4
  %653 = add nsw i32 576, %652
  %654 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %650, i32 %651, i32 1, i32 %653, i32 32, i32* %15)
  br label %655

655:                                              ; preds = %644
  %656 = load i32, i32* %12, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %12, align 4
  br label %615

658:                                              ; preds = %615
  br label %659

659:                                              ; preds = %658, %613
  br label %669

660:                                              ; preds = %445
  %661 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %662 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  %663 = load i32*, i32** @nphy_tpc_txgain, align 8
  %664 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %661, i32 %662, i32 128, i32 192, i32 32, i32* %663)
  %665 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %666 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %667 = load i32*, i32** @nphy_tpc_txgain, align 8
  %668 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %665, i32 %666, i32 128, i32 192, i32 32, i32* %667)
  br label %669

669:                                              ; preds = %660, %659
  %670 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %671 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %670, i32 0, i32 15
  %672 = load %struct.TYPE_14__*, %struct.TYPE_14__** %671, align 8
  %673 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %672, i32 0, i32 4
  %674 = load i32, i32* %673, align 4
  %675 = icmp ne i32 %674, 3
  br i1 %675, label %676, label %685

676:                                              ; preds = %669
  %677 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %678 = bitcast %struct.brcms_phy* %677 to %struct.brcms_phy_pub*
  %679 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %680 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %679, i32 0, i32 15
  %681 = load %struct.TYPE_14__*, %struct.TYPE_14__** %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %681, i32 0, i32 4
  %683 = load i32, i32* %682, align 4
  %684 = call i32 @wlc_phy_rxcore_setstate_nphy(%struct.brcms_phy_pub* %678, i32 %683)
  br label %685

685:                                              ; preds = %676, %669
  %686 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %687 = call i64 @PHY_PERICAL_MPHASE_PENDING(%struct.brcms_phy* %686)
  %688 = icmp ne i64 %687, 0
  br i1 %688, label %689, label %692

689:                                              ; preds = %685
  %690 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %691 = call i32 @wlc_phy_cal_perical_mphase_restart(%struct.brcms_phy* %690)
  br label %692

692:                                              ; preds = %689, %685
  %693 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %694 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %693, i32 0, i32 14
  %695 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %694, i32 0, i32 2
  %696 = load i32, i32* %695, align 4
  %697 = call i64 @NREV_GE(i32 %696, i32 3)
  %698 = icmp ne i64 %697, 0
  br i1 %698, label %699, label %728

699:                                              ; preds = %692
  %700 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %701 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %700, i32 0, i32 19
  %702 = load i32, i32* %701, align 4
  %703 = call i64 @CHSPEC_IS2G(i32 %702)
  %704 = icmp ne i64 %703, 0
  br i1 %704, label %705, label %711

705:                                              ; preds = %699
  %706 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %707 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %706, i32 0, i32 7
  %708 = load i64, i64* %707, align 8
  %709 = icmp eq i64 %708, 0
  %710 = zext i1 %709 to i32
  br label %717

711:                                              ; preds = %699
  %712 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %713 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %712, i32 0, i32 8
  %714 = load i64, i64* %713, align 8
  %715 = icmp eq i64 %714, 0
  %716 = zext i1 %715 to i32
  br label %717

717:                                              ; preds = %711, %705
  %718 = phi i32 [ %710, %705 ], [ %716, %711 ]
  store i32 %718, i32* %10, align 4
  %719 = load i32, i32* %10, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %724

721:                                              ; preds = %717
  %722 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %723 = call i32 @wlc_phy_rssi_cal_nphy(%struct.brcms_phy* %722)
  br label %727

724:                                              ; preds = %717
  %725 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %726 = call i32 @wlc_phy_restore_rssical_nphy(%struct.brcms_phy* %725)
  br label %727

727:                                              ; preds = %724, %721
  br label %731

728:                                              ; preds = %692
  %729 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %730 = call i32 @wlc_phy_rssi_cal_nphy(%struct.brcms_phy* %729)
  br label %731

731:                                              ; preds = %728, %727
  %732 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %733 = call i32 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy* %732)
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %755, label %735

735:                                              ; preds = %731
  %736 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %737 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %736, i32 0, i32 19
  %738 = load i32, i32* %737, align 4
  %739 = call i64 @CHSPEC_IS2G(i32 %738)
  %740 = icmp ne i64 %739, 0
  br i1 %740, label %741, label %747

741:                                              ; preds = %735
  %742 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %743 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %742, i32 0, i32 9
  %744 = load i64, i64* %743, align 8
  %745 = icmp eq i64 %744, 0
  %746 = zext i1 %745 to i32
  br label %753

747:                                              ; preds = %735
  %748 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %749 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %748, i32 0, i32 10
  %750 = load i64, i64* %749, align 8
  %751 = icmp eq i64 %750, 0
  %752 = zext i1 %751 to i32
  br label %753

753:                                              ; preds = %747, %741
  %754 = phi i32 [ %746, %741 ], [ %752, %747 ]
  store i32 %754, i32* %7, align 4
  br label %755

755:                                              ; preds = %753, %731
  %756 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %757 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %756, i32 0, i32 18
  %758 = load i32, i32* %757, align 8
  %759 = icmp ne i32 %758, 0
  br i1 %759, label %761, label %760

760:                                              ; preds = %755
  store i32 0, i32* %7, align 4
  br label %761

761:                                              ; preds = %760, %755
  %762 = load i32, i32* %7, align 4
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %764, label %854

764:                                              ; preds = %761
  %765 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %766 = call i32 @wlc_phy_get_tx_gain_nphy(%struct.brcms_phy* %765)
  %767 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %16, i32 0, i32 0
  store i32 %766, i32* %767, align 4
  %768 = bitcast %struct.nphy_txgains* %5 to i8*
  %769 = bitcast %struct.nphy_txgains* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %768, i8* align 4 %769, i64 4, i1 false)
  %770 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %771 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %770, i32 0, i32 11
  %772 = load i64, i64* %771, align 8
  %773 = load i64, i64* @ANTSEL_2x3, align 8
  %774 = icmp eq i64 %772, %773
  br i1 %774, label %775, label %779

775:                                              ; preds = %764
  %776 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %777 = bitcast %struct.brcms_phy* %776 to %struct.brcms_phy_pub*
  %778 = call i32 @wlc_phy_antsel_init(%struct.brcms_phy_pub* %777, i32 1)
  br label %779

779:                                              ; preds = %775, %764
  %780 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %781 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %780, i32 0, i32 12
  %782 = load i64, i64* %781, align 8
  %783 = load i64, i64* @PHY_PERICAL_MPHASE, align 8
  %784 = icmp ne i64 %782, %783
  br i1 %784, label %785, label %841

785:                                              ; preds = %779
  %786 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %787 = call i32 @wlc_phy_rssi_cal_nphy(%struct.brcms_phy* %786)
  %788 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %789 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %788, i32 0, i32 14
  %790 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %789, i32 0, i32 2
  %791 = load i32, i32* %790, align 4
  %792 = call i64 @NREV_GE(i32 %791, i32 3)
  %793 = icmp ne i64 %792, 0
  br i1 %793, label %794, label %824

794:                                              ; preds = %785
  %795 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %796 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %795, i32 0, i32 16
  %797 = load %struct.TYPE_13__*, %struct.TYPE_13__** %796, align 8
  %798 = load i64, i64* @PHY_CORE_0, align 8
  %799 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %797, i64 %798
  %800 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %799, i32 0, i32 0
  %801 = load i32, i32* %800, align 4
  %802 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %803 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %802, i32 0, i32 17
  %804 = load i32*, i32** %803, align 8
  %805 = getelementptr inbounds i32, i32* %804, i64 0
  store i32 %801, i32* %805, align 4
  %806 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %807 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %806, i32 0, i32 16
  %808 = load %struct.TYPE_13__*, %struct.TYPE_13__** %807, align 8
  %809 = load i64, i64* @PHY_CORE_1, align 8
  %810 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %808, i64 %809
  %811 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %810, i32 0, i32 0
  %812 = load i32, i32* %811, align 4
  %813 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %814 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %813, i32 0, i32 17
  %815 = load i32*, i32** %814, align 8
  %816 = getelementptr inbounds i32, i32* %815, i64 1
  store i32 %812, i32* %816, align 4
  %817 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %818 = call i32 @wlc_phy_precal_txgain_nphy(%struct.brcms_phy* %817)
  %819 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %820 = call i32 @wlc_phy_get_tx_gain_nphy(%struct.brcms_phy* %819)
  %821 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %17, i32 0, i32 0
  store i32 %820, i32* %821, align 4
  %822 = bitcast %struct.nphy_txgains* %5 to i8*
  %823 = bitcast %struct.nphy_txgains* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %822, i8* align 4 %823, i64 4, i1 false)
  br label %824

824:                                              ; preds = %794, %785
  %825 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %826 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %5, i32 0, i32 0
  %827 = load i32, i32* %826, align 4
  %828 = call i64 @wlc_phy_cal_txiqlo_nphy(%struct.brcms_phy* %825, i32 %827, i32 1, i32 0)
  %829 = icmp eq i64 %828, 0
  br i1 %829, label %830, label %840

830:                                              ; preds = %824
  %831 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %832 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %5, i32 0, i32 0
  %833 = load i32, i32* %832, align 4
  %834 = call i64 @wlc_phy_cal_rxiq_nphy(%struct.brcms_phy* %831, i32 %833, i32 2, i32 0)
  %835 = icmp eq i64 %834, 0
  br i1 %835, label %836, label %839

836:                                              ; preds = %830
  %837 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %838 = call i32 @wlc_phy_savecal_nphy(%struct.brcms_phy* %837)
  br label %839

839:                                              ; preds = %836, %830
  br label %840

840:                                              ; preds = %839, %824
  br label %853

841:                                              ; preds = %779
  %842 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %843 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %842, i32 0, i32 13
  %844 = load i64, i64* %843, align 8
  %845 = load i64, i64* @MPHASE_CAL_STATE_IDLE, align 8
  %846 = icmp eq i64 %844, %845
  br i1 %846, label %847, label %852

847:                                              ; preds = %841
  %848 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %849 = bitcast %struct.brcms_phy* %848 to %struct.brcms_phy_pub*
  %850 = load i32, i32* @PHY_PERICAL_PHYINIT, align 4
  %851 = call i32 @wlc_phy_cal_perical(%struct.brcms_phy_pub* %849, i32 %850)
  br label %852

852:                                              ; preds = %847, %841
  br label %853

853:                                              ; preds = %852, %840
  br label %857

854:                                              ; preds = %761
  %855 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %856 = call i32 @wlc_phy_restorecal_nphy(%struct.brcms_phy* %855)
  br label %857

857:                                              ; preds = %854, %853
  %858 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %859 = call i32 @wlc_phy_txpwrctrl_coeff_setup_nphy(%struct.brcms_phy* %858)
  %860 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %861 = load i32, i32* %6, align 4
  %862 = call i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy* %860, i32 %861)
  %863 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %864 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %865 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %864, i32 0, i32 15
  %866 = load %struct.TYPE_14__*, %struct.TYPE_14__** %865, align 8
  %867 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %866, i32 0, i32 5
  %868 = load i32, i32* %867, align 8
  %869 = call i32 @wlc_phy_nphy_tkip_rifs_war(%struct.brcms_phy* %863, i32 %868)
  %870 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %871 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %870, i32 0, i32 14
  %872 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %871, i32 0, i32 2
  %873 = load i32, i32* %872, align 4
  %874 = call i64 @NREV_GE(i32 %873, i32 3)
  %875 = icmp ne i64 %874, 0
  br i1 %875, label %876, label %886

876:                                              ; preds = %857
  %877 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %878 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %877, i32 0, i32 14
  %879 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %878, i32 0, i32 2
  %880 = load i32, i32* %879, align 4
  %881 = call i64 @NREV_LE(i32 %880, i32 6)
  %882 = icmp ne i64 %881, 0
  br i1 %882, label %883, label %886

883:                                              ; preds = %876
  %884 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %885 = call i32 @write_phy_reg(%struct.brcms_phy* %884, i32 112, i32 50)
  br label %886

886:                                              ; preds = %883, %876, %857
  %887 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %888 = call i32 @wlc_phy_txlpfbw_nphy(%struct.brcms_phy* %887)
  %889 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %890 = call i32 @wlc_phy_spurwar_nphy(%struct.brcms_phy* %889)
  ret void
}

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @bcma_cc_set32(i32*, i32, i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i32 @bcma_chipco_chipctl_maskset(i32*, i32, i32, i32) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @bcma_read32(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_mask32(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @bcma_write32(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @wlc_phy_tbl_init_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_update_mimoconfig_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_stf_chain_upd_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_ipa_set_tx_digi_filts_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_extpa_set_tx_digi_filts_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_workarounds_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlapi_bmac_phyclk_fgc(i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlapi_bmac_macphyclk_set(i32, i32) #1

declare dso_local i32 @wlc_phy_pa_override_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_force_rfseq_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_classifier_nphy(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_clip_det_nphy(%struct.brcms_phy*, i32, i32*) #1

declare dso_local i32 @wlc_phy_bphy_init_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpwrctrl_enable_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_txpwr_fixpower_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpwrctrl_idle_tssi_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpwrctrl_pwr_setup_nphy(%struct.brcms_phy*) #1

declare dso_local i32* @wlc_phy_get_ipa_gaintbl_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @get_rf_pwr_offset(%struct.brcms_phy*, i64, i64) #1

declare dso_local i32 @wlc_phy_rxcore_setstate_nphy(%struct.brcms_phy_pub*, i32) #1

declare dso_local i64 @PHY_PERICAL_MPHASE_PENDING(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_perical_mphase_restart(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_rssi_cal_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_restore_rssical_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_get_tx_gain_nphy(%struct.brcms_phy*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wlc_phy_antsel_init(%struct.brcms_phy_pub*, i32) #1

declare dso_local i32 @wlc_phy_precal_txgain_nphy(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_phy_cal_txiqlo_nphy(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @wlc_phy_cal_rxiq_nphy(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_savecal_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_perical(%struct.brcms_phy_pub*, i32) #1

declare dso_local i32 @wlc_phy_restorecal_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_txpwrctrl_coeff_setup_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_nphy_tkip_rifs_war(%struct.brcms_phy*, i32) #1

declare dso_local i64 @NREV_LE(i32, i32) #1

declare dso_local i32 @wlc_phy_txlpfbw_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_spurwar_nphy(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
