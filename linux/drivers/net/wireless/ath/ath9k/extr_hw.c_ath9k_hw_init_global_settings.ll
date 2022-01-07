; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_global_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_global_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i64, i32, i32, i64, %struct.TYPE_2__, %struct.ath9k_channel* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }

@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ah->misc_mode 0x%x\0A\00", align 1
@AR_PCU_MISC = common dso_local global i32 0, align 4
@AR_D_GBL_IFS_EIFS_ASYNC_FIFO = common dso_local global i32 0, align 4
@AR_USEC_ASYNC_FIFO = common dso_local global i64 0, align 8
@AR_D_GBL_IFS_EIFS = common dso_local global i32 0, align 4
@AR_USEC = common dso_local global i32 0, align 4
@AR_USEC_RX_LAT = common dso_local global i32 0, align 4
@AR_USEC_TX_LAT = common dso_local global i32 0, align 4
@AR_USEC_USEC = common dso_local global i32 0, align 4
@AR_TXSIFS = common dso_local global i32 0, align 4
@AR_TXSIFS_ACK_SHIFT = common dso_local global i32 0, align 4
@AR_TXSIFS_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_init_global_settings(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %3, align 8
  %17 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 5
  %19 = load %struct.ath9k_channel*, %struct.ath9k_channel** %18, align 8
  store %struct.ath9k_channel* %19, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %20)
  %22 = load i32, i32* @RESET, align 4
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ath_dbg(%struct.ath_common* %21, i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %28 = icmp ne %struct.ath9k_channel* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %254

30:                                               ; preds = %1
  %31 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %37 = load i32, i32* @AR_PCU_MISC, align 4
  %38 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @REG_SET_BIT(%struct.ath_hw* %36, i32 %37, i64 %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %45 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %43, %struct.ath9k_channel* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 41, i32* %10, align 4
  br label %49

48:                                               ; preds = %42
  store i32 37, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %47
  store i32 54, i32* %11, align 4
  %50 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %51 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 16, i32* %9, align 4
  br label %55

54:                                               ; preds = %49
  store i32 10, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %57 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  store i32 175, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %11, align 4
  %64 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %65 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %66 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %64, %struct.ath9k_channel* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 11
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %68, %59
  store i32 32, i32* %9, align 4
  store i32 16, i32* %7, align 4
  store i32 3, i32* %13, align 4
  store i32 13, i32* %8, align 4
  br label %124

72:                                               ; preds = %55
  %73 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %74 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  store i32 340, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %77, 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 %80, 4
  store i32 %81, i32* %11, align 4
  %82 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %83 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %84 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %82, %struct.ath9k_channel* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 22
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %76
  store i32 64, i32* %9, align 4
  store i32 32, i32* %7, align 4
  store i32 1, i32* %13, align 4
  store i32 21, i32* %8, align 4
  br label %123

90:                                               ; preds = %72
  %91 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %92 = call i64 @AR_SREV_9287(%struct.ath_hw* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %96 = call i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @AR_D_GBL_IFS_EIFS_ASYNC_FIFO, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i64, i64* @AR_USEC_ASYNC_FIFO, align 8
  store i64 %100, i64* %14, align 8
  br label %113

101:                                              ; preds = %94, %90
  %102 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %103 = load i32, i32* @AR_D_GBL_IFS_EIFS, align 4
  %104 = call i32 @REG_READ(%struct.ath_hw* %102, i32 %103)
  %105 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %106 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %104, %107
  store i32 %108, i32* %12, align 4
  %109 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %110 = load i32, i32* @AR_USEC, align 4
  %111 = call i32 @REG_READ(%struct.ath_hw* %109, i32 %110)
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %101, %98
  %114 = load i64, i64* %14, align 8
  %115 = load i32, i32* @AR_USEC_RX_LAT, align 4
  %116 = call i32 @MS(i64 %114, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i64, i64* %14, align 8
  %118 = load i32, i32* @AR_USEC_TX_LAT, align 4
  %119 = call i32 @MS(i64 %117, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %121 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %113, %89
  br label %124

124:                                              ; preds = %123, %71
  %125 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %126 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 3, %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  store i32 %136, i32* %6, align 4
  %137 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %138 = call i64 @IS_CHAN_2GHZ(%struct.ath9k_channel* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %124
  %141 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %142 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %165, label %144

144:                                              ; preds = %140
  %145 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %146 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %165, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 64, %149
  %151 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %152 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %150, %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 48, %157
  %159 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %160 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %158, %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %148, %144, %140, %124
  %166 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %167 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %165
  %172 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %173 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %5, align 4
  %178 = sub nsw i32 %177, 3
  %179 = sdiv i32 %178, 2
  store i32 %179, i32* %8, align 4
  br label %185

180:                                              ; preds = %165
  %181 = load i32, i32* %5, align 4
  %182 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %183 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  br label %185

185:                                              ; preds = %180, %171
  %186 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @ath9k_hw_set_sifs_time(%struct.ath_hw* %186, i32 %187)
  %189 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @ath9k_hw_setslottime(%struct.ath_hw* %189, i32 %190)
  %192 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @ath9k_hw_set_ack_timeout(%struct.ath_hw* %192, i32 %193)
  %195 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @ath9k_hw_set_cts_timeout(%struct.ath_hw* %195, i32 %196)
  %198 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %199 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, -1
  br i1 %201, label %202, label %208

202:                                              ; preds = %185
  %203 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %204 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %205 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @ath9k_hw_set_global_txtimeout(%struct.ath_hw* %203, i64 %206)
  br label %208

208:                                              ; preds = %202, %185
  %209 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %210 = load i32, i32* @AR_D_GBL_IFS_EIFS, align 4
  %211 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %212 = load i32, i32* %12, align 4
  %213 = call i32 @ath9k_hw_mac_to_clks(%struct.ath_hw* %211, i32 %212)
  %214 = call i32 @REG_WRITE(%struct.ath_hw* %209, i32 %210, i32 %213)
  %215 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %216 = load i32, i32* @AR_USEC, align 4
  %217 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %218 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %219, 1
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @AR_USEC_RX_LAT, align 4
  %223 = call i32 @SM(i32 %221, i32 %222)
  %224 = or i32 %220, %223
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* @AR_USEC_TX_LAT, align 4
  %227 = call i32 @SM(i32 %225, i32 %226)
  %228 = or i32 %224, %227
  %229 = load i32, i32* @AR_USEC_TX_LAT, align 4
  %230 = load i32, i32* @AR_USEC_RX_LAT, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @AR_USEC_USEC, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @REG_RMW(%struct.ath_hw* %215, i32 %216, i32 %228, i32 %233)
  %235 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %236 = call i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %208
  %239 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %240 = call i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %238, %208
  %243 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %244 = load i32, i32* @AR_TXSIFS, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* @AR_TXSIFS_ACK_SHIFT, align 4
  %248 = call i32 @SM(i32 %246, i32 %247)
  %249 = or i32 %245, %248
  %250 = load i32, i32* @AR_TXSIFS_TIME, align 4
  %251 = load i32, i32* @AR_TXSIFS_ACK_SHIFT, align 4
  %252 = or i32 %250, %251
  %253 = call i32 @REG_RMW(%struct.ath_hw* %243, i32 %244, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %29, %242, %238
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i64) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HALF_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_QUARTER_RATE(%struct.ath9k_channel*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_13_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @MS(i64, i32) #1

declare dso_local i64 @IS_CHAN_2GHZ(%struct.ath9k_channel*) #1

declare dso_local i32 @ath9k_hw_set_sifs_time(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_setslottime(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_ack_timeout(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_cts_timeout(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath9k_hw_set_global_txtimeout(%struct.ath_hw*, i64) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @ath9k_hw_mac_to_clks(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
