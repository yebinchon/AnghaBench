; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_cal_radio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_tx_cal_radio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy, i32 }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32*, i64, i64 }

@B2055_CAL_RVARCTL = common dso_local global i32 0, align 4
@B2055_CAL_LPOCTL = common dso_local global i32 0, align 4
@B2055_CAL_TS = common dso_local global i32 0, align 4
@B2055_CAL_RCCALRTS = common dso_local global i32 0, align 4
@B2055_CAL_RCALRTS = common dso_local global i32 0, align 4
@B2055_PADDRV = common dso_local global i32 0, align 4
@B2055_XOCTL1 = common dso_local global i32 0, align 4
@B2055_XOCTL2 = common dso_local global i32 0, align 4
@B2055_XOREGUL = common dso_local global i32 0, align 4
@B2055_XOMISC = common dso_local global i32 0, align 4
@B2055_PLL_LFC1 = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@B2055_C1_TX_RF_IQCAL1 = common dso_local global i32 0, align 4
@B2055_C1_TX_RF_IQCAL2 = common dso_local global i32 0, align 4
@B2055_C2_TX_RF_IQCAL1 = common dso_local global i32 0, align 4
@B2055_C2_TX_RF_IQCAL2 = common dso_local global i32 0, align 4
@B2055_C1_PWRDET_RXTX = common dso_local global i32 0, align 4
@B2055_C2_PWRDET_RXTX = common dso_local global i32 0, align 4
@B43_NPHY_BANDCTL = common dso_local global i32 0, align 4
@B43_NPHY_BANDCTL_5GHZ = common dso_local global i32 0, align 4
@B2055_C1_TX_BB_MXGM = common dso_local global i32 0, align 4
@B2055_C2_TX_BB_MXGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tx_cal_radio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tx_cal_radio_setup(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_n*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  store %struct.b43_phy* %10, %struct.b43_phy** %3, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %12, i32 0, i32 1
  %14 = load %struct.b43_phy_n*, %struct.b43_phy_n** %13, align 8
  store %struct.b43_phy_n* %14, %struct.b43_phy_n** %4, align 8
  %15 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %16 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 19
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = call i32 @b43_nphy_tx_cal_radio_setup_rev19(%struct.b43_wldev* %23)
  br label %372

25:                                               ; preds = %1
  %26 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %27 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 7
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %32 = call i32 @b43_nphy_tx_cal_radio_setup_rev7(%struct.b43_wldev* %31)
  br label %371

33:                                               ; preds = %25
  %34 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %35 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %38, label %286

38:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %282, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %285

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 8192, i32 12288
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = mul nsw i32 %47, 11
  store i32 %48, i32* %7, align 4
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @B2055_CAL_RVARCTL, align 4
  %51 = call i32 @b43_radio_read(%struct.b43_wldev* %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 0
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %59 = call i32 @b43_radio_read(%struct.b43_wldev* %57, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = load i32, i32* @B2055_CAL_TS, align 4
  %67 = call i32 @b43_radio_read(%struct.b43_wldev* %65, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = load i32, i32* @B2055_CAL_RCCALRTS, align 4
  %75 = call i32 @b43_radio_read(%struct.b43_wldev* %73, i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = load i32, i32* @B2055_CAL_RCALRTS, align 4
  %83 = call i32 @b43_radio_read(%struct.b43_wldev* %81, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = load i32, i32* @B2055_PADDRV, align 4
  %91 = call i32 @b43_radio_read(%struct.b43_wldev* %89, i32 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 5
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = load i32, i32* @B2055_XOCTL1, align 4
  %99 = call i32 @b43_radio_read(%struct.b43_wldev* %97, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 6
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = load i32, i32* @B2055_XOCTL2, align 4
  %107 = call i32 @b43_radio_read(%struct.b43_wldev* %105, i32 %106)
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 7
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %114 = load i32, i32* @B2055_XOREGUL, align 4
  %115 = call i32 @b43_radio_read(%struct.b43_wldev* %113, i32 %114)
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* @B2055_XOMISC, align 4
  %123 = call i32 @b43_radio_read(%struct.b43_wldev* %121, i32 %122)
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 9
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = load i32, i32* @B2055_PLL_LFC1, align 4
  %131 = call i32 @b43_radio_read(%struct.b43_wldev* %129, i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 10
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %138 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @b43_current_band(i32 %139)
  %141 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %201

143:                                              ; preds = %42
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @B2055_CAL_RVARCTL, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @b43_radio_write(%struct.b43_wldev* %144, i32 %147, i32 10)
  %149 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @b43_radio_write(%struct.b43_wldev* %149, i32 %152, i32 64)
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @B2055_CAL_TS, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @b43_radio_write(%struct.b43_wldev* %154, i32 %157, i32 85)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @B2055_CAL_RCCALRTS, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @b43_radio_write(%struct.b43_wldev* %159, i32 %162, i32 0)
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @B2055_CAL_RCALRTS, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @b43_radio_write(%struct.b43_wldev* %164, i32 %167, i32 0)
  %169 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %170 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %143
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @B2055_PADDRV, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @b43_radio_write(%struct.b43_wldev* %174, i32 %177, i32 4)
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @B2055_XOCTL1, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @b43_radio_write(%struct.b43_wldev* %179, i32 %182, i32 1)
  br label %195

184:                                              ; preds = %143
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @B2055_PADDRV, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @b43_radio_write(%struct.b43_wldev* %185, i32 %188, i32 0)
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @B2055_XOCTL1, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @b43_radio_write(%struct.b43_wldev* %190, i32 %193, i32 47)
  br label %195

195:                                              ; preds = %184, %173
  %196 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @B2055_XOCTL2, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @b43_radio_write(%struct.b43_wldev* %196, i32 %199, i32 0)
  br label %266

201:                                              ; preds = %42
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @B2055_CAL_RVARCTL, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @b43_radio_write(%struct.b43_wldev* %202, i32 %205, i32 6)
  %207 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @B2055_CAL_LPOCTL, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @b43_radio_write(%struct.b43_wldev* %207, i32 %210, i32 64)
  %212 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @B2055_CAL_TS, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @b43_radio_write(%struct.b43_wldev* %212, i32 %215, i32 85)
  %217 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @B2055_CAL_RCCALRTS, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @b43_radio_write(%struct.b43_wldev* %217, i32 %220, i32 0)
  %222 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @B2055_CAL_RCALRTS, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @b43_radio_write(%struct.b43_wldev* %222, i32 %225, i32 0)
  %227 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @B2055_XOCTL1, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @b43_radio_write(%struct.b43_wldev* %227, i32 %230, i32 0)
  %232 = load %struct.b43_phy_n*, %struct.b43_phy_n** %4, align 8
  %233 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %254

236:                                              ; preds = %201
  %237 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* @B2055_PADDRV, align 4
  %240 = or i32 %238, %239
  %241 = call i32 @b43_radio_write(%struct.b43_wldev* %237, i32 %240, i32 6)
  %242 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @B2055_XOCTL2, align 4
  %245 = or i32 %243, %244
  %246 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %247 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp slt i32 %249, 5
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 17, i32 1
  %253 = call i32 @b43_radio_write(%struct.b43_wldev* %242, i32 %245, i32 %252)
  br label %265

254:                                              ; preds = %201
  %255 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* @B2055_PADDRV, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @b43_radio_write(%struct.b43_wldev* %255, i32 %258, i32 0)
  %260 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* @B2055_XOCTL2, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @b43_radio_write(%struct.b43_wldev* %260, i32 %263, i32 0)
  br label %265

265:                                              ; preds = %254, %236
  br label %266

266:                                              ; preds = %265, %195
  %267 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @B2055_XOREGUL, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @b43_radio_write(%struct.b43_wldev* %267, i32 %270, i32 0)
  %272 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* @B2055_XOMISC, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @b43_radio_write(%struct.b43_wldev* %272, i32 %275, i32 0)
  %277 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @B2055_PLL_LFC1, align 4
  %280 = or i32 %278, %279
  %281 = call i32 @b43_radio_write(%struct.b43_wldev* %277, i32 %280, i32 0)
  br label %282

282:                                              ; preds = %266
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  br label %39

285:                                              ; preds = %39
  br label %370

286:                                              ; preds = %33
  %287 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %288 = load i32, i32* @B2055_C1_TX_RF_IQCAL1, align 4
  %289 = call i32 @b43_radio_read(%struct.b43_wldev* %287, i32 %288)
  %290 = load i32*, i32** %5, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  store i32 %289, i32* %291, align 4
  %292 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %293 = load i32, i32* @B2055_C1_TX_RF_IQCAL1, align 4
  %294 = call i32 @b43_radio_write(%struct.b43_wldev* %292, i32 %293, i32 41)
  %295 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %296 = load i32, i32* @B2055_C1_TX_RF_IQCAL2, align 4
  %297 = call i32 @b43_radio_read(%struct.b43_wldev* %295, i32 %296)
  %298 = load i32*, i32** %5, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  store i32 %297, i32* %299, align 4
  %300 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %301 = load i32, i32* @B2055_C1_TX_RF_IQCAL2, align 4
  %302 = call i32 @b43_radio_write(%struct.b43_wldev* %300, i32 %301, i32 84)
  %303 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %304 = load i32, i32* @B2055_C2_TX_RF_IQCAL1, align 4
  %305 = call i32 @b43_radio_read(%struct.b43_wldev* %303, i32 %304)
  %306 = load i32*, i32** %5, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  store i32 %305, i32* %307, align 4
  %308 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %309 = load i32, i32* @B2055_C2_TX_RF_IQCAL1, align 4
  %310 = call i32 @b43_radio_write(%struct.b43_wldev* %308, i32 %309, i32 41)
  %311 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %312 = load i32, i32* @B2055_C2_TX_RF_IQCAL2, align 4
  %313 = call i32 @b43_radio_read(%struct.b43_wldev* %311, i32 %312)
  %314 = load i32*, i32** %5, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 3
  store i32 %313, i32* %315, align 4
  %316 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %317 = load i32, i32* @B2055_C2_TX_RF_IQCAL2, align 4
  %318 = call i32 @b43_radio_write(%struct.b43_wldev* %316, i32 %317, i32 84)
  %319 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %320 = load i32, i32* @B2055_C1_PWRDET_RXTX, align 4
  %321 = call i32 @b43_radio_read(%struct.b43_wldev* %319, i32 %320)
  %322 = load i32*, i32** %5, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 3
  store i32 %321, i32* %323, align 4
  %324 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %325 = load i32, i32* @B2055_C2_PWRDET_RXTX, align 4
  %326 = call i32 @b43_radio_read(%struct.b43_wldev* %324, i32 %325)
  %327 = load i32*, i32** %5, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 4
  store i32 %326, i32* %328, align 4
  %329 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %330 = load i32, i32* @B43_NPHY_BANDCTL, align 4
  %331 = call i32 @b43_phy_read(%struct.b43_wldev* %329, i32 %330)
  %332 = load i32, i32* @B43_NPHY_BANDCTL_5GHZ, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %342, label %335

335:                                              ; preds = %286
  %336 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %337 = load i32, i32* @B2055_C1_PWRDET_RXTX, align 4
  %338 = call i32 @b43_radio_write(%struct.b43_wldev* %336, i32 %337, i32 4)
  %339 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %340 = load i32, i32* @B2055_C2_PWRDET_RXTX, align 4
  %341 = call i32 @b43_radio_write(%struct.b43_wldev* %339, i32 %340, i32 4)
  br label %349

342:                                              ; preds = %286
  %343 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %344 = load i32, i32* @B2055_C1_PWRDET_RXTX, align 4
  %345 = call i32 @b43_radio_write(%struct.b43_wldev* %343, i32 %344, i32 32)
  %346 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %347 = load i32, i32* @B2055_C2_PWRDET_RXTX, align 4
  %348 = call i32 @b43_radio_write(%struct.b43_wldev* %346, i32 %347, i32 32)
  br label %349

349:                                              ; preds = %342, %335
  %350 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %351 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp slt i32 %353, 2
  br i1 %354, label %355, label %362

355:                                              ; preds = %349
  %356 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %357 = load i32, i32* @B2055_C1_TX_BB_MXGM, align 4
  %358 = call i32 @b43_radio_set(%struct.b43_wldev* %356, i32 %357, i32 32)
  %359 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %360 = load i32, i32* @B2055_C2_TX_BB_MXGM, align 4
  %361 = call i32 @b43_radio_set(%struct.b43_wldev* %359, i32 %360, i32 32)
  br label %369

362:                                              ; preds = %349
  %363 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %364 = load i32, i32* @B2055_C1_TX_BB_MXGM, align 4
  %365 = call i32 @b43_radio_mask(%struct.b43_wldev* %363, i32 %364, i32 -33)
  %366 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %367 = load i32, i32* @B2055_C2_TX_BB_MXGM, align 4
  %368 = call i32 @b43_radio_mask(%struct.b43_wldev* %366, i32 %367, i32 -33)
  br label %369

369:                                              ; preds = %362, %355
  br label %370

370:                                              ; preds = %369, %285
  br label %371

371:                                              ; preds = %370, %30
  br label %372

372:                                              ; preds = %371, %22
  ret void
}

declare dso_local i32 @b43_nphy_tx_cal_radio_setup_rev19(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_cal_radio_setup_rev7(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
