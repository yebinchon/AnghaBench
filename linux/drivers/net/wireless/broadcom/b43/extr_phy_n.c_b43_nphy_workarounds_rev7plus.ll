; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_workarounds_rev7plus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_workarounds_rev7plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy, %struct.TYPE_4__* }
%struct.b43_phy = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { i32, i64 }

@__const.b43_nphy_workarounds_rev7plus.tx2rx_events = private unnamed_addr constant [7 x i32] [i32 4, i32 3, i32 5, i32 2, i32 1, i32 8, i32 31], align 16
@__const.b43_nphy_workarounds_rev7plus.tx2rx_delays = private unnamed_addr constant [7 x i32] [i32 8, i32 4, i32 4, i32 4, i32 4, i32 6, i32 1], align 16
@__const.b43_nphy_workarounds_rev7plus.rx2tx_events_ipa = private unnamed_addr constant [9 x i32] [i32 0, i32 1, i32 2, i32 8, i32 5, i32 6, i32 15, i32 3, i32 31], align 16
@__const.b43_nphy_workarounds_rev7plus.rx2tx_delays_ipa = private unnamed_addr constant [9 x i32] [i32 8, i32 6, i32 6, i32 4, i32 4, i32 16, i32 43, i32 1, i32 1], align 16
@b43_nphy_workarounds_rev7plus.ntab7_15e_16e = internal constant [3 x i32] [i32 0, i32 271, i32 271], align 4
@__const.b43_nphy_workarounds_rev7plus.ntab7_138_146 = private unnamed_addr constant [2 x i32] [i32 17, i32 17], align 4
@__const.b43_nphy_workarounds_rev7plus.ntab7_133 = private unnamed_addr constant [3 x i32] [i32 119, i32 17, i32 17], align 4
@B43_NPHY_PHASETR_A0 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_A1 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_A2 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_B0 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_B1 = common dso_local global i32 0, align 4
@B43_NPHY_PHASETR_B2 = common dso_local global i32 0, align 4
@B43_NPHY_FINERX2_CGC = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN0 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN1 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN2 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN3 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN4 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN5 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN6 = common dso_local global i32 0, align 4
@B43_NPHY_FREQGAIN7 = common dso_local global i32 0, align 4
@B43_NPHY_FORCEFRONT0 = common dso_local global i32 0, align 4
@B43_NPHY_FORCEFRONT1 = common dso_local global i32 0, align 4
@B43_NPHY_TXTAILCNT = common dso_local global i32 0, align 4
@B43_NPHY_EPS_OVERRIDEI_0 = common dso_local global i32 0, align 4
@B43_NPHY_EPS_OVERRIDEI_1 = common dso_local global i32 0, align 4
@R2057_RCCAL_BCAP_VAL = common dso_local global i32 0, align 4
@R2057_RCCAL_SCAP_VAL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_BFH2_IPALVLSHIFT_3P3 = common dso_local global i32 0, align 4
@R2057_IPA2G_CASCONV_CORE0 = common dso_local global i32 0, align 4
@R2057_TXMIX2G_TUNE_BOOST_PU_CORE0 = common dso_local global i32 0, align 4
@R2057_IPA2G_BIAS_FILTER_CORE0 = common dso_local global i32 0, align 4
@R2057_PAD2G_IDACS_CORE0 = common dso_local global i32 0, align 4
@R2057_PAD2G_TUNE_PUS_CORE0 = common dso_local global i32 0, align 4
@R2057_IPA2G_IMAIN_CORE0 = common dso_local global i32 0, align 4
@R2057_PAD_BIAS_FILTER_BWS_CORE0 = common dso_local global i32 0, align 4
@R2057_BACKUP1_CORE0 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_C2 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_ENDROP_TLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_workarounds_rev7plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_workarounds_rev7plus(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca [7 x i32], align 16
  %6 = alloca [7 x i32], align 16
  %7 = alloca [9 x i32], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [2 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca [2 x i32], align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [2 x i32], align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [2 x i32], align 4
  %31 = alloca [2 x i32], align 4
  %32 = alloca [2 x i32], align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.ssb_sprom*, %struct.ssb_sprom** %39, align 8
  store %struct.ssb_sprom* %40, %struct.ssb_sprom** %3, align 8
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %41, i32 0, i32 1
  store %struct.b43_phy* %42, %struct.b43_phy** %4, align 8
  %43 = bitcast [7 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([7 x i32]* @__const.b43_nphy_workarounds_rev7plus.tx2rx_events to i8*), i64 28, i1 false)
  %44 = bitcast [7 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %44, i8* align 16 bitcast ([7 x i32]* @__const.b43_nphy_workarounds_rev7plus.tx2rx_delays to i8*), i64 28, i1 false)
  %45 = bitcast [9 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 16 bitcast ([9 x i32]* @__const.b43_nphy_workarounds_rev7plus.rx2tx_events_ipa to i8*), i64 36, i1 false)
  %46 = bitcast [9 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %46, i8* align 16 bitcast ([9 x i32]* @__const.b43_nphy_workarounds_rev7plus.rx2tx_delays_ipa to i8*), i64 36, i1 false)
  %47 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 bitcast ([2 x i32]* @__const.b43_nphy_workarounds_rev7plus.ntab7_138_146 to i8*), i64 8, i1 false)
  %48 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 bitcast ([3 x i32]* @__const.b43_nphy_workarounds_rev7plus.ntab7_133 to i8*), i64 12, i1 false)
  store i32 0, i32* %22, align 4
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = load i32, i32* @B43_NPHY_PHASETR_A0, align 4
  %51 = call i32 @b43_phy_write(%struct.b43_wldev* %49, i32 %50, i32 293)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = load i32, i32* @B43_NPHY_PHASETR_A1, align 4
  %54 = call i32 @b43_phy_write(%struct.b43_wldev* %52, i32 %53, i32 435)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B43_NPHY_PHASETR_A2, align 4
  %57 = call i32 @b43_phy_write(%struct.b43_wldev* %55, i32 %56, i32 261)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = load i32, i32* @B43_NPHY_PHASETR_B0, align 4
  %60 = call i32 @b43_phy_write(%struct.b43_wldev* %58, i32 %59, i32 366)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B43_NPHY_PHASETR_B1, align 4
  %63 = call i32 @b43_phy_write(%struct.b43_wldev* %61, i32 %62, i32 205)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @B43_NPHY_PHASETR_B2, align 4
  %66 = call i32 @b43_phy_write(%struct.b43_wldev* %64, i32 %65, i32 32)
  %67 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %68 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 7
  br i1 %70, label %71, label %123

71:                                               ; preds = %1
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = load i32, i32* @B43_NPHY_FINERX2_CGC, align 4
  %74 = call i32 @b43_phy_set(%struct.b43_wldev* %72, i32 %73, i32 16)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_NPHY_FREQGAIN0, align 4
  %77 = call i32 @b43_phy_maskset(%struct.b43_wldev* %75, i32 %76, i32 65408, i32 32)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %79 = load i32, i32* @B43_NPHY_FREQGAIN0, align 4
  %80 = call i32 @b43_phy_maskset(%struct.b43_wldev* %78, i32 %79, i32 33023, i32 9984)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = load i32, i32* @B43_NPHY_FREQGAIN1, align 4
  %83 = call i32 @b43_phy_maskset(%struct.b43_wldev* %81, i32 %82, i32 65408, i32 46)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %85 = load i32, i32* @B43_NPHY_FREQGAIN1, align 4
  %86 = call i32 @b43_phy_maskset(%struct.b43_wldev* %84, i32 %85, i32 33023, i32 13056)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = load i32, i32* @B43_NPHY_FREQGAIN2, align 4
  %89 = call i32 @b43_phy_maskset(%struct.b43_wldev* %87, i32 %88, i32 65408, i32 55)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %91 = load i32, i32* @B43_NPHY_FREQGAIN2, align 4
  %92 = call i32 @b43_phy_maskset(%struct.b43_wldev* %90, i32 %91, i32 33023, i32 14848)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = load i32, i32* @B43_NPHY_FREQGAIN3, align 4
  %95 = call i32 @b43_phy_maskset(%struct.b43_wldev* %93, i32 %94, i32 65408, i32 60)
  %96 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %97 = load i32, i32* @B43_NPHY_FREQGAIN3, align 4
  %98 = call i32 @b43_phy_maskset(%struct.b43_wldev* %96, i32 %97, i32 33023, i32 15872)
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = load i32, i32* @B43_NPHY_FREQGAIN4, align 4
  %101 = call i32 @b43_phy_maskset(%struct.b43_wldev* %99, i32 %100, i32 65408, i32 62)
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = load i32, i32* @B43_NPHY_FREQGAIN4, align 4
  %104 = call i32 @b43_phy_maskset(%struct.b43_wldev* %102, i32 %103, i32 33023, i32 16128)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = load i32, i32* @B43_NPHY_FREQGAIN5, align 4
  %107 = call i32 @b43_phy_maskset(%struct.b43_wldev* %105, i32 %106, i32 65408, i32 64)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = load i32, i32* @B43_NPHY_FREQGAIN5, align 4
  %110 = call i32 @b43_phy_maskset(%struct.b43_wldev* %108, i32 %109, i32 33023, i32 16384)
  %111 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %112 = load i32, i32* @B43_NPHY_FREQGAIN6, align 4
  %113 = call i32 @b43_phy_maskset(%struct.b43_wldev* %111, i32 %112, i32 65408, i32 64)
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = load i32, i32* @B43_NPHY_FREQGAIN6, align 4
  %116 = call i32 @b43_phy_maskset(%struct.b43_wldev* %114, i32 %115, i32 33023, i32 16384)
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %118 = load i32, i32* @B43_NPHY_FREQGAIN7, align 4
  %119 = call i32 @b43_phy_maskset(%struct.b43_wldev* %117, i32 %118, i32 65408, i32 64)
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %121 = load i32, i32* @B43_NPHY_FREQGAIN7, align 4
  %122 = call i32 @b43_phy_maskset(%struct.b43_wldev* %120, i32 %121, i32 33023, i32 16384)
  br label %123

123:                                              ; preds = %71, %1
  %124 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %125 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %126, 16
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %130 = load i32, i32* @B43_NPHY_FORCEFRONT0, align 4
  %131 = call i32 @b43_phy_write(%struct.b43_wldev* %129, i32 %130, i32 2047)
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = load i32, i32* @B43_NPHY_FORCEFRONT1, align 4
  %134 = call i32 @b43_phy_write(%struct.b43_wldev* %132, i32 %133, i32 2047)
  br label %148

135:                                              ; preds = %123
  %136 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %137 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sle i32 %138, 8
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %142 = load i32, i32* @B43_NPHY_FORCEFRONT0, align 4
  %143 = call i32 @b43_phy_write(%struct.b43_wldev* %141, i32 %142, i32 432)
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = load i32, i32* @B43_NPHY_FORCEFRONT1, align 4
  %146 = call i32 @b43_phy_write(%struct.b43_wldev* %144, i32 %145, i32 432)
  br label %147

147:                                              ; preds = %140, %135
  br label %148

148:                                              ; preds = %147, %128
  %149 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %150 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sge i32 %151, 16
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %155 = load i32, i32* @B43_NPHY_TXTAILCNT, align 4
  %156 = call i32 @b43_phy_maskset(%struct.b43_wldev* %154, i32 %155, i32 -256, i32 160)
  br label %167

157:                                              ; preds = %148
  %158 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %159 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp sge i32 %160, 8
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %164 = load i32, i32* @B43_NPHY_TXTAILCNT, align 4
  %165 = call i32 @b43_phy_maskset(%struct.b43_wldev* %163, i32 %164, i32 -256, i32 114)
  br label %166

166:                                              ; preds = %162, %157
  br label %167

167:                                              ; preds = %166, %153
  %168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %169 = call i32 @B43_NTAB16(i32 8, i32 0)
  %170 = call i32 @b43_ntab_write(%struct.b43_wldev* %168, i32 %169, i32 2)
  %171 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %172 = call i32 @B43_NTAB16(i32 8, i32 16)
  %173 = call i32 @b43_ntab_write(%struct.b43_wldev* %171, i32 %172, i32 2)
  %174 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %175 = call i32 @B43_NTAB32(i32 30, i32 0)
  %176 = call i32 @b43_ntab_read(%struct.b43_wldev* %174, i32 %175)
  store i32 %176, i32* %27, align 4
  %177 = load i32, i32* %27, align 4
  %178 = and i32 %177, 16777215
  store i32 %178, i32* %27, align 4
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %180 = call i32 @B43_NTAB32(i32 30, i32 0)
  %181 = load i32, i32* %27, align 4
  %182 = call i32 @b43_ntab_write(%struct.b43_wldev* %179, i32 %180, i32 %181)
  %183 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %184 = call i32 @B43_NTAB16(i32 7, i32 349)
  %185 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %183, i32 %184, i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @b43_nphy_workarounds_rev7plus.ntab7_15e_16e, i64 0, i64 0))
  %186 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %187 = call i32 @B43_NTAB16(i32 7, i32 365)
  %188 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %186, i32 %187, i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @b43_nphy_workarounds_rev7plus.ntab7_15e_16e, i64 0, i64 0))
  %189 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %190 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %191 = getelementptr inbounds [7 x i32], [7 x i32]* %6, i64 0, i64 0
  %192 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %193 = call i32 @ARRAY_SIZE(i32* %192)
  %194 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %189, i32 1, i32* %190, i32* %191, i32 %193)
  %195 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %196 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %167
  %199 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %200 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %201 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %202 = getelementptr inbounds [9 x i32], [9 x i32]* %7, i64 0, i64 0
  %203 = call i32 @ARRAY_SIZE(i32* %202)
  %204 = call i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev* %199, i32 0, i32* %200, i32* %201, i32 %203)
  br label %205

205:                                              ; preds = %198, %167
  %206 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %207 = load i32, i32* @B43_NPHY_EPS_OVERRIDEI_0, align 4
  %208 = call i32 @b43_phy_maskset(%struct.b43_wldev* %206, i32 %207, i32 16383, i32 16384)
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = load i32, i32* @B43_NPHY_EPS_OVERRIDEI_1, align 4
  %211 = call i32 @b43_phy_maskset(%struct.b43_wldev* %209, i32 %210, i32 16383, i32 16384)
  store i32 0, i32* %28, align 4
  br label %212

212:                                              ; preds = %240, %205
  %213 = load i32, i32* %28, align 4
  %214 = icmp slt i32 %213, 2
  br i1 %214, label %215, label %243

215:                                              ; preds = %212
  %216 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %217 = load i32, i32* %28, align 4
  %218 = mul nsw i32 %217, 16
  %219 = add nsw i32 340, %218
  %220 = call i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev* %216, i32 %219)
  %221 = load i32, i32* %28, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %222
  store i32 %220, i32* %223, align 4
  %224 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %225 = load i32, i32* %28, align 4
  %226 = mul nsw i32 %225, 16
  %227 = add nsw i32 345, %226
  %228 = call i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev* %224, i32 %227)
  %229 = load i32, i32* %28, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %230
  store i32 %228, i32* %231, align 4
  %232 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %233 = load i32, i32* %28, align 4
  %234 = mul nsw i32 %233, 16
  %235 = add nsw i32 338, %234
  %236 = call i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev* %232, i32 %235)
  %237 = load i32, i32* %28, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %238
  store i32 %236, i32* %239, align 4
  br label %240

240:                                              ; preds = %215
  %241 = load i32, i32* %28, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %28, align 4
  br label %212

243:                                              ; preds = %212
  %244 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %245 = load i32, i32* @R2057_RCCAL_BCAP_VAL, align 4
  %246 = call i32 @b43_radio_read(%struct.b43_wldev* %244, i32 %245)
  store i32 %246, i32* %14, align 4
  %247 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %248 = load i32, i32* @R2057_RCCAL_SCAP_VAL, align 4
  %249 = call i32 @b43_radio_read(%struct.b43_wldev* %247, i32 %248)
  store i32 %249, i32* %18, align 4
  %250 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %251 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %492

253:                                              ; preds = %243
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %255 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i64 @b43_current_band(i32 %256)
  %258 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  store i32 %260, i32* %29, align 4
  %261 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %262 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  switch i32 %263, label %491 [
    i32 5, label %264
    i32 7, label %311
    i32 8, label %311
    i32 9, label %367
    i32 14, label %443
  ]

264:                                              ; preds = %253
  %265 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %266 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, 8
  br i1 %268, label %269, label %304

269:                                              ; preds = %264
  %270 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %271 = call i64 @b43_is_40mhz(%struct.b43_wldev* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %304

273:                                              ; preds = %269
  store i32 0, i32* %28, align 4
  br label %274

274:                                              ; preds = %300, %273
  %275 = load i32, i32* %28, align 4
  %276 = icmp slt i32 %275, 2
  br i1 %276, label %277, label %303

277:                                              ; preds = %274
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* %28, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %280
  store i32 %278, i32* %281, align 4
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* %28, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %284
  store i32 %282, i32* %285, align 4
  %286 = load i32, i32* %18, align 4
  %287 = load i32, i32* %28, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %288
  store i32 %286, i32* %289, align 4
  %290 = load i32, i32* %14, align 4
  %291 = load i32, i32* %28, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %292
  store i32 %290, i32* %293, align 4
  %294 = load i32, i32* %28, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %295
  store i32 12, i32* %296, align 4
  %297 = load i32, i32* %28, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %298
  store i32 12, i32* %299, align 4
  br label %300

300:                                              ; preds = %277
  %301 = load i32, i32* %28, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %28, align 4
  br label %274

303:                                              ; preds = %274
  store i32 1, i32* %22, align 4
  br label %304

304:                                              ; preds = %303, %269, %264
  %305 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %306 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp eq i32 %307, 9
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %310

310:                                              ; preds = %309, %304
  br label %491

311:                                              ; preds = %253, %253
  store i32 0, i32* %28, align 4
  br label %312

312:                                              ; preds = %363, %311
  %313 = load i32, i32* %28, align 4
  %314 = icmp slt i32 %313, 2
  br i1 %314, label %315, label %366

315:                                              ; preds = %312
  %316 = load i32, i32* %18, align 4
  %317 = load i32, i32* %28, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %318
  store i32 %316, i32* %319, align 4
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* %28, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %322
  store i32 %320, i32* %323, align 4
  %324 = load i32, i32* %28, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %325
  store i32 4, i32* %326, align 4
  %327 = load i32, i32* %28, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %328
  store i32 1, i32* %329, align 4
  %330 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %331 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i64 @b43_current_band(i32 %332)
  %334 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %349

336:                                              ; preds = %315
  %337 = load i32, i32* %28, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %338
  store i32 12, i32* %339, align 4
  %340 = load i32, i32* %28, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %341
  store i32 12, i32* %342, align 4
  %343 = load i32, i32* %28, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %344
  store i32 10, i32* %345, align 4
  %346 = load i32, i32* %28, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %347
  store i32 10, i32* %348, align 4
  br label %362

349:                                              ; preds = %315
  %350 = load i32, i32* %28, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %351
  store i32 20, i32* %352, align 4
  %353 = load i32, i32* %28, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %354
  store i32 20, i32* %355, align 4
  %356 = load i32, i32* %28, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %357
  store i32 15, i32* %358, align 4
  %359 = load i32, i32* %28, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %360
  store i32 15, i32* %361, align 4
  br label %362

362:                                              ; preds = %349, %336
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %28, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %28, align 4
  br label %312

366:                                              ; preds = %312
  store i32 1, i32* %22, align 4
  br label %491

367:                                              ; preds = %253
  store i32 0, i32* %28, align 4
  br label %368

368:                                              ; preds = %439, %367
  %369 = load i32, i32* %28, align 4
  %370 = icmp slt i32 %369, 2
  br i1 %370, label %371, label %442

371:                                              ; preds = %368
  %372 = load i32, i32* %14, align 4
  %373 = load i32, i32* %28, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %374
  store i32 %372, i32* %375, align 4
  %376 = load i32, i32* %18, align 4
  %377 = load i32, i32* %28, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %378
  store i32 %376, i32* %379, align 4
  %380 = load i32, i32* %28, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %381
  store i32 1, i32* %382, align 4
  %383 = load i32, i32* %29, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %396

385:                                              ; preds = %371
  %386 = load i32, i32* %14, align 4
  %387 = add nsw i32 %386, 13
  %388 = load i32, i32* %28, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %389
  store i32 %387, i32* %390, align 4
  %391 = load i32, i32* %18, align 4
  %392 = add nsw i32 %391, 15
  %393 = load i32, i32* %28, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %394
  store i32 %392, i32* %395, align 4
  br label %407

396:                                              ; preds = %371
  %397 = load i32, i32* %14, align 4
  %398 = add nsw i32 %397, 14
  %399 = load i32, i32* %28, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %400
  store i32 %398, i32* %401, align 4
  %402 = load i32, i32* %18, align 4
  %403 = add nsw i32 %402, 15
  %404 = load i32, i32* %28, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %405
  store i32 %403, i32* %406, align 4
  br label %407

407:                                              ; preds = %396, %385
  %408 = load i32, i32* %28, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %409
  store i32 4, i32* %410, align 4
  %411 = load i32, i32* %29, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %424

413:                                              ; preds = %407
  %414 = load i32, i32* %14, align 4
  %415 = sub nsw i32 %414, 7
  %416 = load i32, i32* %28, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %417
  store i32 %415, i32* %418, align 4
  %419 = load i32, i32* %18, align 4
  %420 = sub nsw i32 %419, 5
  %421 = load i32, i32* %28, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %422
  store i32 %420, i32* %423, align 4
  br label %435

424:                                              ; preds = %407
  %425 = load i32, i32* %14, align 4
  %426 = add nsw i32 %425, 2
  %427 = load i32, i32* %28, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %428
  store i32 %426, i32* %429, align 4
  %430 = load i32, i32* %18, align 4
  %431 = add nsw i32 %430, 4
  %432 = load i32, i32* %28, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %433
  store i32 %431, i32* %434, align 4
  br label %435

435:                                              ; preds = %424, %413
  %436 = load i32, i32* %28, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %437
  store i32 4, i32* %438, align 4
  br label %439

439:                                              ; preds = %435
  %440 = load i32, i32* %28, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %28, align 4
  br label %368

442:                                              ; preds = %368
  store i32 1, i32* %22, align 4
  br label %491

443:                                              ; preds = %253
  store i32 0, i32* %28, align 4
  br label %444

444:                                              ; preds = %459, %443
  %445 = load i32, i32* %28, align 4
  %446 = icmp slt i32 %445, 2
  br i1 %446, label %447, label %462

447:                                              ; preds = %444
  %448 = load i32, i32* %14, align 4
  %449 = load i32, i32* %28, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %450
  store i32 %448, i32* %451, align 4
  %452 = load i32, i32* %18, align 4
  %453 = load i32, i32* %28, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %454
  store i32 %452, i32* %455, align 4
  %456 = load i32, i32* %28, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %457
  store i32 1, i32* %458, align 4
  br label %459

459:                                              ; preds = %447
  %460 = load i32, i32* %28, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %28, align 4
  br label %444

462:                                              ; preds = %444
  %463 = load i32, i32* %14, align 4
  %464 = add nsw i32 %463, 20
  %465 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %464, i32* %465, align 4
  %466 = load i32, i32* %18, align 4
  %467 = add nsw i32 %466, 20
  %468 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  store i32 %467, i32* %468, align 4
  %469 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 3, i32* %469, align 4
  %470 = load i32, i32* %14, align 4
  %471 = add nsw i32 %470, 16
  %472 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %471, i32* %472, align 4
  %473 = load i32, i32* %18, align 4
  %474 = add nsw i32 %473, 16
  %475 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  store i32 %474, i32* %475, align 4
  %476 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 3, i32* %476, align 4
  %477 = load i32, i32* %14, align 4
  %478 = add nsw i32 %477, 20
  %479 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %478, i32* %479, align 4
  %480 = load i32, i32* %18, align 4
  %481 = add nsw i32 %480, 20
  %482 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  store i32 %481, i32* %482, align 4
  %483 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 4, i32* %483, align 4
  %484 = load i32, i32* %14, align 4
  %485 = add nsw i32 %484, 10
  %486 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %485, i32* %486, align 4
  %487 = load i32, i32* %18, align 4
  %488 = add nsw i32 %487, 10
  %489 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  store i32 %488, i32* %489, align 4
  %490 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 4, i32* %490, align 4
  store i32 1, i32* %22, align 4
  br label %491

491:                                              ; preds = %253, %462, %442, %366, %310
  br label %533

492:                                              ; preds = %243
  %493 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %494 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = icmp eq i32 %495, 5
  br i1 %496, label %497, label %532

497:                                              ; preds = %492
  store i32 0, i32* %28, align 4
  br label %498

498:                                              ; preds = %528, %497
  %499 = load i32, i32* %28, align 4
  %500 = icmp slt i32 %499, 2
  br i1 %500, label %501, label %531

501:                                              ; preds = %498
  %502 = load i32, i32* %28, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %503
  store i32 1, i32* %504, align 4
  %505 = load i32, i32* %28, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %506
  store i32 3, i32* %507, align 4
  %508 = load i32, i32* %18, align 4
  %509 = load i32, i32* %28, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %510
  store i32 %508, i32* %511, align 4
  %512 = load i32, i32* %14, align 4
  %513 = load i32, i32* %28, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %514
  store i32 %512, i32* %515, align 4
  %516 = load i32, i32* %28, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %517
  store i32 17, i32* %518, align 4
  %519 = load i32, i32* %28, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %520
  store i32 17, i32* %521, align 4
  %522 = load i32, i32* %28, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %523
  store i32 19, i32* %524, align 4
  %525 = load i32, i32* %28, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %526
  store i32 19, i32* %527, align 4
  br label %528

528:                                              ; preds = %501
  %529 = load i32, i32* %28, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %28, align 4
  br label %498

531:                                              ; preds = %498
  store i32 1, i32* %22, align 4
  br label %532

532:                                              ; preds = %531, %492
  br label %533

533:                                              ; preds = %532, %491
  %534 = load i32, i32* %22, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %747

536:                                              ; preds = %533
  store i32 1, i32* %33, align 4
  store i32 0, i32* %28, align 4
  br label %537

537:                                              ; preds = %655, %536
  %538 = load i32, i32* %28, align 4
  %539 = icmp slt i32 %538, 2
  br i1 %539, label %540, label %658

540:                                              ; preds = %537
  %541 = load i32, i32* %28, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = call i32 @clamp_val(i32 %544, i32 0, i32 31)
  %546 = load i32, i32* %28, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %547
  store i32 %545, i32* %548, align 4
  %549 = load i32, i32* %28, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = call i32 @clamp_val(i32 %552, i32 0, i32 31)
  %554 = load i32, i32* %28, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %555
  store i32 %553, i32* %556, align 4
  %557 = load i32, i32* %28, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = call i32 @clamp_val(i32 %560, i32 0, i32 31)
  %562 = load i32, i32* %28, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %563
  store i32 %561, i32* %564, align 4
  %565 = load i32, i32* %28, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %566
  %568 = load i32, i32* %567, align 4
  %569 = call i32 @clamp_val(i32 %568, i32 0, i32 31)
  %570 = load i32, i32* %28, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %571
  store i32 %569, i32* %572, align 4
  %573 = load i32, i32* %28, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = call i32 @clamp_val(i32 %576, i32 0, i32 31)
  %578 = load i32, i32* %28, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %579
  store i32 %577, i32* %580, align 4
  %581 = load i32, i32* %28, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = call i32 @clamp_val(i32 %584, i32 0, i32 31)
  %586 = load i32, i32* %28, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %587
  store i32 %585, i32* %588, align 4
  %589 = load i32, i32* %33, align 4
  %590 = shl i32 %589, 13
  %591 = load i32, i32* %28, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = shl i32 %594, 8
  %596 = or i32 %590, %595
  %597 = load i32, i32* %28, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = shl i32 %600, 3
  %602 = or i32 %596, %601
  %603 = load i32, i32* %28, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = or i32 %602, %606
  %608 = load i32, i32* %28, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 %609
  store i32 %607, i32* %610, align 4
  %611 = load i32, i32* %33, align 4
  %612 = shl i32 %611, 13
  %613 = load i32, i32* %28, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = shl i32 %616, 8
  %618 = or i32 %612, %617
  %619 = load i32, i32* %28, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = shl i32 %622, 3
  %624 = or i32 %618, %623
  %625 = load i32, i32* %28, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %626
  %628 = load i32, i32* %627, align 4
  %629 = or i32 %624, %628
  %630 = load i32, i32* %28, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %631
  store i32 %629, i32* %632, align 4
  %633 = load i32, i32* %33, align 4
  %634 = shl i32 %633, 13
  %635 = load i32, i32* %28, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 %636
  %638 = load i32, i32* %637, align 4
  %639 = shl i32 %638, 8
  %640 = or i32 %634, %639
  %641 = load i32, i32* %28, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %642
  %644 = load i32, i32* %643, align 4
  %645 = shl i32 %644, 3
  %646 = or i32 %640, %645
  %647 = load i32, i32* %28, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = or i32 %646, %650
  %652 = load i32, i32* %28, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %653
  store i32 %651, i32* %654, align 4
  br label %655

655:                                              ; preds = %540
  %656 = load i32, i32* %28, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %28, align 4
  br label %537

658:                                              ; preds = %537
  store i32 0, i32* %28, align 4
  br label %659

659:                                              ; preds = %743, %658
  %660 = load i32, i32* %28, align 4
  %661 = icmp slt i32 %660, 2
  br i1 %661, label %662, label %746

662:                                              ; preds = %659
  %663 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %664 = load i32, i32* %28, align 4
  %665 = mul nsw i32 %664, 16
  %666 = add nsw i32 338, %665
  %667 = call i32 @B43_NTAB16(i32 7, i32 %666)
  %668 = load i32, i32* %28, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 %669
  %671 = load i32, i32* %670, align 4
  %672 = call i32 @b43_ntab_write(%struct.b43_wldev* %663, i32 %667, i32 %671)
  %673 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %674 = load i32, i32* %28, align 4
  %675 = mul nsw i32 %674, 16
  %676 = add nsw i32 339, %675
  %677 = call i32 @B43_NTAB16(i32 7, i32 %676)
  %678 = load i32, i32* %28, align 4
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %679
  %681 = load i32, i32* %680, align 4
  %682 = call i32 @b43_ntab_write(%struct.b43_wldev* %673, i32 %677, i32 %681)
  %683 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %684 = load i32, i32* %28, align 4
  %685 = mul nsw i32 %684, 16
  %686 = add nsw i32 340, %685
  %687 = call i32 @B43_NTAB16(i32 7, i32 %686)
  %688 = load i32, i32* %28, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = call i32 @b43_ntab_write(%struct.b43_wldev* %683, i32 %687, i32 %691)
  %693 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %694 = load i32, i32* %28, align 4
  %695 = mul nsw i32 %694, 16
  %696 = add nsw i32 341, %695
  %697 = call i32 @B43_NTAB16(i32 7, i32 %696)
  %698 = load i32, i32* %28, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %699
  %701 = load i32, i32* %700, align 4
  %702 = call i32 @b43_ntab_write(%struct.b43_wldev* %693, i32 %697, i32 %701)
  %703 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %704 = load i32, i32* %28, align 4
  %705 = mul nsw i32 %704, 16
  %706 = add nsw i32 342, %705
  %707 = call i32 @B43_NTAB16(i32 7, i32 %706)
  %708 = load i32, i32* %28, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %709
  %711 = load i32, i32* %710, align 4
  %712 = call i32 @b43_ntab_write(%struct.b43_wldev* %703, i32 %707, i32 %711)
  %713 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %714 = load i32, i32* %28, align 4
  %715 = mul nsw i32 %714, 16
  %716 = add nsw i32 343, %715
  %717 = call i32 @B43_NTAB16(i32 7, i32 %716)
  %718 = load i32, i32* %28, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %719
  %721 = load i32, i32* %720, align 4
  %722 = call i32 @b43_ntab_write(%struct.b43_wldev* %713, i32 %717, i32 %721)
  %723 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %724 = load i32, i32* %28, align 4
  %725 = mul nsw i32 %724, 16
  %726 = add nsw i32 344, %725
  %727 = call i32 @B43_NTAB16(i32 7, i32 %726)
  %728 = load i32, i32* %28, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %729
  %731 = load i32, i32* %730, align 4
  %732 = call i32 @b43_ntab_write(%struct.b43_wldev* %723, i32 %727, i32 %731)
  %733 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %734 = load i32, i32* %28, align 4
  %735 = mul nsw i32 %734, 16
  %736 = add nsw i32 345, %735
  %737 = call i32 @B43_NTAB16(i32 7, i32 %736)
  %738 = load i32, i32* %28, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 %739
  %741 = load i32, i32* %740, align 4
  %742 = call i32 @b43_ntab_write(%struct.b43_wldev* %733, i32 %737, i32 %741)
  br label %743

743:                                              ; preds = %662
  %744 = load i32, i32* %28, align 4
  %745 = add nsw i32 %744, 1
  store i32 %745, i32* %28, align 4
  br label %659

746:                                              ; preds = %659
  br label %747

747:                                              ; preds = %746, %533
  %748 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %749 = call i32 @b43_phy_write(%struct.b43_wldev* %748, i32 815, i32 3)
  %750 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %751 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %750, i32 0, i32 1
  %752 = load i32, i32* %751, align 4
  %753 = icmp eq i32 %752, 4
  br i1 %753, label %759, label %754

754:                                              ; preds = %747
  %755 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %756 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %755, i32 0, i32 1
  %757 = load i32, i32* %756, align 4
  %758 = icmp eq i32 %757, 6
  br i1 %758, label %759, label %762

759:                                              ; preds = %754, %747
  %760 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %761 = call i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev* %760, i32 4, i32 1, i32 3, i32 0, i32 0)
  br label %762

762:                                              ; preds = %759, %754
  %763 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %764 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %763, i32 0, i32 1
  %765 = load i32, i32* %764, align 4
  %766 = icmp eq i32 %765, 3
  br i1 %766, label %777, label %767

767:                                              ; preds = %762
  %768 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %769 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %768, i32 0, i32 1
  %770 = load i32, i32* %769, align 4
  %771 = icmp eq i32 %770, 4
  br i1 %771, label %777, label %772

772:                                              ; preds = %767
  %773 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %774 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %773, i32 0, i32 1
  %775 = load i32, i32* %774, align 4
  %776 = icmp eq i32 %775, 6
  br i1 %776, label %777, label %841

777:                                              ; preds = %772, %767, %762
  %778 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %779 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %778, i32 0, i32 1
  %780 = load i64, i64* %779, align 8
  %781 = icmp ne i64 %780, 0
  br i1 %781, label %782, label %800

782:                                              ; preds = %777
  %783 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %784 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %783, i32 0, i32 0
  %785 = load i32, i32* %784, align 8
  %786 = load i32, i32* @B43_BFH2_IPALVLSHIFT_3P3, align 4
  %787 = and i32 %785, %786
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %800

789:                                              ; preds = %782
  %790 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %791 = call i32 @b43_radio_write(%struct.b43_wldev* %790, i32 5, i32 5)
  %792 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %793 = call i32 @b43_radio_write(%struct.b43_wldev* %792, i32 6, i32 48)
  %794 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %795 = call i32 @b43_radio_write(%struct.b43_wldev* %794, i32 7, i32 0)
  %796 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %797 = call i32 @b43_radio_set(%struct.b43_wldev* %796, i32 79, i32 1)
  %798 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %799 = call i32 @b43_radio_set(%struct.b43_wldev* %798, i32 212, i32 1)
  store i32 31, i32* %23, align 4
  store i32 111, i32* %24, align 4
  store i32 170, i32* %25, align 4
  br label %801

800:                                              ; preds = %782, %777
  store i32 43, i32* %23, align 4
  store i32 127, i32* %24, align 4
  store i32 238, i32* %25, align 4
  br label %801

801:                                              ; preds = %800, %789
  %802 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %803 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 8
  %805 = call i64 @b43_current_band(i32 %804)
  %806 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %807 = icmp eq i64 %805, %806
  br i1 %807, label %808, label %840

808:                                              ; preds = %801
  store i32 0, i32* %28, align 4
  br label %809

809:                                              ; preds = %836, %808
  %810 = load i32, i32* %28, align 4
  %811 = icmp slt i32 %810, 2
  br i1 %811, label %812, label %839

812:                                              ; preds = %809
  %813 = load i32, i32* %28, align 4
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %825

815:                                              ; preds = %812
  %816 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %817 = load i32, i32* %23, align 4
  %818 = call i32 @b43_radio_write(%struct.b43_wldev* %816, i32 95, i32 %817)
  %819 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %820 = load i32, i32* %24, align 4
  %821 = call i32 @b43_radio_write(%struct.b43_wldev* %819, i32 100, i32 %820)
  %822 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %823 = load i32, i32* %25, align 4
  %824 = call i32 @b43_radio_write(%struct.b43_wldev* %822, i32 102, i32 %823)
  br label %835

825:                                              ; preds = %812
  %826 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %827 = load i32, i32* %23, align 4
  %828 = call i32 @b43_radio_write(%struct.b43_wldev* %826, i32 232, i32 %827)
  %829 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %830 = load i32, i32* %24, align 4
  %831 = call i32 @b43_radio_write(%struct.b43_wldev* %829, i32 233, i32 %830)
  %832 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %833 = load i32, i32* %25, align 4
  %834 = call i32 @b43_radio_write(%struct.b43_wldev* %832, i32 235, i32 %833)
  br label %835

835:                                              ; preds = %825, %815
  br label %836

836:                                              ; preds = %835
  %837 = load i32, i32* %28, align 4
  %838 = add nsw i32 %837, 1
  store i32 %838, i32* %28, align 4
  br label %809

839:                                              ; preds = %809
  br label %840

840:                                              ; preds = %839, %801
  br label %841

841:                                              ; preds = %840, %772
  %842 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %843 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %842)
  %844 = icmp ne i64 %843, 0
  br i1 %844, label %845, label %1018

845:                                              ; preds = %841
  %846 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %847 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %846, i32 0, i32 0
  %848 = load i32, i32* %847, align 8
  %849 = call i64 @b43_current_band(i32 %848)
  %850 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %851 = icmp eq i64 %849, %850
  br i1 %851, label %852, label %992

852:                                              ; preds = %845
  %853 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %854 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %853, i32 0, i32 1
  %855 = load i32, i32* %854, align 4
  %856 = icmp eq i32 %855, 3
  br i1 %856, label %867, label %857

857:                                              ; preds = %852
  %858 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %859 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %858, i32 0, i32 1
  %860 = load i32, i32* %859, align 4
  %861 = icmp eq i32 %860, 4
  br i1 %861, label %867, label %862

862:                                              ; preds = %857
  %863 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %864 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %863, i32 0, i32 1
  %865 = load i32, i32* %864, align 4
  %866 = icmp eq i32 %865, 6
  br i1 %866, label %867, label %885

867:                                              ; preds = %862, %857, %852
  store i32 0, i32* %28, align 4
  br label %868

868:                                              ; preds = %881, %867
  %869 = load i32, i32* %28, align 4
  %870 = icmp slt i32 %869, 2
  br i1 %870, label %871, label %884

871:                                              ; preds = %868
  %872 = load i32, i32* %28, align 4
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %874, label %877

874:                                              ; preds = %871
  %875 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %876 = call i32 @b43_radio_write(%struct.b43_wldev* %875, i32 81, i32 127)
  br label %880

877:                                              ; preds = %871
  %878 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %879 = call i32 @b43_radio_write(%struct.b43_wldev* %878, i32 214, i32 127)
  br label %880

880:                                              ; preds = %877, %874
  br label %881

881:                                              ; preds = %880
  %882 = load i32, i32* %28, align 4
  %883 = add nsw i32 %882, 1
  store i32 %883, i32* %28, align 4
  br label %868

884:                                              ; preds = %868
  br label %885

885:                                              ; preds = %884, %862
  %886 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %887 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %886, i32 0, i32 1
  %888 = load i32, i32* %887, align 4
  switch i32 %888, label %991 [
    i32 3, label %889
    i32 7, label %923
    i32 8, label %923
    i32 14, label %938
  ]

889:                                              ; preds = %885
  store i32 0, i32* %28, align 4
  br label %890

890:                                              ; preds = %919, %889
  %891 = load i32, i32* %28, align 4
  %892 = icmp slt i32 %891, 2
  br i1 %892, label %893, label %922

893:                                              ; preds = %890
  %894 = load i32, i32* %28, align 4
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %907

896:                                              ; preds = %893
  %897 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %898 = call i32 @b43_radio_write(%struct.b43_wldev* %897, i32 100, i32 19)
  %899 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %900 = call i32 @b43_radio_write(%struct.b43_wldev* %899, i32 95, i32 31)
  %901 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %902 = call i32 @b43_radio_write(%struct.b43_wldev* %901, i32 102, i32 238)
  %903 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %904 = call i32 @b43_radio_write(%struct.b43_wldev* %903, i32 89, i32 138)
  %905 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %906 = call i32 @b43_radio_write(%struct.b43_wldev* %905, i32 128, i32 62)
  br label %918

907:                                              ; preds = %893
  %908 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %909 = call i32 @b43_radio_write(%struct.b43_wldev* %908, i32 105, i32 19)
  %910 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %911 = call i32 @b43_radio_write(%struct.b43_wldev* %910, i32 232, i32 31)
  %912 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %913 = call i32 @b43_radio_write(%struct.b43_wldev* %912, i32 235, i32 238)
  %914 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %915 = call i32 @b43_radio_write(%struct.b43_wldev* %914, i32 222, i32 138)
  %916 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %917 = call i32 @b43_radio_write(%struct.b43_wldev* %916, i32 261, i32 62)
  br label %918

918:                                              ; preds = %907, %896
  br label %919

919:                                              ; preds = %918
  %920 = load i32, i32* %28, align 4
  %921 = add nsw i32 %920, 1
  store i32 %921, i32* %28, align 4
  br label %890

922:                                              ; preds = %890
  br label %991

923:                                              ; preds = %885, %885
  %924 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %925 = call i64 @b43_is_40mhz(%struct.b43_wldev* %924)
  %926 = icmp ne i64 %925, 0
  br i1 %926, label %932, label %927

927:                                              ; preds = %923
  %928 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %929 = call i32 @b43_radio_write(%struct.b43_wldev* %928, i32 95, i32 20)
  %930 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %931 = call i32 @b43_radio_write(%struct.b43_wldev* %930, i32 232, i32 18)
  br label %937

932:                                              ; preds = %923
  %933 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %934 = call i32 @b43_radio_write(%struct.b43_wldev* %933, i32 95, i32 22)
  %935 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %936 = call i32 @b43_radio_write(%struct.b43_wldev* %935, i32 232, i32 22)
  br label %937

937:                                              ; preds = %932, %927
  br label %991

938:                                              ; preds = %885
  store i32 0, i32* %28, align 4
  br label %939

939:                                              ; preds = %987, %938
  %940 = load i32, i32* %28, align 4
  %941 = icmp slt i32 %940, 2
  br i1 %941, label %942, label %990

942:                                              ; preds = %939
  %943 = load i32, i32* %28, align 4
  %944 = icmp ne i32 %943, 0
  %945 = zext i1 %944 to i64
  %946 = select i1 %944, i32 133, i32 0
  store i32 %946, i32* %34, align 4
  %947 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %948 = load i32, i32* %34, align 4
  %949 = load i32, i32* @R2057_IPA2G_CASCONV_CORE0, align 4
  %950 = add nsw i32 %948, %949
  %951 = call i32 @b43_radio_write(%struct.b43_wldev* %947, i32 %950, i32 19)
  %952 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %953 = load i32, i32* %34, align 4
  %954 = load i32, i32* @R2057_TXMIX2G_TUNE_BOOST_PU_CORE0, align 4
  %955 = add nsw i32 %953, %954
  %956 = call i32 @b43_radio_write(%struct.b43_wldev* %952, i32 %955, i32 33)
  %957 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %958 = load i32, i32* %34, align 4
  %959 = load i32, i32* @R2057_IPA2G_BIAS_FILTER_CORE0, align 4
  %960 = add nsw i32 %958, %959
  %961 = call i32 @b43_radio_write(%struct.b43_wldev* %957, i32 %960, i32 255)
  %962 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %963 = load i32, i32* %34, align 4
  %964 = load i32, i32* @R2057_PAD2G_IDACS_CORE0, align 4
  %965 = add nsw i32 %963, %964
  %966 = call i32 @b43_radio_write(%struct.b43_wldev* %962, i32 %965, i32 136)
  %967 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %968 = load i32, i32* %34, align 4
  %969 = load i32, i32* @R2057_PAD2G_TUNE_PUS_CORE0, align 4
  %970 = add nsw i32 %968, %969
  %971 = call i32 @b43_radio_write(%struct.b43_wldev* %967, i32 %970, i32 35)
  %972 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %973 = load i32, i32* %34, align 4
  %974 = load i32, i32* @R2057_IPA2G_IMAIN_CORE0, align 4
  %975 = add nsw i32 %973, %974
  %976 = call i32 @b43_radio_write(%struct.b43_wldev* %972, i32 %975, i32 22)
  %977 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %978 = load i32, i32* %34, align 4
  %979 = load i32, i32* @R2057_PAD_BIAS_FILTER_BWS_CORE0, align 4
  %980 = add nsw i32 %978, %979
  %981 = call i32 @b43_radio_write(%struct.b43_wldev* %977, i32 %980, i32 62)
  %982 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %983 = load i32, i32* %34, align 4
  %984 = load i32, i32* @R2057_BACKUP1_CORE0, align 4
  %985 = add nsw i32 %983, %984
  %986 = call i32 @b43_radio_write(%struct.b43_wldev* %982, i32 %985, i32 16)
  br label %987

987:                                              ; preds = %942
  %988 = load i32, i32* %28, align 4
  %989 = add nsw i32 %988, 1
  store i32 %989, i32* %28, align 4
  br label %939

990:                                              ; preds = %939
  br label %991

991:                                              ; preds = %885, %990, %937, %922
  br label %1017

992:                                              ; preds = %845
  %993 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %994 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %993, i32 0, i32 2
  %995 = load %struct.TYPE_6__*, %struct.TYPE_6__** %994, align 8
  %996 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %995, i32 0, i32 0
  %997 = load %struct.TYPE_5__*, %struct.TYPE_5__** %996, align 8
  %998 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %997, i32 0, i32 0
  %999 = load i32, i32* %998, align 4
  store i32 %999, i32* %35, align 4
  %1000 = load i32, i32* %35, align 4
  %1001 = icmp sge i32 %1000, 5180
  br i1 %1001, label %1002, label %1005

1002:                                             ; preds = %992
  %1003 = load i32, i32* %35, align 4
  %1004 = icmp sle i32 %1003, 5230
  br i1 %1004, label %1011, label %1005

1005:                                             ; preds = %1002, %992
  %1006 = load i32, i32* %35, align 4
  %1007 = icmp sge i32 %1006, 5745
  br i1 %1007, label %1008, label %1016

1008:                                             ; preds = %1005
  %1009 = load i32, i32* %35, align 4
  %1010 = icmp sle i32 %1009, 5805
  br i1 %1010, label %1011, label %1016

1011:                                             ; preds = %1008, %1002
  %1012 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1013 = call i32 @b43_radio_write(%struct.b43_wldev* %1012, i32 125, i32 255)
  %1014 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1015 = call i32 @b43_radio_write(%struct.b43_wldev* %1014, i32 254, i32 255)
  br label %1016

1016:                                             ; preds = %1011, %1008, %1005
  br label %1017

1017:                                             ; preds = %1016, %991
  br label %1046

1018:                                             ; preds = %841
  %1019 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %1020 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %1019, i32 0, i32 1
  %1021 = load i32, i32* %1020, align 4
  %1022 = icmp ne i32 %1021, 5
  br i1 %1022, label %1023, label %1045

1023:                                             ; preds = %1018
  store i32 0, i32* %28, align 4
  br label %1024

1024:                                             ; preds = %1041, %1023
  %1025 = load i32, i32* %28, align 4
  %1026 = icmp slt i32 %1025, 2
  br i1 %1026, label %1027, label %1044

1027:                                             ; preds = %1024
  %1028 = load i32, i32* %28, align 4
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1030, label %1035

1030:                                             ; preds = %1027
  %1031 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1032 = call i32 @b43_radio_write(%struct.b43_wldev* %1031, i32 92, i32 97)
  %1033 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1034 = call i32 @b43_radio_write(%struct.b43_wldev* %1033, i32 81, i32 112)
  br label %1040

1035:                                             ; preds = %1027
  %1036 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1037 = call i32 @b43_radio_write(%struct.b43_wldev* %1036, i32 225, i32 97)
  %1038 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1039 = call i32 @b43_radio_write(%struct.b43_wldev* %1038, i32 214, i32 112)
  br label %1040

1040:                                             ; preds = %1035, %1030
  br label %1041

1041:                                             ; preds = %1040
  %1042 = load i32, i32* %28, align 4
  %1043 = add nsw i32 %1042, 1
  store i32 %1043, i32* %28, align 4
  br label %1024

1044:                                             ; preds = %1024
  br label %1045

1045:                                             ; preds = %1044, %1018
  br label %1046

1046:                                             ; preds = %1045, %1017
  %1047 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %1048 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %1047, i32 0, i32 1
  %1049 = load i32, i32* %1048, align 4
  %1050 = icmp eq i32 %1049, 4
  br i1 %1050, label %1051, label %1083

1051:                                             ; preds = %1046
  %1052 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1053 = call i32 @B43_NTAB16(i32 8, i32 5)
  %1054 = call i32 @b43_ntab_write(%struct.b43_wldev* %1052, i32 %1053, i32 32)
  %1055 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1056 = call i32 @B43_NTAB16(i32 8, i32 21)
  %1057 = call i32 @b43_ntab_write(%struct.b43_wldev* %1055, i32 %1056, i32 32)
  store i32 0, i32* %28, align 4
  br label %1058

1058:                                             ; preds = %1079, %1051
  %1059 = load i32, i32* %28, align 4
  %1060 = icmp slt i32 %1059, 2
  br i1 %1060, label %1061, label %1082

1061:                                             ; preds = %1058
  %1062 = load i32, i32* %28, align 4
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1064, label %1071

1064:                                             ; preds = %1061
  %1065 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1066 = call i32 @b43_radio_write(%struct.b43_wldev* %1065, i32 417, i32 0)
  %1067 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1068 = call i32 @b43_radio_write(%struct.b43_wldev* %1067, i32 418, i32 63)
  %1069 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1070 = call i32 @b43_radio_write(%struct.b43_wldev* %1069, i32 422, i32 63)
  br label %1078

1071:                                             ; preds = %1061
  %1072 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1073 = call i32 @b43_radio_write(%struct.b43_wldev* %1072, i32 423, i32 0)
  %1074 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1075 = call i32 @b43_radio_write(%struct.b43_wldev* %1074, i32 427, i32 63)
  %1076 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1077 = call i32 @b43_radio_write(%struct.b43_wldev* %1076, i32 428, i32 63)
  br label %1078

1078:                                             ; preds = %1071, %1064
  br label %1079

1079:                                             ; preds = %1078
  %1080 = load i32, i32* %28, align 4
  %1081 = add nsw i32 %1080, 1
  store i32 %1081, i32* %28, align 4
  br label %1058

1082:                                             ; preds = %1058
  br label %1126

1083:                                             ; preds = %1046
  %1084 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1085 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %1086 = call i32 @b43_phy_set(%struct.b43_wldev* %1084, i32 %1085, i32 4)
  %1087 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1088 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %1089 = call i32 @b43_phy_set(%struct.b43_wldev* %1087, i32 %1088, i32 4)
  %1090 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1091 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %1092 = call i32 @b43_phy_set(%struct.b43_wldev* %1090, i32 %1091, i32 4)
  %1093 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1094 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %1095 = call i32 @b43_phy_set(%struct.b43_wldev* %1093, i32 %1094, i32 4)
  %1096 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1097 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %1098 = call i32 @b43_phy_mask(%struct.b43_wldev* %1096, i32 %1097, i32 -2)
  %1099 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1100 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %1101 = call i32 @b43_phy_set(%struct.b43_wldev* %1099, i32 %1100, i32 1)
  %1102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1103 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %1104 = call i32 @b43_phy_mask(%struct.b43_wldev* %1102, i32 %1103, i32 -2)
  %1105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1106 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %1107 = call i32 @b43_phy_set(%struct.b43_wldev* %1105, i32 %1106, i32 1)
  %1108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1109 = call i32 @B43_NTAB16(i32 8, i32 5)
  %1110 = call i32 @b43_ntab_write(%struct.b43_wldev* %1108, i32 %1109, i32 0)
  %1111 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1112 = call i32 @B43_NTAB16(i32 8, i32 21)
  %1113 = call i32 @b43_ntab_write(%struct.b43_wldev* %1111, i32 %1112, i32 0)
  %1114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1115 = load i32, i32* @B43_NPHY_AFECTL_C1, align 4
  %1116 = call i32 @b43_phy_mask(%struct.b43_wldev* %1114, i32 %1115, i32 -5)
  %1117 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1118 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %1119 = call i32 @b43_phy_mask(%struct.b43_wldev* %1117, i32 %1118, i32 -5)
  %1120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1121 = load i32, i32* @B43_NPHY_AFECTL_C2, align 4
  %1122 = call i32 @b43_phy_mask(%struct.b43_wldev* %1120, i32 %1121, i32 -5)
  %1123 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1124 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %1125 = call i32 @b43_phy_mask(%struct.b43_wldev* %1123, i32 %1124, i32 -5)
  br label %1126

1126:                                             ; preds = %1083, %1082
  %1127 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1128 = load i32, i32* @B43_NPHY_ENDROP_TLEN, align 4
  %1129 = call i32 @b43_phy_write(%struct.b43_wldev* %1127, i32 %1128, i32 2)
  %1130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1131 = call i32 @B43_NTAB32(i32 16, i32 256)
  %1132 = call i32 @b43_ntab_write(%struct.b43_wldev* %1130, i32 %1131, i32 20)
  %1133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1134 = call i32 @B43_NTAB8(i32 7, i32 312)
  %1135 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %1136 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %1133, i32 %1134, i32 2, i32* %1135)
  %1137 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1138 = call i32 @B43_NTAB16(i32 7, i32 321)
  %1139 = call i32 @b43_ntab_write(%struct.b43_wldev* %1137, i32 %1138, i32 119)
  %1140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1141 = call i32 @B43_NTAB8(i32 7, i32 307)
  %1142 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %1143 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %1140, i32 %1141, i32 3, i32* %1142)
  %1144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1145 = call i32 @B43_NTAB8(i32 7, i32 326)
  %1146 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %1147 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %1144, i32 %1145, i32 2, i32* %1146)
  %1148 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1149 = call i32 @B43_NTAB16(i32 7, i32 291)
  %1150 = call i32 @b43_ntab_write(%struct.b43_wldev* %1148, i32 %1149, i32 119)
  %1151 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1152 = call i32 @B43_NTAB16(i32 7, i32 298)
  %1153 = call i32 @b43_ntab_write(%struct.b43_wldev* %1151, i32 %1152, i32 119)
  %1154 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1155 = call i32 @B43_NTAB32(i32 16, i32 2)
  %1156 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %1157 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %1154, i32 %1155, i32 1, i32* %1156)
  %1158 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1159 = call i64 @b43_is_40mhz(%struct.b43_wldev* %1158)
  %1160 = icmp ne i64 %1159, 0
  %1161 = zext i1 %1160 to i64
  %1162 = select i1 %1160, i32 333, i32 397
  %1163 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 %1162, i32* %1163, align 4
  %1164 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1165 = call i32 @B43_NTAB32(i32 16, i32 2)
  %1166 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %1167 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %1164, i32 %1165, i32 2, i32* %1166)
  %1168 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1169 = call i32 @B43_NTAB32(i32 16, i32 126)
  %1170 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %1171 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %1168, i32 %1169, i32 1, i32* %1170)
  %1172 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1173 = call i64 @b43_is_40mhz(%struct.b43_wldev* %1172)
  %1174 = icmp ne i64 %1173, 0
  %1175 = zext i1 %1174 to i64
  %1176 = select i1 %1174, i32 333, i32 397
  %1177 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 1
  store i32 %1176, i32* %1177, align 4
  %1178 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1179 = call i32 @B43_NTAB32(i32 16, i32 126)
  %1180 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %1181 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %1178, i32 %1179, i32 2, i32* %1180)
  %1182 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %1183 = call i32 @b43_nphy_gain_ctl_workarounds(%struct.b43_wldev* %1182)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #2

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @B43_NTAB16(i32, i32) #2

declare dso_local i32 @b43_ntab_read(%struct.b43_wldev*, i32) #2

declare dso_local i32 @B43_NTAB32(i32, i32) #2

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #2

declare dso_local i32 @b43_nphy_set_rf_sequence(%struct.b43_wldev*, i32, i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #2

declare dso_local i32 @b43_nphy_read_lpf_ctl(%struct.b43_wldev*, i32) #2

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #2

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i64 @b43_is_40mhz(%struct.b43_wldev*) #2

declare dso_local i32 @clamp_val(i32, i32, i32) #2

declare dso_local i32 @b43_nphy_rf_ctl_override_rev7(%struct.b43_wldev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @B43_NTAB8(i32, i32) #2

declare dso_local i32 @b43_ntab_read_bulk(%struct.b43_wldev*, i32, i32, i32*) #2

declare dso_local i32 @b43_nphy_gain_ctl_workarounds(%struct.b43_wldev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
