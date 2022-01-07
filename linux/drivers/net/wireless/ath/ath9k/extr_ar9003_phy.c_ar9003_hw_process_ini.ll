; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_process_ini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_process_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.ath9k_channel = type { i32 }

@ATH_INI_NUM_SPLIT = common dso_local global i32 0, align 4
@ATH_INI_POST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AR_PHY_FCAL_2_0 = common dso_local global i32 0, align 4
@AR_PHY_FLC_PWR_THRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar9003_hw_process_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_process_ini(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %11 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %15 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  store i32 %18, i32* %8, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %21 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 3, i32 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %19, %13
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %81, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ATH_INI_NUM_SPLIT, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %84

30:                                               ; preds = %26
  %31 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 16
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %31, i32* %37, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %41 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %41, i32 0, i32 15
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %40, i32* %46, i32 %47)
  %49 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %50 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 14
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %49, i32* %55, i32 %56)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %59, i32 0, i32 13
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %58, i32* %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @ATH_INI_POST, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %30
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = call i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %76 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %76, i32 0, i32 12
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %75, i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %70, %30
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %26

84:                                               ; preds = %26
  %85 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %86 = call i32 @ar9003_doubler_fix(%struct.ath_hw* %85)
  %87 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %88 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %87, i32 0, i32 11
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @REG_WRITE_ARRAY(i32* %88, i32 1, i32 %89)
  %91 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %92 = call i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %84
  %95 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %96 = call i32 @ar9003_hw_get_rx_gain_idx(%struct.ath_hw* %95)
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %100 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %99, i32 0, i32 10
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @REG_WRITE_ARRAY(i32* %100, i32 1, i32 %101)
  %103 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %104 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %103, i32 0, i32 9
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @REG_WRITE_ARRAY(i32* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %98, %94
  %109 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %110 = call i32 @ar9003_hw_get_rx_gain_idx(%struct.ath_hw* %109)
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %114 = call i32 @ar9003_hw_get_rx_gain_idx(%struct.ath_hw* %113)
  %115 = icmp eq i32 %114, 3
  br i1 %115, label %116, label %122

116:                                              ; preds = %112, %108
  %117 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %118 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %117, i32 0, i32 7
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @REG_WRITE_ARRAY(i32* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %116, %112
  br label %123

123:                                              ; preds = %122, %84
  %124 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %125 = call i64 @AR_SREV_9550(%struct.ath_hw* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %129 = call i64 @AR_SREV_9561(%struct.ath_hw* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127, %123
  %132 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %133 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %132, i32 0, i32 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @REG_WRITE_ARRAY(i32* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %127
  %138 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %139 = call i64 @AR_SREV_9561(%struct.ath_hw* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %143 = call i32 @ar9003_hw_get_rx_gain_idx(%struct.ath_hw* %142)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %147 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %146, i32 0, i32 7
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @REG_WRITE_ARRAY(i32* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %141, %137
  %152 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %153 = call i64 @AR_SREV_9550(%struct.ath_hw* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %157 = call i64 @AR_SREV_9531(%struct.ath_hw* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %161 = call i64 @AR_SREV_9561(%struct.ath_hw* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %191

163:                                              ; preds = %159, %155, %151
  store i32 1, i32* %9, align 4
  %164 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %165 = call i64 @AR_SREV_9550(%struct.ath_hw* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %169 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %170 = call i32 @ar9550_hw_get_modes_txgain_index(%struct.ath_hw* %168, %struct.ath9k_channel* %169)
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %173 = call i64 @AR_SREV_9561(%struct.ath_hw* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %177 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %178 = call i32 @ar9561_hw_get_modes_txgain_index(%struct.ath_hw* %176, %struct.ath9k_channel* %177)
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %175, %171
  %180 = load i32, i32* %9, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %251

185:                                              ; preds = %179
  %186 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %187 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %186, i32 0, i32 6
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @REG_WRITE_ARRAY(i32* %187, i32 %188, i32 %189)
  br label %197

191:                                              ; preds = %159
  %192 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %193 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %192, i32 0, i32 6
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @REG_WRITE_ARRAY(i32* %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %185
  %198 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %199 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %200 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %198, %struct.ath9k_channel* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %204 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %203, i32 0, i32 5
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @REG_WRITE_ARRAY(i32* %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %202, %197
  %209 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %210 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %209, i32 0, i32 4
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @REG_WRITE_ARRAY(i32* %210, i32 1, i32 %211)
  %213 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %214 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 2484
  br i1 %216, label %217, label %231

217:                                              ; preds = %208
  %218 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %219 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %220 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %219, i32 0, i32 3
  %221 = call i32 @ar9003_hw_prog_ini(%struct.ath_hw* %218, i32* %220, i32 1)
  %222 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %223 = call i64 @AR_SREV_9531(%struct.ath_hw* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %217
  %226 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %227 = load i32, i32* @AR_PHY_FCAL_2_0, align 4
  %228 = load i32, i32* @AR_PHY_FLC_PWR_THRESH, align 4
  %229 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %226, i32 %227, i32 %228, i32 0)
  br label %230

230:                                              ; preds = %225, %217
  br label %231

231:                                              ; preds = %230, %208
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %234 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %236 = call i32 @ar9003_hw_override_ini(%struct.ath_hw* %235)
  %237 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %238 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %239 = call i32 @ar9003_hw_set_channel_regs(%struct.ath_hw* %237, %struct.ath9k_channel* %238)
  %240 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %241 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %242 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %245 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @ar9003_hw_set_chain_masks(%struct.ath_hw* %240, i32 %243, i32 %246)
  %248 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %249 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %250 = call i32 @ath9k_hw_apply_txpower(%struct.ath_hw* %248, %struct.ath9k_channel* %249, i32 0)
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %231, %182
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_prog_ini(%struct.ath_hw*, i32*, i32) #1

declare dso_local i64 @AR_SREV_9462_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_doubler_fix(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE_ARRAY(i32*, i32, i32) #1

declare dso_local i32 @ar9003_hw_get_rx_gain_idx(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i32 @ar9550_hw_get_modes_txgain_index(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar9561_hw_get_modes_txgain_index(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @ar9003_hw_override_ini(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_channel_regs(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar9003_hw_set_chain_masks(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_apply_txpower(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
