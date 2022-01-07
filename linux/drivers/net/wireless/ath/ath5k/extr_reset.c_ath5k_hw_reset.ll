; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_reset.c_ath5k_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i64, i64, i64, i32* }
%struct.ieee80211_channel = type { i32, i32 }

@AR5K_RF2413 = common dso_local global i64 0, align 8
@AR5K_RF5413 = common dso_local global i64 0, align 8
@AR5K_AR5212 = common dso_local global i64 0, align 8
@AR5K_AR5211 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"G mode not available on 5210/5211\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"B mode not available on 5210\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid channel: %d\0A\00", align 1
@ATH5K_DEBUG_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"fast chan change failed, falling back to normal reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"fast chan change successful\0A\00", align 1
@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_SREV_AR5211 = common dso_local global i64 0, align 8
@AR5K_TSF_U32 = common dso_local global i32 0, align 4
@AR5K_TSF_L32 = common dso_local global i32 0, align 4
@AR5K_PCICFG = common dso_local global i32 0, align 4
@AR5K_PCICFG_LEDSTATE = common dso_local global i32 0, align 4
@AR5K_GPIOCR = common dso_local global i32 0, align 4
@AR5K_GPIODO = common dso_local global i32 0, align 4
@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_PHY_SHIFT_5GHZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to initialize PHY (%i) !\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@AR5K_BEACON = common dso_local global i32 0, align 4
@AR5K_BEACON_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_hw_reset(%struct.ath5k_hw* %0, i32 %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [10 x i32], align 16
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %5
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AR5K_RF2413, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AR5K_RF5413, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %27, %21, %5
  %35 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %36 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AR5K_AR5212, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %42 = call i32 @ath5k_hw_set_sleep_clock(%struct.ath5k_hw* %41, i32 0)
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  switch i32 %47, label %73 [
    i32 130, label %48
    i32 128, label %49
    i32 129, label %61
  ]

48:                                               ; preds = %43
  br label %81

49:                                               ; preds = %43
  %50 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %51 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AR5K_AR5211, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %57 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_ERR(%struct.ath5k_hw* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %342

60:                                               ; preds = %49
  br label %81

61:                                               ; preds = %43
  %62 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %63 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AR5K_AR5211, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %69 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_ERR(%struct.ath5k_hw* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %342

72:                                               ; preds = %61
  br label %81

73:                                               ; preds = %43
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %76 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_ERR(%struct.ath5k_hw* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %342

81:                                               ; preds = %72, %60, %48
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %86 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @ath5k_hw_phy_init(%struct.ath5k_hw* %85, %struct.ieee80211_channel* %86, i32 %87, i32 1)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %93 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %94 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %92, i32 %93, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %99

95:                                               ; preds = %84
  %96 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %97 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %98 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %96, i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %342

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %81
  %101 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %102 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AR5K_AR5210, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %147

106:                                              ; preds = %100
  %107 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %108 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %106
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %124, %112
  %114 = load i32, i32* %17, align 4
  %115 = icmp slt i32 %114, 10
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @AR5K_QUEUE_DCU_SEQNUM(i32 %118)
  %120 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %117, i32 %119)
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %122
  store i32 %120, i32* %123, align 4
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %113

127:                                              ; preds = %113
  br label %133

128:                                              ; preds = %106
  %129 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %130 = call i32 @AR5K_QUEUE_DCU_SEQNUM(i32 0)
  %131 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %129, i32 %130)
  %132 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  store i32 %131, i32* %132, align 16
  br label %133

133:                                              ; preds = %128, %127
  %134 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %135 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @AR5K_AR5211, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %141 = load i32, i32* @AR5K_TSF_U32, align 4
  %142 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %140, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %144 = load i32, i32* @AR5K_TSF_L32, align 4
  %145 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %143, i32 %144)
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %139, %133
  br label %147

147:                                              ; preds = %146, %100
  %148 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %149 = load i32, i32* @AR5K_PCICFG, align 4
  %150 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %148, i32 %149)
  %151 = load i32, i32* @AR5K_PCICFG_LEDSTATE, align 4
  %152 = and i32 %150, %151
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %152, i32* %153, align 4
  %154 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %155 = load i32, i32* @AR5K_GPIOCR, align 4
  %156 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %154, i32 %155)
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %156, i32* %157, align 4
  %158 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %159 = load i32, i32* @AR5K_GPIODO, align 4
  %160 = call i32 @ath5k_hw_reg_read(%struct.ath5k_hw* %158, i32 %159)
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %160, i32* %161, align 4
  %162 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %163 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @AR5K_AR5212, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %147
  %168 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %169 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @AR5K_RF5112, align 8
  %172 = icmp sle i64 %170, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %173
  %177 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %178 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %183 = call i32 @ath5k_hw_gainf_calibrate(%struct.ath5k_hw* %182)
  br label %184

184:                                              ; preds = %181, %176, %173
  br label %185

185:                                              ; preds = %184, %167, %147
  %186 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %187 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %188 = call i32 @ath5k_hw_nic_wakeup(%struct.ath5k_hw* %186, %struct.ieee80211_channel* %187)
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i32, i32* %18, align 4
  store i32 %192, i32* %6, align 4
  br label %342

193:                                              ; preds = %185
  %194 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %195 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %198 = icmp sge i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %201 = load i32, i32* @AR5K_PHY_SHIFT_5GHZ, align 4
  %202 = call i32 @AR5K_PHY(i32 0)
  %203 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %200, i32 %201, i32 %202)
  br label %210

204:                                              ; preds = %193
  %205 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %206 = load i32, i32* @AR5K_PHY_SHIFT_5GHZ, align 4
  %207 = or i32 %206, 64
  %208 = call i32 @AR5K_PHY(i32 0)
  %209 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %205, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %204, %199
  %211 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @ath5k_hw_write_initvals(%struct.ath5k_hw* %211, i32 %212, i32 %213)
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* %18, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = load i32, i32* %18, align 4
  store i32 %218, i32* %6, align 4
  br label %342

219:                                              ; preds = %210
  %220 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %221 = call i32 @ath5k_hw_init_core_clock(%struct.ath5k_hw* %220)
  %222 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %223 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %224 = call i32 @ath5k_hw_tweak_initval_settings(%struct.ath5k_hw* %222, %struct.ieee80211_channel* %223)
  %225 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %226 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %227 = call i32 @ath5k_hw_commit_eeprom_settings(%struct.ath5k_hw* %225, %struct.ieee80211_channel* %226)
  %228 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %229 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @AR5K_AR5210, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %278

233:                                              ; preds = %219
  %234 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %235 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @AR5K_SREV_AR5211, align 8
  %238 = icmp slt i64 %236, %237
  br i1 %238, label %239, label %256

239:                                              ; preds = %233
  store i32 0, i32* %17, align 4
  br label %240

240:                                              ; preds = %252, %239
  %241 = load i32, i32* %17, align 4
  %242 = icmp slt i32 %241, 10
  br i1 %242, label %243, label %255

243:                                              ; preds = %240
  %244 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %17, align 4
  %250 = call i32 @AR5K_QUEUE_DCU_SEQNUM(i32 %249)
  %251 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %244, i32 %248, i32 %250)
  br label %252

252:                                              ; preds = %243
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %17, align 4
  br label %240

255:                                              ; preds = %240
  br label %262

256:                                              ; preds = %233
  %257 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %258 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %259 = load i32, i32* %258, align 16
  %260 = call i32 @AR5K_QUEUE_DCU_SEQNUM(i32 0)
  %261 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %257, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %256, %255
  %263 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %264 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @AR5K_AR5211, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %262
  %269 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* @AR5K_TSF_U32, align 4
  %272 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %269, i32 %270, i32 %271)
  %273 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %274 = load i32, i32* %15, align 4
  %275 = load i32, i32* @AR5K_TSF_L32, align 4
  %276 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %273, i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %268, %262
  br label %278

278:                                              ; preds = %277, %219
  %279 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %280 = load i32, i32* @AR5K_PCICFG, align 4
  %281 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %279, i32 %280, i32 %282)
  %284 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %285 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @AR5K_GPIOCR, align 4
  %288 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %284, i32 %286, i32 %287)
  %289 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %290 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @AR5K_GPIODO, align 4
  %293 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %289, i32 %291, i32 %292)
  %294 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %295 = load i32, i32* %8, align 4
  %296 = call i32 @ath5k_hw_pcu_init(%struct.ath5k_hw* %294, i32 %295)
  %297 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %298 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %299 = load i32, i32* %16, align 4
  %300 = call i32 @ath5k_hw_phy_init(%struct.ath5k_hw* %297, %struct.ieee80211_channel* %298, i32 %299, i32 0)
  store i32 %300, i32* %18, align 4
  %301 = load i32, i32* %18, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %278
  %304 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %305 = load i32, i32* %18, align 4
  %306 = call i32 (%struct.ath5k_hw*, i8*, ...) @ATH5K_ERR(%struct.ath5k_hw* %304, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %305)
  %307 = load i32, i32* %18, align 4
  store i32 %307, i32* %6, align 4
  br label %342

308:                                              ; preds = %278
  %309 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %310 = call i32 @ath5k_hw_init_queues(%struct.ath5k_hw* %309)
  store i32 %310, i32* %18, align 4
  %311 = load i32, i32* %18, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %308
  %314 = load i32, i32* %18, align 4
  store i32 %314, i32* %6, align 4
  br label %342

315:                                              ; preds = %308
  %316 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %317 = call i32 @ath5k_hw_dma_init(%struct.ath5k_hw* %316)
  %318 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %319 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %335

322:                                              ; preds = %315
  %323 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %324 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @AR5K_AR5212, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %322
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %328
  %333 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %334 = call i32 @ath5k_hw_set_sleep_clock(%struct.ath5k_hw* %333, i32 1)
  br label %335

335:                                              ; preds = %332, %328, %322, %315
  %336 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %337 = load i32, i32* @AR5K_BEACON, align 4
  %338 = load i32, i32* @AR5K_BEACON_ENABLE, align 4
  %339 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %336, i32 %337, i32 %338)
  %340 = load %struct.ath5k_hw*, %struct.ath5k_hw** %7, align 8
  %341 = call i32 @ath5k_hw_reset_tsf(%struct.ath5k_hw* %340)
  store i32 0, i32* %6, align 4
  br label %342

342:                                              ; preds = %335, %313, %303, %217, %191, %95, %73, %67, %55
  %343 = load i32, i32* %6, align 4
  ret i32 %343
}

declare dso_local i32 @ath5k_hw_set_sleep_clock(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, ...) #1

declare dso_local i32 @ath5k_hw_phy_init(%struct.ath5k_hw*, %struct.ieee80211_channel*, i32, i32) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*) #1

declare dso_local i32 @ath5k_hw_reg_read(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @AR5K_QUEUE_DCU_SEQNUM(i32) #1

declare dso_local i32 @ath5k_hw_gainf_calibrate(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_nic_wakeup(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_PHY(i32) #1

declare dso_local i32 @ath5k_hw_write_initvals(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_init_core_clock(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_tweak_initval_settings(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_commit_eeprom_settings(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_pcu_init(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_init_queues(%struct.ath5k_hw*) #1

declare dso_local i32 @ath5k_hw_dma_init(%struct.ath5k_hw*) #1

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @ath5k_hw_reset_tsf(%struct.ath5k_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
