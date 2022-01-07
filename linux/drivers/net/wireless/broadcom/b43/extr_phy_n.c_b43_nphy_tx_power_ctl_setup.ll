; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_power_ctl_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_power_ctl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, %struct.TYPE_14__*, i32 }
%struct.b43_phy = type { i32, %struct.TYPE_9__*, %struct.b43_phy_n* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.b43_phy_n = type { i32*, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, %struct.TYPE_13__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32*, i32, i32*, i32, i32*, i32, i32* }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_NPHY_TSSIMODE = common dso_local global i32 0, align 4
@B43_NPHY_TSSIMODE_EN = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_PCTLEN = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_TXPCTL_ITSSI = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_CMD_INIT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_INIT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_INIT_PIDXI1 = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_N = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_N_TSSID_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_N_NPTIL2_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_ITSSI_0_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_ITSSI_1_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_ITSSI_BINF = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_TPWR = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_TPWR_0_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_TXPCTL_TPWR_1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_power_ctl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_power_ctl_setup(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 0
  store %struct.b43_phy* %22, %struct.b43_phy** %3, align 8
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %24, i32 0, i32 2
  %26 = load %struct.b43_phy_n*, %struct.b43_phy_n** %25, align 8
  store %struct.b43_phy_n* %26, %struct.b43_phy_n** %4, align 8
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.ssb_sprom*, %struct.ssb_sprom** %30, align 8
  store %struct.ssb_sprom* %31, %struct.ssb_sprom** %5, align 8
  %32 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %33 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 11
  br i1 %44, label %52, label %45

45:                                               ; preds = %1
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %47 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 12
  br i1 %51, label %52, label %60

52:                                               ; preds = %45, %1
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %55 = call i32 @b43_maskset32(%struct.b43_wldev* %53, i32 %54, i32 -1, i32 2097152)
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %57 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %58 = call i32 @b43_read32(%struct.b43_wldev* %56, i32 %57)
  %59 = call i32 @udelay(i32 1)
  br label %60

60:                                               ; preds = %52, %45
  %61 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %62 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %66, i32 1)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* @B43_NPHY_TSSIMODE, align 4
  %71 = load i32, i32* @B43_NPHY_TSSIMODE_EN, align 4
  %72 = call i32 @b43_phy_set(%struct.b43_wldev* %69, i32 %70, i32 %71)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 3
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %81 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %82, 65535
  %84 = call i32 @b43_phy_mask(%struct.b43_wldev* %79, i32 %80, i32 %83)
  br label %90

85:                                               ; preds = %68
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %88 = load i32, i32* @B43_NPHY_TXPCTL_CMD_PCTLEN, align 4
  %89 = call i32 @b43_phy_set(%struct.b43_wldev* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 11
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 12
  br i1 %103, label %104, label %108

104:                                              ; preds = %97, %90
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %107 = call i32 @b43_maskset32(%struct.b43_wldev* %105, i32 %106, i32 -2097153, i32 0)
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %110 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %136

113:                                              ; preds = %108
  %114 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %115 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %114, i32 0, i32 3
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %122 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %121, i32 0, i32 3
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 52, i32* %128, align 4
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 52, i32* %129, align 4
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 -424, i32* %130, align 4
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 -424, i32* %131, align 4
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 5612, i32* %132, align 4
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 5612, i32* %133, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 -1393, i32* %134, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 -1393, i32* %135, align 4
  br label %465

136:                                              ; preds = %108
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %138 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @b43_current_band(i32 %139)
  %141 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %213

143:                                              ; preds = %136
  store i32 0, i32* %20, align 4
  br label %144

144:                                              ; preds = %209, %143
  %145 = load i32, i32* %20, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %147, label %212

147:                                              ; preds = %144
  %148 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %149 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %148, i32 0, i32 3
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = load i32, i32* %20, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %157
  store i32 %155, i32* %158, align 4
  %159 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %160 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %159, i32 0, i32 2
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %168
  store i32 %166, i32* %169, align 4
  %170 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %171 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %170, i32 0, i32 2
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %181
  store i32 %179, i32* %182, align 4
  %183 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %184 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %183, i32 0, i32 2
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load i32, i32* %20, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %194
  store i32 %192, i32* %195, align 4
  %196 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %197 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %196, i32 0, i32 2
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %207
  store i32 %205, i32* %208, align 4
  br label %209

209:                                              ; preds = %147
  %210 = load i32, i32* %20, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %20, align 4
  br label %144

212:                                              ; preds = %144
  br label %464

213:                                              ; preds = %136
  %214 = load i32, i32* %16, align 4
  %215 = icmp sge i32 %214, 4900
  br i1 %215, label %216, label %289

216:                                              ; preds = %213
  %217 = load i32, i32* %16, align 4
  %218 = icmp slt i32 %217, 5100
  br i1 %218, label %219, label %289

219:                                              ; preds = %216
  store i32 0, i32* %20, align 4
  br label %220

220:                                              ; preds = %285, %219
  %221 = load i32, i32* %20, align 4
  %222 = icmp slt i32 %221, 2
  br i1 %222, label %223, label %288

223:                                              ; preds = %220
  %224 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %225 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %224, i32 0, i32 3
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = load i32, i32* %20, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %233
  store i32 %231, i32* %234, align 4
  %235 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %236 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %235, i32 0, i32 2
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = load i32, i32* %20, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %20, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %244
  store i32 %242, i32* %245, align 4
  %246 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %247 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %246, i32 0, i32 2
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %20, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %257
  store i32 %255, i32* %258, align 4
  %259 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %260 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %259, i32 0, i32 2
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %260, align 8
  %262 = load i32, i32* %20, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %20, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %270
  store i32 %268, i32* %271, align 4
  %272 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %273 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %272, i32 0, i32 2
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %273, align 8
  %275 = load i32, i32* %20, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 3
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %20, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %283
  store i32 %281, i32* %284, align 4
  br label %285

285:                                              ; preds = %223
  %286 = load i32, i32* %20, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %20, align 4
  br label %220

288:                                              ; preds = %220
  br label %463

289:                                              ; preds = %216, %213
  %290 = load i32, i32* %16, align 4
  %291 = icmp sge i32 %290, 5100
  br i1 %291, label %292, label %365

292:                                              ; preds = %289
  %293 = load i32, i32* %16, align 4
  %294 = icmp slt i32 %293, 5500
  br i1 %294, label %295, label %365

295:                                              ; preds = %292
  store i32 0, i32* %20, align 4
  br label %296

296:                                              ; preds = %361, %295
  %297 = load i32, i32* %20, align 4
  %298 = icmp slt i32 %297, 2
  br i1 %298, label %299, label %364

299:                                              ; preds = %296
  %300 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %301 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %300, i32 0, i32 3
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = load i32, i32* %20, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %20, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %309
  store i32 %307, i32* %310, align 4
  %311 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %312 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %311, i32 0, i32 2
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %312, align 8
  %314 = load i32, i32* %20, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* %20, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %320
  store i32 %318, i32* %321, align 4
  %322 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %323 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %322, i32 0, i32 2
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %323, align 8
  %325 = load i32, i32* %20, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 5
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %20, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %333
  store i32 %331, i32* %334, align 4
  %335 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %336 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %335, i32 0, i32 2
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %336, align 8
  %338 = load i32, i32* %20, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 5
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %20, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %346
  store i32 %344, i32* %347, align 4
  %348 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %349 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %348, i32 0, i32 2
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %349, align 8
  %351 = load i32, i32* %20, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 5
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 2
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* %20, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %359
  store i32 %357, i32* %360, align 4
  br label %361

361:                                              ; preds = %299
  %362 = load i32, i32* %20, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %20, align 4
  br label %296

364:                                              ; preds = %296
  br label %462

365:                                              ; preds = %292, %289
  %366 = load i32, i32* %16, align 4
  %367 = icmp sge i32 %366, 5500
  br i1 %367, label %368, label %438

368:                                              ; preds = %365
  store i32 0, i32* %20, align 4
  br label %369

369:                                              ; preds = %434, %368
  %370 = load i32, i32* %20, align 4
  %371 = icmp slt i32 %370, 2
  br i1 %371, label %372, label %437

372:                                              ; preds = %369
  %373 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %374 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %373, i32 0, i32 3
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %374, align 8
  %376 = load i32, i32* %20, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %20, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %382
  store i32 %380, i32* %383, align 4
  %384 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %385 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %384, i32 0, i32 2
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %385, align 8
  %387 = load i32, i32* %20, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 6
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* %20, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %393
  store i32 %391, i32* %394, align 4
  %395 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %396 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %395, i32 0, i32 2
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %396, align 8
  %398 = load i32, i32* %20, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 7
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 0
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %20, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %406
  store i32 %404, i32* %407, align 4
  %408 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %409 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %408, i32 0, i32 2
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %409, align 8
  %411 = load i32, i32* %20, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 7
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %20, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %419
  store i32 %417, i32* %420, align 4
  %421 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %422 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %421, i32 0, i32 2
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %422, align 8
  %424 = load i32, i32* %20, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 7
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 2
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %20, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %432
  store i32 %430, i32* %433, align 4
  br label %434

434:                                              ; preds = %372
  %435 = load i32, i32* %20, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %20, align 4
  br label %369

437:                                              ; preds = %369
  br label %461

438:                                              ; preds = %365
  %439 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %440 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %439, i32 0, i32 3
  %441 = load %struct.TYPE_11__*, %struct.TYPE_11__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i64 0
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %444, i32* %445, align 4
  %446 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %447 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %446, i32 0, i32 3
  %448 = load %struct.TYPE_11__*, %struct.TYPE_11__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %448, i64 1
  %450 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %451, i32* %452, align 4
  %453 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 52, i32* %453, align 4
  %454 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 52, i32* %454, align 4
  %455 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 -424, i32* %455, align 4
  %456 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 -424, i32* %456, align 4
  %457 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 5612, i32* %457, align 4
  %458 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 5612, i32* %458, align 4
  %459 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 -1393, i32* %459, align 4
  %460 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 -1393, i32* %460, align 4
  br label %461

461:                                              ; preds = %438, %437
  br label %462

462:                                              ; preds = %461, %364
  br label %463

463:                                              ; preds = %462, %288
  br label %464

464:                                              ; preds = %463, %212
  br label %465

465:                                              ; preds = %464, %113
  %466 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %467 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %468 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %467, i32 0, i32 2
  %469 = call i32 @b43_ppr_get_max(%struct.b43_wldev* %466, i32* %468)
  store i32 %469, i32* %10, align 4
  %470 = load i32, i32* %10, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %477

472:                                              ; preds = %465
  %473 = load i32, i32* %10, align 4
  %474 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %473, i32* %474, align 4
  %475 = load i32, i32* %10, align 4
  %476 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %475, i32* %476, align 4
  br label %477

477:                                              ; preds = %472, %465
  %478 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %479 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = icmp sge i32 %481, 3
  br i1 %482, label %483, label %568

483:                                              ; preds = %477
  %484 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %485 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %483
  %491 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %492 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI, align 4
  %493 = call i32 @b43_phy_set(%struct.b43_wldev* %491, i32 %492, i32 16384)
  br label %494

494:                                              ; preds = %490, %483
  %495 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %496 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = icmp sge i32 %498, 7
  br i1 %499, label %500, label %530

500:                                              ; preds = %494
  store i32 0, i32* %20, align 4
  br label %501

501:                                              ; preds = %526, %500
  %502 = load i32, i32* %20, align 4
  %503 = icmp slt i32 %502, 2
  br i1 %503, label %504, label %529

504:                                              ; preds = %501
  %505 = load i32, i32* %20, align 4
  %506 = icmp ne i32 %505, 0
  %507 = zext i1 %506 to i64
  %508 = select i1 %506, i32 400, i32 368
  store i32 %508, i32* %18, align 4
  %509 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %510 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %509)
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %525

512:                                              ; preds = %504
  %513 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %514 = load i32, i32* %18, align 4
  %515 = add nsw i32 %514, 9
  %516 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %517 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 8
  %519 = call i64 @b43_current_band(i32 %518)
  %520 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %521 = icmp eq i64 %519, %520
  %522 = zext i1 %521 to i64
  %523 = select i1 %521, i32 14, i32 12
  %524 = call i32 @b43_radio_write(%struct.b43_wldev* %513, i32 %515, i32 %523)
  br label %525

525:                                              ; preds = %512, %504
  br label %526

526:                                              ; preds = %525
  %527 = load i32, i32* %20, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %20, align 4
  br label %501

529:                                              ; preds = %501
  br label %567

530:                                              ; preds = %494
  %531 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %532 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %531)
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %555

534:                                              ; preds = %530
  %535 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %536 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 8
  %538 = call i64 @b43_current_band(i32 %537)
  %539 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %540 = icmp eq i64 %538, %539
  %541 = zext i1 %540 to i64
  %542 = select i1 %540, i32 12, i32 14
  store i32 %542, i32* %17, align 4
  %543 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %544 = load i32, i32* @B2056_TX0, align 4
  %545 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %546 = or i32 %544, %545
  %547 = load i32, i32* %17, align 4
  %548 = call i32 @b43_radio_write(%struct.b43_wldev* %543, i32 %546, i32 %547)
  %549 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %550 = load i32, i32* @B2056_TX1, align 4
  %551 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %552 = or i32 %550, %551
  %553 = load i32, i32* %17, align 4
  %554 = call i32 @b43_radio_write(%struct.b43_wldev* %549, i32 %552, i32 %553)
  br label %566

555:                                              ; preds = %530
  %556 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %557 = load i32, i32* @B2056_TX0, align 4
  %558 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %559 = or i32 %557, %558
  %560 = call i32 @b43_radio_write(%struct.b43_wldev* %556, i32 %559, i32 17)
  %561 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %562 = load i32, i32* @B2056_TX1, align 4
  %563 = load i32, i32* @B2056_TX_TX_SSI_MUX, align 4
  %564 = or i32 %562, %563
  %565 = call i32 @b43_radio_write(%struct.b43_wldev* %561, i32 %564, i32 17)
  br label %566

566:                                              ; preds = %555, %534
  br label %567

567:                                              ; preds = %566, %529
  br label %568

568:                                              ; preds = %567, %477
  %569 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %570 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %569, i32 0, i32 1
  %571 = load %struct.TYPE_14__*, %struct.TYPE_14__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = icmp eq i32 %573, 11
  br i1 %574, label %582, label %575

575:                                              ; preds = %568
  %576 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %577 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %576, i32 0, i32 1
  %578 = load %struct.TYPE_14__*, %struct.TYPE_14__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = icmp eq i32 %580, 12
  br i1 %581, label %582, label %590

582:                                              ; preds = %575, %568
  %583 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %584 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %585 = call i32 @b43_maskset32(%struct.b43_wldev* %583, i32 %584, i32 -1, i32 2097152)
  %586 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %587 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %588 = call i32 @b43_read32(%struct.b43_wldev* %586, i32 %587)
  %589 = call i32 @udelay(i32 1)
  br label %590

590:                                              ; preds = %582, %575
  %591 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %592 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = icmp sge i32 %593, 19
  br i1 %594, label %595, label %596

595:                                              ; preds = %590
  br label %631

596:                                              ; preds = %590
  %597 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %598 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = icmp sge i32 %599, 7
  br i1 %600, label %601, label %612

601:                                              ; preds = %596
  %602 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %603 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %604 = load i32, i32* @B43_NPHY_TXPCTL_CMD_INIT, align 4
  %605 = xor i32 %604, -1
  %606 = call i32 @b43_phy_maskset(%struct.b43_wldev* %602, i32 %603, i32 %605, i32 25)
  %607 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %608 = load i32, i32* @B43_NPHY_TXPCTL_INIT, align 4
  %609 = load i32, i32* @B43_NPHY_TXPCTL_INIT_PIDXI1, align 4
  %610 = xor i32 %609, -1
  %611 = call i32 @b43_phy_maskset(%struct.b43_wldev* %607, i32 %608, i32 %610, i32 25)
  br label %630

612:                                              ; preds = %596
  %613 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %614 = load i32, i32* @B43_NPHY_TXPCTL_CMD, align 4
  %615 = load i32, i32* @B43_NPHY_TXPCTL_CMD_INIT, align 4
  %616 = xor i32 %615, -1
  %617 = call i32 @b43_phy_maskset(%struct.b43_wldev* %613, i32 %614, i32 %616, i32 64)
  %618 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %619 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = icmp sgt i32 %621, 1
  br i1 %622, label %623, label %629

623:                                              ; preds = %612
  %624 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %625 = load i32, i32* @B43_NPHY_TXPCTL_INIT, align 4
  %626 = load i32, i32* @B43_NPHY_TXPCTL_INIT_PIDXI1, align 4
  %627 = xor i32 %626, -1
  %628 = call i32 @b43_phy_maskset(%struct.b43_wldev* %624, i32 %625, i32 %627, i32 64)
  br label %629

629:                                              ; preds = %623, %612
  br label %630

630:                                              ; preds = %629, %601
  br label %631

631:                                              ; preds = %630, %595
  %632 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %633 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %632, i32 0, i32 1
  %634 = load %struct.TYPE_14__*, %struct.TYPE_14__** %633, align 8
  %635 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 8
  %637 = icmp eq i32 %636, 11
  br i1 %637, label %645, label %638

638:                                              ; preds = %631
  %639 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %640 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %639, i32 0, i32 1
  %641 = load %struct.TYPE_14__*, %struct.TYPE_14__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %641, i32 0, i32 0
  %643 = load i32, i32* %642, align 8
  %644 = icmp eq i32 %643, 12
  br i1 %644, label %645, label %649

645:                                              ; preds = %638, %631
  %646 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %647 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %648 = call i32 @b43_maskset32(%struct.b43_wldev* %646, i32 %647, i32 -2097153, i32 0)
  br label %649

649:                                              ; preds = %645, %638
  %650 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %651 = load i32, i32* @B43_NPHY_TXPCTL_N, align 4
  %652 = load i32, i32* @B43_NPHY_TXPCTL_N_TSSID_SHIFT, align 4
  %653 = shl i32 240, %652
  %654 = load i32, i32* @B43_NPHY_TXPCTL_N_NPTIL2_SHIFT, align 4
  %655 = shl i32 3, %654
  %656 = or i32 %653, %655
  %657 = call i32 @b43_phy_write(%struct.b43_wldev* %650, i32 %651, i32 %656)
  %658 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %659 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI, align 4
  %660 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %661 = load i32, i32* %660, align 4
  %662 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI_0_SHIFT, align 4
  %663 = shl i32 %661, %662
  %664 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %665 = load i32, i32* %664, align 4
  %666 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI_1_SHIFT, align 4
  %667 = shl i32 %665, %666
  %668 = or i32 %663, %667
  %669 = load i32, i32* @B43_NPHY_TXPCTL_ITSSI_BINF, align 4
  %670 = or i32 %668, %669
  %671 = call i32 @b43_phy_write(%struct.b43_wldev* %658, i32 %659, i32 %670)
  %672 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %673 = load i32, i32* @B43_NPHY_TXPCTL_TPWR, align 4
  %674 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* @B43_NPHY_TXPCTL_TPWR_0_SHIFT, align 4
  %677 = shl i32 %675, %676
  %678 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %679 = load i32, i32* %678, align 4
  %680 = load i32, i32* @B43_NPHY_TXPCTL_TPWR_1_SHIFT, align 4
  %681 = shl i32 %679, %680
  %682 = or i32 %677, %681
  %683 = call i32 @b43_phy_write(%struct.b43_wldev* %672, i32 %673, i32 %682)
  store i32 0, i32* %20, align 4
  br label %684

684:                                              ; preds = %757, %649
  %685 = load i32, i32* %20, align 4
  %686 = icmp slt i32 %685, 2
  br i1 %686, label %687, label %760

687:                                              ; preds = %684
  store i32 0, i32* %19, align 4
  br label %688

688:                                              ; preds = %747, %687
  %689 = load i32, i32* %19, align 4
  %690 = icmp slt i32 %689, 64
  br i1 %690, label %691, label %750

691:                                              ; preds = %688
  %692 = load i32, i32* %20, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %693
  %695 = load i32, i32* %694, align 4
  %696 = mul nsw i32 16, %695
  %697 = load i32, i32* %20, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %698
  %700 = load i32, i32* %699, align 4
  %701 = load i32, i32* %19, align 4
  %702 = mul nsw i32 %700, %701
  %703 = add nsw i32 %696, %702
  %704 = mul nsw i32 8, %703
  store i32 %704, i32* %12, align 4
  %705 = load i32, i32* %20, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %706
  %708 = load i32, i32* %707, align 4
  %709 = load i32, i32* %19, align 4
  %710 = mul nsw i32 %708, %709
  %711 = add nsw i32 32768, %710
  store i32 %711, i32* %13, align 4
  %712 = load i32, i32* %12, align 4
  %713 = mul nsw i32 4, %712
  %714 = load i32, i32* %13, align 4
  %715 = sdiv i32 %714, 2
  %716 = add nsw i32 %713, %715
  %717 = load i32, i32* %13, align 4
  %718 = sdiv i32 %716, %717
  %719 = call i32 @max(i32 %718, i32 -8)
  store i32 %719, i32* %14, align 4
  %720 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %721 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %720, i32 0, i32 0
  %722 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = icmp slt i32 %723, 3
  br i1 %724, label %725, label %742

725:                                              ; preds = %691
  %726 = load i32, i32* %19, align 4
  %727 = load i32, i32* %20, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %728
  %730 = load i32, i32* %729, align 4
  %731 = sub nsw i32 31, %730
  %732 = add nsw i32 %731, 1
  %733 = icmp sle i32 %726, %732
  br i1 %733, label %734, label %742

734:                                              ; preds = %725
  %735 = load i32, i32* %14, align 4
  %736 = load i32, i32* %20, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %737
  %739 = load i32, i32* %738, align 4
  %740 = add nsw i32 %739, 1
  %741 = call i32 @max(i32 %735, i32 %740)
  store i32 %741, i32* %14, align 4
  br label %742

742:                                              ; preds = %734, %725, %691
  %743 = load i32, i32* %14, align 4
  %744 = load i32, i32* %19, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %745
  store i32 %743, i32* %746, align 4
  br label %747

747:                                              ; preds = %742
  %748 = load i32, i32* %19, align 4
  %749 = add nsw i32 %748, 1
  store i32 %749, i32* %19, align 4
  br label %688

750:                                              ; preds = %688
  %751 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %752 = load i32, i32* %20, align 4
  %753 = add nsw i32 26, %752
  %754 = call i32 @B43_NTAB32(i32 %753, i32 0)
  %755 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %756 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %751, i32 %754, i32 64, i32* %755)
  br label %757

757:                                              ; preds = %750
  %758 = load i32, i32* %20, align 4
  %759 = add nsw i32 %758, 1
  store i32 %759, i32* %20, align 4
  br label %684

760:                                              ; preds = %684
  %761 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %762 = call i32 @b43_nphy_tx_prepare_adjusted_power_table(%struct.b43_wldev* %761)
  %763 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %764 = call i32 @B43_NTAB16(i32 26, i32 64)
  %765 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %766 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %765, i32 0, i32 0
  %767 = load i32*, i32** %766, align 8
  %768 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %763, i32 %764, i32 84, i32* %767)
  %769 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %770 = call i32 @B43_NTAB16(i32 27, i32 64)
  %771 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %772 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %771, i32 0, i32 0
  %773 = load i32*, i32** %772, align 8
  %774 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %769, i32 %770, i32 84, i32* %773)
  %775 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %776 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %775, i32 0, i32 1
  %777 = load i64, i64* %776, align 8
  %778 = icmp ne i64 %777, 0
  br i1 %778, label %779, label %782

779:                                              ; preds = %760
  %780 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %781 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %780, i32 0)
  br label %782

782:                                              ; preds = %779, %760
  ret void
}

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_ppr_get_max(%struct.b43_wldev*, i32*) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_NTAB32(i32, i32) #1

declare dso_local i32 @b43_nphy_tx_prepare_adjusted_power_table(%struct.b43_wldev*) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
