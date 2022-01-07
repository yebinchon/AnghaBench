; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_2056_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_radio_2056_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, %struct.TYPE_5__*, i32 }
%struct.b43_phy = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i32 }
%struct.b43_nphy_channeltab_entry_rev3 = type { i32 }

@BCMA_CHIP_ID_BCM43224 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43225 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43421 = common dso_local global i64 0, align 8
@BCMA_PKG_ID_BCM43224_FAB_SMIC = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@B43_BFL2_GPLL_WAR = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B2056_SYN_PLL_LOOPFILTER1 = common dso_local global i32 0, align 4
@B2056_SYN_PLL_LOOPFILTER2 = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4716 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM47162 = common dso_local global i64 0, align 8
@B2056_SYN_PLL_LOOPFILTER4 = common dso_local global i32 0, align 4
@B2056_SYN_PLL_CP2 = common dso_local global i32 0, align 4
@B43_BFH2_GPLL_WAR2 = common dso_local global i32 0, align 4
@B43_BFL2_APLL_WAR = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX_PADG_IDAC = common dso_local global i32 0, align 4
@B2056_TX_INTPAG_IMAIN_STAT = common dso_local global i32 0, align 4
@B2056_TX_INTPAG_IAUX_STAT = common dso_local global i32 0, align 4
@B2056_TX_INTPAG_CASCBIAS = common dso_local global i32 0, align 4
@B2056_TX_INTPAG_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PGAG_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PADG_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_MIXG_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PA_SPARE1 = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PADA_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_PGAA_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_MIXA_BOOST_TUNE = common dso_local global i32 0, align 4
@B2056_TX_TXSPARE1 = common dso_local global i32 0, align 4
@B2056_TX_PA_SPARE2 = common dso_local global i32 0, align 4
@B2056_TX_PADA_CASCBIAS = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_IAUX_STAT = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_IMAIN_STAT = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_CASCBIAS = common dso_local global i32 0, align 4
@B2056_SYN_PLL_VCOCAL12 = common dso_local global i32 0, align 4
@B2056_TX_INTPAA_PA_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev3*)* @b43_radio_2056_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_2056_setup(%struct.b43_wldev* %0, %struct.b43_nphy_channeltab_entry_rev3* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_nphy_channeltab_entry_rev3*, align 8
  %5 = alloca %struct.b43_phy*, align 8
  %6 = alloca %struct.ssb_sprom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_nphy_channeltab_entry_rev3* %1, %struct.b43_nphy_channeltab_entry_rev3** %4, align 8
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  store %struct.b43_phy* %23, %struct.b43_phy** %5, align 8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.ssb_sprom*, %struct.ssb_sprom** %27, align 8
  store %struct.ssb_sprom* %28, %struct.ssb_sprom** %6, align 8
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @b43_current_band(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 3
  %38 = zext i1 %37 to i32
  %39 = call i32 @B43_WARN_ON(i32 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BCMA_CHIP_ID_BCM43224, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %2
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BCMA_CHIP_ID_BCM43225, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %57 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BCMA_CHIP_ID_BCM43421, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %55, %47, %2
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %65 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BCMA_PKG_ID_BCM43224_FAB_SMIC, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %63, %55
  %72 = phi i1 [ false, %55 ], [ %70, %63 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %20, align 4
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = load %struct.b43_nphy_channeltab_entry_rev3*, %struct.b43_nphy_channeltab_entry_rev3** %4, align 8
  %76 = call i32 @b43_chantab_radio_2056_upload(%struct.b43_wldev* %74, %struct.b43_nphy_channeltab_entry_rev3* %75)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @b2056_upload_syn_pll_cp2(%struct.b43_wldev* %77, i32 %81)
  %83 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %84 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @B43_BFL2_GPLL_WAR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %71
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %91 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @b43_current_band(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %134

97:                                               ; preds = %89
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %99 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER1, align 4
  %100 = call i32 @b43_radio_write(%struct.b43_wldev* %98, i32 %99, i32 31)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %102 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER2, align 4
  %103 = call i32 @b43_radio_write(%struct.b43_wldev* %101, i32 %102, i32 31)
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %105 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BCMA_CHIP_ID_BCM4716, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %119, label %111

111:                                              ; preds = %97
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %113 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @BCMA_CHIP_ID_BCM47162, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %111, %97
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %121 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER4, align 4
  %122 = call i32 @b43_radio_write(%struct.b43_wldev* %120, i32 %121, i32 20)
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %124 = load i32, i32* @B2056_SYN_PLL_CP2, align 4
  %125 = call i32 @b43_radio_write(%struct.b43_wldev* %123, i32 %124, i32 0)
  br label %133

126:                                              ; preds = %111
  %127 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %128 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER4, align 4
  %129 = call i32 @b43_radio_write(%struct.b43_wldev* %127, i32 %128, i32 11)
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %131 = load i32, i32* @B2056_SYN_PLL_CP2, align 4
  %132 = call i32 @b43_radio_write(%struct.b43_wldev* %130, i32 %131, i32 20)
  br label %133

133:                                              ; preds = %126, %119
  br label %134

134:                                              ; preds = %133, %89, %71
  %135 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %136 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @B43_BFH2_GPLL_WAR2, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %134
  %142 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %143 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @b43_current_band(i32 %144)
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %141
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %151 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER1, align 4
  %152 = call i32 @b43_radio_write(%struct.b43_wldev* %150, i32 %151, i32 31)
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %154 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER2, align 4
  %155 = call i32 @b43_radio_write(%struct.b43_wldev* %153, i32 %154, i32 31)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %157 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER4, align 4
  %158 = call i32 @b43_radio_write(%struct.b43_wldev* %156, i32 %157, i32 11)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %160 = load i32, i32* @B2056_SYN_PLL_CP2, align 4
  %161 = call i32 @b43_radio_write(%struct.b43_wldev* %159, i32 %160, i32 32)
  br label %162

162:                                              ; preds = %149, %141, %134
  %163 = load %struct.ssb_sprom*, %struct.ssb_sprom** %6, align 8
  %164 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @B43_BFL2_APLL_WAR, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %162
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %171 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @b43_current_band(i32 %172)
  %174 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %189

176:                                              ; preds = %169
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %178 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER1, align 4
  %179 = call i32 @b43_radio_write(%struct.b43_wldev* %177, i32 %178, i32 31)
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %181 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER2, align 4
  %182 = call i32 @b43_radio_write(%struct.b43_wldev* %180, i32 %181, i32 31)
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %184 = load i32, i32* @B2056_SYN_PLL_LOOPFILTER4, align 4
  %185 = call i32 @b43_radio_write(%struct.b43_wldev* %183, i32 %184, i32 5)
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %187 = load i32, i32* @B2056_SYN_PLL_CP2, align 4
  %188 = call i32 @b43_radio_write(%struct.b43_wldev* %186, i32 %187, i32 12)
  br label %189

189:                                              ; preds = %176, %169, %162
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %191 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %191, i32 0, i32 2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %323

197:                                              ; preds = %189
  %198 = load i32, i32* %7, align 4
  %199 = zext i32 %198 to i64
  %200 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %323

202:                                              ; preds = %197
  store i32 0, i32* %9, align 4
  br label %203

203:                                              ; preds = %319, %202
  %204 = load i32, i32* %9, align 4
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %206, label %322

206:                                              ; preds = %203
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* @B2056_TX1, align 4
  br label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @B2056_TX0, align 4
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i32 [ %210, %209 ], [ %212, %211 ]
  store i32 %214, i32* %8, align 4
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %216 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp sge i32 %218, 5
  br i1 %219, label %220, label %290

220:                                              ; preds = %213
  %221 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @B2056_TX_PADG_IDAC, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @b43_radio_write(%struct.b43_wldev* %221, i32 %224, i32 204)
  %226 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %227 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %226, i32 0, i32 1
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @BCMA_CHIP_ID_BCM4716, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %241, label %233

233:                                              ; preds = %220
  %234 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %235 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %234, i32 0, i32 1
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @BCMA_CHIP_ID_BCM47162, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %233, %220
  store i32 64, i32* %10, align 4
  store i32 69, i32* %11, align 4
  store i32 5, i32* %12, align 4
  store i32 51, i32* %14, align 4
  store i32 85, i32* %15, align 4
  br label %247

242:                                              ; preds = %233
  store i32 37, i32* %10, align 4
  store i32 32, i32* %11, align 4
  %243 = load i32, i32* %20, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store i32 42, i32* %10, align 4
  store i32 56, i32* %11, align 4
  br label %246

246:                                              ; preds = %245, %242
  store i32 4, i32* %12, align 4
  store i32 3, i32* %14, align 4
  store i32 101, i32* %15, align 4
  br label %247

247:                                              ; preds = %246, %241
  store i32 119, i32* %13, align 4
  %248 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @B2056_TX_INTPAG_IMAIN_STAT, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* %10, align 4
  %253 = call i32 @b43_radio_write(%struct.b43_wldev* %248, i32 %251, i32 %252)
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @B2056_TX_INTPAG_IAUX_STAT, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* %10, align 4
  %259 = call i32 @b43_radio_write(%struct.b43_wldev* %254, i32 %257, i32 %258)
  %260 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* @B2056_TX_INTPAG_CASCBIAS, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* %11, align 4
  %265 = call i32 @b43_radio_write(%struct.b43_wldev* %260, i32 %263, i32 %264)
  %266 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* @B2056_TX_INTPAG_BOOST_TUNE, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* %12, align 4
  %271 = call i32 @b43_radio_write(%struct.b43_wldev* %266, i32 %269, i32 %270)
  %272 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* @B2056_TX_PGAG_BOOST_TUNE, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* %14, align 4
  %277 = call i32 @b43_radio_write(%struct.b43_wldev* %272, i32 %275, i32 %276)
  %278 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @B2056_TX_PADG_BOOST_TUNE, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* %13, align 4
  %283 = call i32 @b43_radio_write(%struct.b43_wldev* %278, i32 %281, i32 %282)
  %284 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* @B2056_TX_MIXG_BOOST_TUNE, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* %15, align 4
  %289 = call i32 @b43_radio_write(%struct.b43_wldev* %284, i32 %287, i32 %288)
  br label %313

290:                                              ; preds = %213
  %291 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %292 = call i64 @b43_is_40mhz(%struct.b43_wldev* %291)
  %293 = icmp ne i64 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i32 64, i32 32
  store i32 %295, i32* %10, align 4
  %296 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* @B2056_TX_INTPAG_IMAIN_STAT, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @b43_radio_write(%struct.b43_wldev* %296, i32 %299, i32 %300)
  %302 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* @B2056_TX_INTPAG_IAUX_STAT, align 4
  %305 = or i32 %303, %304
  %306 = load i32, i32* %10, align 4
  %307 = call i32 @b43_radio_write(%struct.b43_wldev* %302, i32 %305, i32 %306)
  %308 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %309 = load i32, i32* %8, align 4
  %310 = load i32, i32* @B2056_TX_INTPAG_CASCBIAS, align 4
  %311 = or i32 %309, %310
  %312 = call i32 @b43_radio_write(%struct.b43_wldev* %308, i32 %311, i32 48)
  br label %313

313:                                              ; preds = %290, %247
  %314 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* @B2056_TX_PA_SPARE1, align 4
  %317 = or i32 %315, %316
  %318 = call i32 @b43_radio_write(%struct.b43_wldev* %314, i32 %317, i32 238)
  br label %319

319:                                              ; preds = %313
  %320 = load i32, i32* %9, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %9, align 4
  br label %203

322:                                              ; preds = %203
  br label %444

323:                                              ; preds = %197, %189
  %324 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %325 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %325, i32 0, i32 2
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %443

331:                                              ; preds = %323
  %332 = load i32, i32* %7, align 4
  %333 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %443

335:                                              ; preds = %331
  %336 = load %struct.b43_phy*, %struct.b43_phy** %5, align 8
  %337 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %336, i32 0, i32 1
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  store i32 %342, i32* %21, align 4
  %343 = load i32, i32* %21, align 4
  %344 = icmp slt i32 %343, 5100
  br i1 %344, label %345, label %346

345:                                              ; preds = %335
  store i32 10, i32* %16, align 4
  store i32 119, i32* %17, align 4
  store i32 15, i32* %18, align 4
  store i32 15, i32* %19, align 4
  br label %367

346:                                              ; preds = %335
  %347 = load i32, i32* %21, align 4
  %348 = icmp slt i32 %347, 5340
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  store i32 8, i32* %16, align 4
  store i32 119, i32* %17, align 4
  store i32 251, i32* %18, align 4
  store i32 15, i32* %19, align 4
  br label %366

350:                                              ; preds = %346
  %351 = load i32, i32* %21, align 4
  %352 = icmp slt i32 %351, 5650
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  store i32 0, i32* %16, align 4
  store i32 119, i32* %17, align 4
  store i32 11, i32* %18, align 4
  store i32 15, i32* %19, align 4
  br label %365

354:                                              ; preds = %350
  store i32 0, i32* %16, align 4
  store i32 119, i32* %17, align 4
  %355 = load i32, i32* %21, align 4
  %356 = icmp ne i32 %355, 5825
  br i1 %356, label %357, label %363

357:                                              ; preds = %354
  %358 = load i32, i32* %21, align 4
  %359 = sub nsw i32 %358, 18
  %360 = sub nsw i32 0, %359
  %361 = sdiv i32 %360, 36
  %362 = add nsw i32 %361, 168
  store i32 %362, i32* %18, align 4
  br label %364

363:                                              ; preds = %354
  store i32 6, i32* %18, align 4
  br label %364

364:                                              ; preds = %363, %357
  store i32 15, i32* %19, align 4
  br label %365

365:                                              ; preds = %364, %353
  br label %366

366:                                              ; preds = %365, %349
  br label %367

367:                                              ; preds = %366, %345
  %368 = load i32, i32* %20, align 4
  %369 = icmp ne i32 %368, 0
  %370 = zext i1 %369 to i64
  %371 = select i1 %369, i32 53, i32 48
  store i32 %371, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %372

372:                                              ; preds = %439, %367
  %373 = load i32, i32* %9, align 4
  %374 = icmp slt i32 %373, 2
  br i1 %374, label %375, label %442

375:                                              ; preds = %372
  %376 = load i32, i32* %9, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %375
  %379 = load i32, i32* @B2056_TX1, align 4
  br label %382

380:                                              ; preds = %375
  %381 = load i32, i32* @B2056_TX0, align 4
  br label %382

382:                                              ; preds = %380, %378
  %383 = phi i32 [ %379, %378 ], [ %381, %380 ]
  store i32 %383, i32* %8, align 4
  %384 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %385 = load i32, i32* %8, align 4
  %386 = load i32, i32* @B2056_TX_INTPAA_BOOST_TUNE, align 4
  %387 = or i32 %385, %386
  %388 = load i32, i32* %16, align 4
  %389 = call i32 @b43_radio_write(%struct.b43_wldev* %384, i32 %387, i32 %388)
  %390 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* @B2056_TX_PADA_BOOST_TUNE, align 4
  %393 = or i32 %391, %392
  %394 = load i32, i32* %17, align 4
  %395 = call i32 @b43_radio_write(%struct.b43_wldev* %390, i32 %393, i32 %394)
  %396 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %397 = load i32, i32* %8, align 4
  %398 = load i32, i32* @B2056_TX_PGAA_BOOST_TUNE, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* %18, align 4
  %401 = call i32 @b43_radio_write(%struct.b43_wldev* %396, i32 %399, i32 %400)
  %402 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %403 = load i32, i32* %8, align 4
  %404 = load i32, i32* @B2056_TX_MIXA_BOOST_TUNE, align 4
  %405 = or i32 %403, %404
  %406 = load i32, i32* %19, align 4
  %407 = call i32 @b43_radio_write(%struct.b43_wldev* %402, i32 %405, i32 %406)
  %408 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %409 = load i32, i32* %8, align 4
  %410 = load i32, i32* @B2056_TX_TXSPARE1, align 4
  %411 = or i32 %409, %410
  %412 = call i32 @b43_radio_write(%struct.b43_wldev* %408, i32 %411, i32 48)
  %413 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %414 = load i32, i32* %8, align 4
  %415 = load i32, i32* @B2056_TX_PA_SPARE2, align 4
  %416 = or i32 %414, %415
  %417 = call i32 @b43_radio_write(%struct.b43_wldev* %413, i32 %416, i32 238)
  %418 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %419 = load i32, i32* %8, align 4
  %420 = load i32, i32* @B2056_TX_PADA_CASCBIAS, align 4
  %421 = or i32 %419, %420
  %422 = call i32 @b43_radio_write(%struct.b43_wldev* %418, i32 %421, i32 3)
  %423 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %424 = load i32, i32* %8, align 4
  %425 = load i32, i32* @B2056_TX_INTPAA_IAUX_STAT, align 4
  %426 = or i32 %424, %425
  %427 = call i32 @b43_radio_write(%struct.b43_wldev* %423, i32 %426, i32 48)
  %428 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %429 = load i32, i32* %8, align 4
  %430 = load i32, i32* @B2056_TX_INTPAA_IMAIN_STAT, align 4
  %431 = or i32 %429, %430
  %432 = call i32 @b43_radio_write(%struct.b43_wldev* %428, i32 %431, i32 48)
  %433 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %434 = load i32, i32* %8, align 4
  %435 = load i32, i32* @B2056_TX_INTPAA_CASCBIAS, align 4
  %436 = or i32 %434, %435
  %437 = load i32, i32* %11, align 4
  %438 = call i32 @b43_radio_write(%struct.b43_wldev* %433, i32 %436, i32 %437)
  br label %439

439:                                              ; preds = %382
  %440 = load i32, i32* %9, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %9, align 4
  br label %372

442:                                              ; preds = %372
  br label %443

443:                                              ; preds = %442, %331, %323
  br label %444

444:                                              ; preds = %443, %322
  %445 = call i32 @udelay(i32 50)
  %446 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %447 = load i32, i32* @B2056_SYN_PLL_VCOCAL12, align 4
  %448 = call i32 @b43_radio_write(%struct.b43_wldev* %446, i32 %447, i32 0)
  %449 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %450 = load i32, i32* @B2056_TX_INTPAA_PA_MISC, align 4
  %451 = call i32 @b43_radio_write(%struct.b43_wldev* %449, i32 %450, i32 56)
  %452 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %453 = load i32, i32* @B2056_TX_INTPAA_PA_MISC, align 4
  %454 = call i32 @b43_radio_write(%struct.b43_wldev* %452, i32 %453, i32 24)
  %455 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %456 = load i32, i32* @B2056_TX_INTPAA_PA_MISC, align 4
  %457 = call i32 @b43_radio_write(%struct.b43_wldev* %455, i32 %456, i32 56)
  %458 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %459 = load i32, i32* @B2056_TX_INTPAA_PA_MISC, align 4
  %460 = call i32 @b43_radio_write(%struct.b43_wldev* %458, i32 %459, i32 57)
  %461 = call i32 @udelay(i32 300)
  ret void
}

declare dso_local i32 @b43_current_band(i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_chantab_radio_2056_upload(%struct.b43_wldev*, %struct.b43_nphy_channeltab_entry_rev3*) #1

declare dso_local i32 @b2056_upload_syn_pll_cp2(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_is_40mhz(%struct.b43_wldev*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
