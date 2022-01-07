; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_ani_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_ani_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.ar5416AniState, %struct.ath9k_channel* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ar5416AniState = type { i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
@firstep_table = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"ATH9K_ANI_FIRSTEP_LEVEL: level out of range (%u > %zu)\0A\00", align 1
@ATH9K_ANI_FIRSTEP_LVL = common dso_local global i64 0, align 8
@ATH9K_SIG_FIRSTEP_SETTING_MIN = common dso_local global i32 0, align 4
@ATH9K_SIG_FIRSTEP_SETTING_MAX = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_FIRSTEP = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW = common dso_local global i32 0, align 4
@AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"** ch %d: level %d=>%d[def:%d] firstep[level]=%d ini=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"** ch %d: level %d=>%d[def:%d] firstep_low[level]=%d ini=%d\0A\00", align 1
@cycpwrThr1_table = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [62 x i8] c"ATH9K_ANI_SPUR_IMMUNITY_LEVEL: level out of range (%u > %zu)\0A\00", align 1
@ATH9K_ANI_SPUR_IMMUNE_LVL = common dso_local global i64 0, align 8
@ATH9K_SIG_SPUR_IMM_SETTING_MIN = common dso_local global i32 0, align 4
@ATH9K_SIG_SPUR_IMM_SETTING_MAX = common dso_local global i32 0, align 4
@AR_PHY_TIMING5 = common dso_local global i32 0, align 4
@AR_PHY_TIMING5_CYCPWR_THR1 = common dso_local global i32 0, align 4
@AR_PHY_EXT_CCA = common dso_local global i32 0, align 4
@AR_PHY_EXT_CYCPWR_THR1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1[level]=%d ini=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"** ch %d: level %d=>%d[def:%d] cycpwrThr1Ext[level]=%d ini=%d\0A\00", align 1
@AR_PHY_MRC_CCK_CTRL = common dso_local global i32 0, align 4
@AR_PHY_MRC_CCK_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_MRC_CCK_MUX_REG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"** ch %d: MRC CCK: %s=>%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"invalid cmd %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [87 x i8] c"ANI parameters: SI=%d, ofdmWS=%s FS=%d MRCcck=%s listenTime=%d ofdmErrs=%d cckErrs=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32)* @ar9003_hw_ani_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_ani_control(%struct.ath_hw* %0, i32 %1, i32 %2) #0 {
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
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %27 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %28 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %27)
  store %struct.ath_common* %28, %struct.ath_common** %8, align 8
  %29 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %29, i32 0, i32 4
  %31 = load %struct.ath9k_channel*, %struct.ath9k_channel** %30, align 8
  store %struct.ath9k_channel* %31, %struct.ath9k_channel** %9, align 8
  %32 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 3
  store %struct.ar5416AniState* %33, %struct.ar5416AniState** %10, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %34, %37
  switch i32 %38, label %626 [
    i32 129, label %39
    i32 131, label %270
    i32 128, label %416
    i32 130, label %562
  ]

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %23, align 8
  %45 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %46 = call i32 @AR_SREV_9462(%struct.ath_hw* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %50 = call i32 @AR_SREV_9565(%struct.ath_hw* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %39
  br label %214

53:                                               ; preds = %48
  %54 = load i64, i64* %23, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %58 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @m1ThreshLow_off, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %60, %56 ], [ %62, %61 ]
  store i32 %64, i32* %11, align 4
  %65 = load i64, i64* %23, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %69 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  br label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @m2ThreshLow_off, align 4
  br label %74

74:                                               ; preds = %72, %67
  %75 = phi i32 [ %71, %67 ], [ %73, %72 ]
  store i32 %75, i32* %12, align 4
  %76 = load i64, i64* %23, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %80 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  br label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @m1Thresh_off, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi i32 [ %82, %78 ], [ %84, %83 ]
  store i32 %86, i32* %13, align 4
  %87 = load i64, i64* %23, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %91 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @m2Thresh_off, align 4
  br label %96

96:                                               ; preds = %94, %89
  %97 = phi i32 [ %93, %89 ], [ %95, %94 ]
  store i32 %97, i32* %14, align 4
  %98 = load i64, i64* %23, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %102 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  br label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @m2CountThr_off, align 4
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi i32 [ %104, %100 ], [ %106, %105 ]
  store i32 %108, i32* %15, align 4
  %109 = load i64, i64* %23, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %113 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  br label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @m2CountThrLow_off, align 4
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %115, %111 ], [ %117, %116 ]
  store i32 %119, i32* %16, align 4
  %120 = load i64, i64* %23, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %124 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  br label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @m1ThreshLowExt_off, align 4
  br label %129

129:                                              ; preds = %127, %122
  %130 = phi i32 [ %126, %122 ], [ %128, %127 ]
  store i32 %130, i32* %17, align 4
  %131 = load i64, i64* %23, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %135 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  br label %140

138:                                              ; preds = %129
  %139 = load i32, i32* @m2ThreshLowExt_off, align 4
  br label %140

140:                                              ; preds = %138, %133
  %141 = phi i32 [ %137, %133 ], [ %139, %138 ]
  store i32 %141, i32* %18, align 4
  %142 = load i64, i64* %23, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %146 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  br label %151

149:                                              ; preds = %140
  %150 = load i32, i32* @m1ThreshExt_off, align 4
  br label %151

151:                                              ; preds = %149, %144
  %152 = phi i32 [ %148, %144 ], [ %150, %149 ]
  store i32 %152, i32* %19, align 4
  %153 = load i64, i64* %23, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %157 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  br label %162

160:                                              ; preds = %151
  %161 = load i32, i32* @m2ThreshExt_off, align 4
  br label %162

162:                                              ; preds = %160, %155
  %163 = phi i32 [ %159, %155 ], [ %161, %160 ]
  store i32 %163, i32* %20, align 4
  %164 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %165 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %166 = load i32, i32* @AR_PHY_SFCORR_LOW_M1_THRESH_LOW, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %164, i32 %165, i32 %166, i32 %167)
  %169 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %170 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %171 = load i32, i32* @AR_PHY_SFCORR_LOW_M2_THRESH_LOW, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %169, i32 %170, i32 %171, i32 %172)
  %174 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %175 = load i32, i32* @AR_PHY_SFCORR, align 4
  %176 = load i32, i32* @AR_PHY_SFCORR_M1_THRESH, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %174, i32 %175, i32 %176, i32 %177)
  %179 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %180 = load i32, i32* @AR_PHY_SFCORR, align 4
  %181 = load i32, i32* @AR_PHY_SFCORR_M2_THRESH, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %179, i32 %180, i32 %181, i32 %182)
  %184 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %185 = load i32, i32* @AR_PHY_SFCORR, align 4
  %186 = load i32, i32* @AR_PHY_SFCORR_M2COUNT_THR, align 4
  %187 = load i32, i32* %15, align 4
  %188 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %184, i32 %185, i32 %186, i32 %187)
  %189 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %190 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %191 = load i32, i32* @AR_PHY_SFCORR_LOW_M2COUNT_THR_LOW, align 4
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %189, i32 %190, i32 %191, i32 %192)
  %194 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %195 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %196 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH_LOW, align 4
  %197 = load i32, i32* %17, align 4
  %198 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %194, i32 %195, i32 %196, i32 %197)
  %199 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %200 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %201 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH_LOW, align 4
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %199, i32 %200, i32 %201, i32 %202)
  %204 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %205 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %206 = load i32, i32* @AR_PHY_SFCORR_EXT_M1_THRESH, align 4
  %207 = load i32, i32* %19, align 4
  %208 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %204, i32 %205, i32 %206, i32 %207)
  %209 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %210 = load i32, i32* @AR_PHY_SFCORR_EXT, align 4
  %211 = load i32, i32* @AR_PHY_SFCORR_EXT_M2_THRESH, align 4
  %212 = load i32, i32* %20, align 4
  %213 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %209, i32 %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %162, %52
  %215 = load i64, i64* %23, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %219 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %220 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %221 = call i32 @REG_SET_BIT(%struct.ath_hw* %218, i32 %219, i32 %220)
  br label %227

222:                                              ; preds = %214
  %223 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %224 = load i32, i32* @AR_PHY_SFCORR_LOW, align 4
  %225 = load i32, i32* @AR_PHY_SFCORR_LOW_USE_SELF_CORR_LOW, align 4
  %226 = call i32 @REG_CLR_BIT(%struct.ath_hw* %223, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %217
  %228 = load i64, i64* %23, align 8
  %229 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %230 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %228, %231
  br i1 %232, label %233, label %269

233:                                              ; preds = %227
  %234 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %235 = load i32, i32* @ANI, align 4
  %236 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %237 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %241 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %246 = load i64, i64* %23, align 8
  %247 = icmp ne i64 %246, 0
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %250 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %234, i32 %235, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %239, i8* %245, i8* %249)
  %251 = load i64, i64* %23, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %233
  %254 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %255 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  br label %265

259:                                              ; preds = %233
  %260 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %261 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %259, %253
  %266 = load i64, i64* %23, align 8
  %267 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %268 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %267, i32 0, i32 0
  store i64 %266, i64* %268, align 8
  br label %269

269:                                              ; preds = %265, %227
  br label %632

270:                                              ; preds = %3
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %24, align 8
  %273 = load i64, i64* %24, align 8
  %274 = load i32*, i32** @firstep_table, align 8
  %275 = call i64 @ARRAY_SIZE(i32* %274)
  %276 = icmp uge i64 %273, %275
  br i1 %276, label %277, label %284

277:                                              ; preds = %270
  %278 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %279 = load i32, i32* @ANI, align 4
  %280 = load i64, i64* %24, align 8
  %281 = load i32*, i32** @firstep_table, align 8
  %282 = call i64 @ARRAY_SIZE(i32* %281)
  %283 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %278, i32 %279, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %280, i64 %282)
  store i32 0, i32* %4, align 4
  br label %663

284:                                              ; preds = %270
  %285 = load i32*, i32** @firstep_table, align 8
  %286 = load i64, i64* %24, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** @firstep_table, align 8
  %290 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = sub nsw i32 %288, %292
  %294 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %295 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %294, i32 0, i32 7
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 10
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %293, %297
  store i32 %298, i32* %21, align 4
  %299 = load i32, i32* %21, align 4
  %300 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %284
  %303 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  store i32 %303, i32* %21, align 4
  br label %304

304:                                              ; preds = %302, %284
  %305 = load i32, i32* %21, align 4
  %306 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  %307 = icmp sgt i32 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  store i32 %309, i32* %21, align 4
  br label %310

310:                                              ; preds = %308, %304
  %311 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %312 = load i32, i32* @AR_PHY_FIND_SIG, align 4
  %313 = load i32, i32* @AR_PHY_FIND_SIG_FIRSTEP, align 4
  %314 = load i32, i32* %21, align 4
  %315 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %311, i32 %312, i32 %313, i32 %314)
  %316 = load i32*, i32** @firstep_table, align 8
  %317 = load i64, i64* %24, align 8
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** @firstep_table, align 8
  %321 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %319, %323
  %325 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %326 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %325, i32 0, i32 7
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 11
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %324, %328
  store i32 %329, i32* %22, align 4
  %330 = load i32, i32* %22, align 4
  %331 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %335

333:                                              ; preds = %310
  %334 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MIN, align 4
  store i32 %334, i32* %22, align 4
  br label %335

335:                                              ; preds = %333, %310
  %336 = load i32, i32* %22, align 4
  %337 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  %338 = icmp sgt i32 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  %340 = load i32, i32* @ATH9K_SIG_FIRSTEP_SETTING_MAX, align 4
  store i32 %340, i32* %22, align 4
  br label %341

341:                                              ; preds = %339, %335
  %342 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %343 = load i32, i32* @AR_PHY_FIND_SIG_LOW, align 4
  %344 = load i32, i32* @AR_PHY_FIND_SIG_LOW_FIRSTEP_LOW, align 4
  %345 = load i32, i32* %22, align 4
  %346 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %342, i32 %343, i32 %344, i32 %345)
  %347 = load i64, i64* %24, align 8
  %348 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %349 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %347, %350
  br i1 %351, label %352, label %415

352:                                              ; preds = %341
  %353 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %354 = load i32, i32* @ANI, align 4
  %355 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %356 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = sext i32 %357 to i64
  %359 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %360 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* %24, align 8
  %363 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %364 = load i32, i32* %21, align 4
  %365 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %366 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %365, i32 0, i32 7
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 10
  %368 = load i32, i32* %367, align 8
  %369 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %353, i32 %354, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %358, i64 %361, i64 %362, i64 %363, i32 %364, i32 %368)
  %370 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %371 = load i32, i32* @ANI, align 4
  %372 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %373 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %377 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* %24, align 8
  %380 = load i64, i64* @ATH9K_ANI_FIRSTEP_LVL, align 8
  %381 = load i32, i32* %22, align 4
  %382 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %383 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %382, i32 0, i32 7
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 11
  %385 = load i32, i32* %384, align 4
  %386 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %370, i32 %371, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %375, i64 %378, i64 %379, i64 %380, i32 %381, i32 %385)
  %387 = load i64, i64* %24, align 8
  %388 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %389 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = icmp ugt i64 %387, %390
  br i1 %391, label %392, label %398

392:                                              ; preds = %352
  %393 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %394 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %395, align 4
  br label %411

398:                                              ; preds = %352
  %399 = load i64, i64* %24, align 8
  %400 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %401 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = icmp ult i64 %399, %402
  br i1 %403, label %404, label %410

404:                                              ; preds = %398
  %405 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %406 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 4
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %407, align 4
  br label %410

410:                                              ; preds = %404, %398
  br label %411

411:                                              ; preds = %410, %392
  %412 = load i64, i64* %24, align 8
  %413 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %414 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %413, i32 0, i32 1
  store i64 %412, i64* %414, align 8
  br label %415

415:                                              ; preds = %411, %341
  br label %632

416:                                              ; preds = %3
  %417 = load i32, i32* %7, align 4
  %418 = sext i32 %417 to i64
  store i64 %418, i64* %25, align 8
  %419 = load i64, i64* %25, align 8
  %420 = load i32*, i32** @cycpwrThr1_table, align 8
  %421 = call i64 @ARRAY_SIZE(i32* %420)
  %422 = icmp uge i64 %419, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %416
  %424 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %425 = load i32, i32* @ANI, align 4
  %426 = load i64, i64* %25, align 8
  %427 = load i32*, i32** @cycpwrThr1_table, align 8
  %428 = call i64 @ARRAY_SIZE(i32* %427)
  %429 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %424, i32 %425, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 %426, i64 %428)
  store i32 0, i32* %4, align 4
  br label %663

430:                                              ; preds = %416
  %431 = load i32*, i32** @cycpwrThr1_table, align 8
  %432 = load i64, i64* %25, align 8
  %433 = getelementptr inbounds i32, i32* %431, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = load i32*, i32** @cycpwrThr1_table, align 8
  %436 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %437 = getelementptr inbounds i32, i32* %435, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = sub nsw i32 %434, %438
  %440 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %441 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %440, i32 0, i32 7
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 12
  %443 = load i32, i32* %442, align 8
  %444 = add nsw i32 %439, %443
  store i32 %444, i32* %21, align 4
  %445 = load i32, i32* %21, align 4
  %446 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %450

448:                                              ; preds = %430
  %449 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  store i32 %449, i32* %21, align 4
  br label %450

450:                                              ; preds = %448, %430
  %451 = load i32, i32* %21, align 4
  %452 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  %453 = icmp sgt i32 %451, %452
  br i1 %453, label %454, label %456

454:                                              ; preds = %450
  %455 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  store i32 %455, i32* %21, align 4
  br label %456

456:                                              ; preds = %454, %450
  %457 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %458 = load i32, i32* @AR_PHY_TIMING5, align 4
  %459 = load i32, i32* @AR_PHY_TIMING5_CYCPWR_THR1, align 4
  %460 = load i32, i32* %21, align 4
  %461 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %457, i32 %458, i32 %459, i32 %460)
  %462 = load i32*, i32** @cycpwrThr1_table, align 8
  %463 = load i64, i64* %25, align 8
  %464 = getelementptr inbounds i32, i32* %462, i64 %463
  %465 = load i32, i32* %464, align 4
  %466 = load i32*, i32** @cycpwrThr1_table, align 8
  %467 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %468 = getelementptr inbounds i32, i32* %466, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = sub nsw i32 %465, %469
  %471 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %472 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %471, i32 0, i32 7
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 13
  %474 = load i32, i32* %473, align 4
  %475 = add nsw i32 %470, %474
  store i32 %475, i32* %22, align 4
  %476 = load i32, i32* %22, align 4
  %477 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  %478 = icmp slt i32 %476, %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %456
  %480 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MIN, align 4
  store i32 %480, i32* %22, align 4
  br label %481

481:                                              ; preds = %479, %456
  %482 = load i32, i32* %22, align 4
  %483 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  %484 = icmp sgt i32 %482, %483
  br i1 %484, label %485, label %487

485:                                              ; preds = %481
  %486 = load i32, i32* @ATH9K_SIG_SPUR_IMM_SETTING_MAX, align 4
  store i32 %486, i32* %22, align 4
  br label %487

487:                                              ; preds = %485, %481
  %488 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %489 = load i32, i32* @AR_PHY_EXT_CCA, align 4
  %490 = load i32, i32* @AR_PHY_EXT_CYCPWR_THR1, align 4
  %491 = load i32, i32* %22, align 4
  %492 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %488, i32 %489, i32 %490, i32 %491)
  %493 = load i64, i64* %25, align 8
  %494 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %495 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %494, i32 0, i32 2
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %493, %496
  br i1 %497, label %498, label %561

498:                                              ; preds = %487
  %499 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %500 = load i32, i32* @ANI, align 4
  %501 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %502 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = sext i32 %503 to i64
  %505 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %506 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %505, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = load i64, i64* %25, align 8
  %509 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %510 = load i32, i32* %21, align 4
  %511 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %512 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %511, i32 0, i32 7
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 12
  %514 = load i32, i32* %513, align 8
  %515 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %499, i32 %500, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i64 %504, i64 %507, i64 %508, i64 %509, i32 %510, i32 %514)
  %516 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %517 = load i32, i32* @ANI, align 4
  %518 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %519 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = sext i32 %520 to i64
  %522 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %523 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %522, i32 0, i32 2
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* %25, align 8
  %526 = load i64, i64* @ATH9K_ANI_SPUR_IMMUNE_LVL, align 8
  %527 = load i32, i32* %22, align 4
  %528 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %529 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %528, i32 0, i32 7
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i32 0, i32 13
  %531 = load i32, i32* %530, align 4
  %532 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %516, i32 %517, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i64 %521, i64 %524, i64 %525, i64 %526, i32 %527, i32 %531)
  %533 = load i64, i64* %25, align 8
  %534 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %535 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %534, i32 0, i32 2
  %536 = load i64, i64* %535, align 8
  %537 = icmp ugt i64 %533, %536
  br i1 %537, label %538, label %544

538:                                              ; preds = %498
  %539 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %540 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %540, i32 0, i32 3
  %542 = load i32, i32* %541, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %541, align 4
  br label %557

544:                                              ; preds = %498
  %545 = load i64, i64* %25, align 8
  %546 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %547 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %546, i32 0, i32 2
  %548 = load i64, i64* %547, align 8
  %549 = icmp ult i64 %545, %548
  br i1 %549, label %550, label %556

550:                                              ; preds = %544
  %551 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %552 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %553, align 4
  br label %556

556:                                              ; preds = %550, %544
  br label %557

557:                                              ; preds = %556, %538
  %558 = load i64, i64* %25, align 8
  %559 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %560 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %559, i32 0, i32 2
  store i64 %558, i64* %560, align 8
  br label %561

561:                                              ; preds = %557, %487
  br label %632

562:                                              ; preds = %3
  %563 = load i32, i32* %7, align 4
  %564 = icmp ne i32 %563, 0
  %565 = zext i1 %564 to i64
  %566 = select i1 %564, i32 1, i32 0
  store i32 %566, i32* %26, align 4
  %567 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %568 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %567, i32 0, i32 2
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 0
  %570 = load i32, i32* %569, align 4
  %571 = icmp eq i32 %570, 1
  br i1 %571, label %572, label %573

572:                                              ; preds = %562
  br label %632

573:                                              ; preds = %562
  %574 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %575 = load i32, i32* @AR_PHY_MRC_CCK_CTRL, align 4
  %576 = load i32, i32* @AR_PHY_MRC_CCK_ENABLE, align 4
  %577 = load i32, i32* %26, align 4
  %578 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %574, i32 %575, i32 %576, i32 %577)
  %579 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %580 = load i32, i32* @AR_PHY_MRC_CCK_CTRL, align 4
  %581 = load i32, i32* @AR_PHY_MRC_CCK_MUX_REG, align 4
  %582 = load i32, i32* %26, align 4
  %583 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %579, i32 %580, i32 %581, i32 %582)
  %584 = load i32, i32* %26, align 4
  %585 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %586 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %585, i32 0, i32 3
  %587 = load i32, i32* %586, align 8
  %588 = icmp ne i32 %584, %587
  br i1 %588, label %589, label %625

589:                                              ; preds = %573
  %590 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %591 = load i32, i32* @ANI, align 4
  %592 = load %struct.ath9k_channel*, %struct.ath9k_channel** %9, align 8
  %593 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 4
  %595 = sext i32 %594 to i64
  %596 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %597 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 8
  %599 = icmp ne i32 %598, 0
  %600 = zext i1 %599 to i64
  %601 = select i1 %599, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %602 = load i32, i32* %26, align 4
  %603 = icmp ne i32 %602, 0
  %604 = zext i1 %603 to i64
  %605 = select i1 %603, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %606 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %590, i32 %591, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 %595, i8* %601, i8* %605)
  %607 = load i32, i32* %26, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %615

609:                                              ; preds = %589
  %610 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %611 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %610, i32 0, i32 1
  %612 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %611, i32 0, i32 1
  %613 = load i32, i32* %612, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %612, align 4
  br label %621

615:                                              ; preds = %589
  %616 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %617 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %616, i32 0, i32 1
  %618 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %618, align 4
  br label %621

621:                                              ; preds = %615, %609
  %622 = load i32, i32* %26, align 4
  %623 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %624 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %623, i32 0, i32 3
  store i32 %622, i32* %624, align 8
  br label %625

625:                                              ; preds = %621, %573
  br label %632

626:                                              ; preds = %3
  %627 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %628 = load i32, i32* @ANI, align 4
  %629 = load i32, i32* %6, align 4
  %630 = zext i32 %629 to i64
  %631 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %627, i32 %628, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 %630)
  store i32 0, i32* %4, align 4
  br label %663

632:                                              ; preds = %625, %572, %561, %415, %269
  %633 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %634 = load i32, i32* @ANI, align 4
  %635 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %636 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %635, i32 0, i32 2
  %637 = load i64, i64* %636, align 8
  %638 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %639 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %638, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = icmp ne i64 %640, 0
  %642 = zext i1 %641 to i64
  %643 = select i1 %641, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %644 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %645 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %644, i32 0, i32 1
  %646 = load i64, i64* %645, align 8
  %647 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %648 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %647, i32 0, i32 3
  %649 = load i32, i32* %648, align 8
  %650 = icmp ne i32 %649, 0
  %651 = zext i1 %650 to i64
  %652 = select i1 %650, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %653 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %654 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %653, i32 0, i32 6
  %655 = load i32, i32* %654, align 4
  %656 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %657 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %656, i32 0, i32 5
  %658 = load i32, i32* %657, align 8
  %659 = load %struct.ar5416AniState*, %struct.ar5416AniState** %10, align 8
  %660 = getelementptr inbounds %struct.ar5416AniState, %struct.ar5416AniState* %659, i32 0, i32 4
  %661 = load i32, i32* %660, align 4
  %662 = call i32 (%struct.ath_common*, i32, i8*, i64, ...) @ath_dbg(%struct.ath_common* %633, i32 %634, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.11, i64 0, i64 0), i64 %637, i8* %643, i64 %646, i8* %652, i32 %655, i32 %658, i32 %661)
  store i32 1, i32* %4, align 4
  br label %663

663:                                              ; preds = %632, %626, %423, %277
  %664 = load i32, i32* %4, align 4
  ret i32 %664
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, ...) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
