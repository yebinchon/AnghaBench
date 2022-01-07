; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_ani_control_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_ani_control_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_4__, %struct.ar5416AniState, %struct.ath9k_channel* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ar5416AniState = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@m1ThreshLow_off = common dso_local global i32 0, align 4
@m2ThreshLow_off = common dso_local global i32 0, align 4
@m1Thresh_off = common dso_local global i32 0, align 4
@m2Thresh_off = common dso_local global i32 0, align 4
@m2CountThr_off = common dso_local global i32 0, align 4
@m2CountThrLow_off = common dso_local global i32 0, align 4
@m1ThreshLowExt_off = common dso_local global i32 0, align 4
@m2ThreshLowExt_off = common dso_local global i32 0, align 4
@m1ThreshExt_off = common dso_local global i32 0, align 4
@m2ThreshExt_off = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_M2COUNT_THR = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH_LOW = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M1_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_EXT_M2_THRESH = common dso_local global i32 0, align 4
@AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW = common dso_local global i32 0, align 4
@ANI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"** ch %d: ofdm weak signal: %s=>%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@AR_PHY_FIND_SIG = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRSTEP = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRSTEP_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"** ch %d: level %d=>%d[def:%d] firstep[level]=%d ini=%d\0A\00", align 1
@ATH9K_ANI_FIRSTEP_LVL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"** ch %d: level %d=>%d[def:%d] firstep_low[level]=%d ini=%d\0A\00", align 1
@AR_PHY_TIMING5 = common dso_local global i32 0, align 4
@AR_PHY_TIMING5_CYCPWR_THR1 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_TIMING5_CYCPWR_THR1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1[level]=%d ini=%d\0A\00", align 1
@ATH9K_ANI_SPUR_IMMUNE_LVL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1Ext[level]=%d ini=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"invalid cmd %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [87 x i8] c"ANI parameters: SI=%d, ofdmWS=%s FS=%d MRCcck=%s listenTime=%d ofdmErrs=%d cckErrs=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32)* @ar5008_hw_ani_control_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5008_hw_ani_control_new(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_channel*, align 8
  %10 = alloca %struct.ar5416AniState*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %25 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %26 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %25)
  store %struct.ath_common* %26, %struct.ath_common** %8, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %28 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %27, i32 0, i32 3
  %29 = load %struct.ath9k_channel*, %struct.ath9k_channel** %28, align 8
  store %struct.ath9k_channel* %29, %struct.ath9k_channel** %9, align 8
  %30 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 2
  store %struct.ar5416AniState* %31, %struct.ar5416AniState** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  switch i32 %36, label %422 [
    i32 129, label %37
    i32 131, label %256
    i32 128, label %337
    i32 130, label %420
  ]

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %46 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  br label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @m1ThreshLow_off, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi i32 [ %48, %44 ], [ %50, %49 ]
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %57 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @m2ThreshLow_off, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi i32 [ %59, %55 ], [ %61, %60 ]
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %68 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  br label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @m1Thresh_off, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi i32 [ %70, %66 ], [ %72, %71 ]
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %79 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  br label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @m2Thresh_off, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = phi i32 [ %81, %77 ], [ %83, %82 ]
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %90 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  br label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @m2CountThr_off, align 4
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi i32 [ %92, %88 ], [ %94, %93 ]
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %101 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @m2CountThrLow_off, align 4
  br label %106

106:                                              ; preds = %104, %99
  %107 = phi i32 [ %103, %99 ], [ %105, %104 ]
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %112 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  br label %117

115:                                              ; preds = %106
  %116 = load i32, i32* @m1ThreshLowExt_off, align 4
  br label %117

117:                                              ; preds = %115, %110
  %118 = phi i32 [ %114, %110 ], [ %116, %115 ]
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %123 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  br label %128

126:                                              ; preds = %117
  %127 = load i32, i32* @m2ThreshLowExt_off, align 4
  br label %128

128:                                              ; preds = %126, %121
  %129 = phi i32 [ %125, %121 ], [ %127, %126 ]
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %134 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  br label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @m1ThreshExt_off, align 4
  br label %139

139:                                              ; preds = %137, %132
  %140 = phi i32 [ %136, %132 ], [ %138, %137 ]
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %145 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  br label %150

148:                                              ; preds = %139
  %149 = load i32, i32* @m2ThreshExt_off, align 4
  br label %150

150:                                              ; preds = %148, %143
  %151 = phi i32 [ %147, %143 ], [ %149, %148 ]
  store i32 %151, i32* %22, align 4
  %152 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %153 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %154 = load i32, i32* @AR_PHY_SFCORR_LOW_M1_THRESH_LOW, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %152, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %158 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %159 = load i32, i32* @AR_PHY_SFCORR_LOW_M2_THRESH_LOW, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %163 = load i32, i32* @AR_PHY_SFCORR, align 4
  %164 = load i32, i32* @AR_PHY_SFCORR_M1_THRESH, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %162, i32 %163, i32 %164, i32 %165)
  %167 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %168 = load i32, i32* @AR_PHY_SFCORR, align 4
  %169 = load i32, i32* @AR_PHY_SFCORR_M2_THRESH, align 4
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %167, i32 %168, i32 %169, i32 %170)
  %172 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %173 = load i32, i32* @AR_PHY_SFCORR, align 4
  %174 = load i32, i32* @AR_PHY_SFCORR_M2COUNT_THR, align 4
  %175 = load i32, i32* %17, align 4
  %176 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %172, i32 %173, i32 %174, i32 %175)
  %177 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %178 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %179 = load i32, i32* @AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW, align 4
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %177, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %183 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %184 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH_LOW, align 4
  %185 = load i32, i32* %19, align 4
  %186 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %182, i32 %183, i32 %184, i32 %185)
  %187 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %188 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %189 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH_LOW, align 4
  %190 = load i32, i32* %20, align 4
  %191 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %187, i32 %188, i32 %189, i32 %190)
  %192 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %193 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %194 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH, align 4
  %195 = load i32, i32* %21, align 4
  %196 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %192, i32 %193, i32 %194, i32 %195)
  %197 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %198 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %199 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH, align 4
  %200 = load i32, i32* %22, align 4
  %201 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %150
  %205 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %206 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %207 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %208 = call i32 @REG_SET_BIT(%struct.ath_hw* %205, i32 %206, i32 %207)
  br label %214

209:                                              ; preds = %150
  %210 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %211 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %212 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %213 = call i32 @REG_CLR_BIT(%struct.ath_hw* %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %209, %204
  %215 = load i32, i32* %12, align 4
  %216 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %217 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %215, %218
  br i1 %219, label %220, label %255

220:                                              ; preds = %214
  %221 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %222 = load i32, i32* @ANI, align 4
  %223 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %224 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %227 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %232 = load i32, i32* %12, align 4
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %236 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %221, i32 %222, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %225, i8* %231, i8* %235)
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %220
  %240 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %241 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  br label %251

245:                                              ; preds = %220
  %246 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %247 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %245, %239
  %252 = load i32, i32* %12, align 4
  %253 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %254 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %251, %214
  br label %427

256:                                              ; preds = %3
  %257 = load i32, i32* %7, align 4
  store i32 %257, i32* %23, align 4
  %258 = load i32, i32* %23, align 4
  %259 = mul nsw i32 %258, 2
  store i32 %259, i32* %11, align 4
  %260 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %261 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %262 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP, align 4
  %263 = load i32, i32* %11, align 4
  %264 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %260, i32 %261, i32 %262, i32 %263)
  %265 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %266 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %267 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP_LOW, align 4
  %268 = load i32, i32* %11, align 4
  %269 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %265, i32 %266, i32 %267, i32 %268)
  %270 = load i32, i32* %23, align 4
  %271 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %272 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %270, %273
  br i1 %274, label %275, label %336

275:                                              ; preds = %256
  %276 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %277 = load i32, i32* @ANI, align 4
  %278 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %279 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %282 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %23, align 4
  %285 = load i32, i32* @ATH9K_ANI_FIRSTEP_LVL, align 4
  %286 = load i32, i32* %11, align 4
  %287 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %288 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %287, i32 0, i32 7
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 13
  %290 = load i32, i32* %289, align 4
  %291 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %276, i32 %277, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %280, i32 %283, i32 %284, i32 %285, i32 %286, i32 %290)
  %292 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %293 = load i32, i32* @ANI, align 4
  %294 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %295 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %298 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %23, align 4
  %301 = load i32, i32* @ATH9K_ANI_FIRSTEP_LVL, align 4
  %302 = load i32, i32* %11, align 4
  %303 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %304 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %303, i32 0, i32 7
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 12
  %306 = load i32, i32* %305, align 8
  %307 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %292, i32 %293, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %296, i32 %299, i32 %300, i32 %301, i32 %302, i32 %306)
  %308 = load i32, i32* %23, align 4
  %309 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %310 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp sgt i32 %308, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %275
  %314 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %315 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 4
  br label %332

319:                                              ; preds = %275
  %320 = load i32, i32* %23, align 4
  %321 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %322 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp slt i32 %320, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %319
  %326 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %327 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  br label %331

331:                                              ; preds = %325, %319
  br label %332

332:                                              ; preds = %331, %313
  %333 = load i32, i32* %23, align 4
  %334 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %335 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %334, i32 0, i32 1
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %332, %256
  br label %427

337:                                              ; preds = %3
  %338 = load i32, i32* %7, align 4
  store i32 %338, i32* %24, align 4
  %339 = load i32, i32* %24, align 4
  %340 = add nsw i32 %339, 1
  %341 = mul nsw i32 %340, 2
  store i32 %341, i32* %11, align 4
  %342 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %343 = load i32, i32* @AR_PHY_TIMING5, align 4
  %344 = load i32, i32* @AR_PHY_TIMING5_CYCPWR_THR1, align 4
  %345 = load i32, i32* %11, align 4
  %346 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %342, i32 %343, i32 %344, i32 %345)
  %347 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %348 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %349 = load i32, i32* @AR_PHY_EXT_TIMING5_CYCPWR_THR1, align 4
  %350 = load i32, i32* %11, align 4
  %351 = sub nsw i32 %350, 1
  %352 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %347, i32 %348, i32 %349, i32 %351)
  %353 = load i32, i32* %24, align 4
  %354 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %355 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %353, %356
  br i1 %357, label %358, label %419

358:                                              ; preds = %337
  %359 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %360 = load i32, i32* @ANI, align 4
  %361 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %362 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %365 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* %24, align 4
  %368 = load i32, i32* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 4
  %369 = load i32, i32* %11, align 4
  %370 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %371 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %370, i32 0, i32 7
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 11
  %373 = load i32, i32* %372, align 4
  %374 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %359, i32 %360, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %363, i32 %366, i32 %367, i32 %368, i32 %369, i32 %373)
  %375 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %376 = load i32, i32* @ANI, align 4
  %377 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %378 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %381 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %24, align 4
  %384 = load i32, i32* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 4
  %385 = load i32, i32* %11, align 4
  %386 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %387 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %386, i32 0, i32 7
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 10
  %389 = load i32, i32* %388, align 8
  %390 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %375, i32 %376, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 %379, i32 %382, i32 %383, i32 %384, i32 %385, i32 %389)
  %391 = load i32, i32* %24, align 4
  %392 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %393 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = icmp sgt i32 %391, %394
  br i1 %395, label %396, label %402

396:                                              ; preds = %358
  %397 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %398 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %399, align 4
  br label %415

402:                                              ; preds = %358
  %403 = load i32, i32* %24, align 4
  %404 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %405 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = icmp slt i32 %403, %406
  br i1 %407, label %408, label %414

408:                                              ; preds = %402
  %409 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %410 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %411, align 4
  br label %414

414:                                              ; preds = %408, %402
  br label %415

415:                                              ; preds = %414, %396
  %416 = load i32, i32* %24, align 4
  %417 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %418 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %417, i32 0, i32 2
  store i32 %416, i32* %418, align 8
  br label %419

419:                                              ; preds = %415, %337
  br label %427

420:                                              ; preds = %3
  %421 = call i32 @WARN_ON(i32 1)
  br label %427

422:                                              ; preds = %3
  %423 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %424 = load i32, i32* @ANI, align 4
  %425 = load i32, i32* %6, align 4
  %426 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %423, i32 %424, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %425)
  store i32 0, i32* %4, align 4
  br label %458

427:                                              ; preds = %420, %419, %336, %255
  %428 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %429 = load i32, i32* @ANI, align 4
  %430 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %431 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %434 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = icmp ne i32 %435, 0
  %437 = zext i1 %436 to i64
  %438 = select i1 %436, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %439 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %440 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %443 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %442, i32 0, i32 6
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  %446 = zext i1 %445 to i64
  %447 = select i1 %445, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %448 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %449 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %448, i32 0, i32 5
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %452 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %451, i32 0, i32 4
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %455 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 4
  %457 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %428, i32 %429, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0), i32 %432, i8* %438, i32 %441, i8* %447, i32 %450, i32 %453, i32 %456)
  store i32 1, i32* %4, align 4
  br label %458

458:                                              ; preds = %427, %422
  %459 = load i32, i32* %4, align 4
  ret i32 %459
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
