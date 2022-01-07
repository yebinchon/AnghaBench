; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_process_ini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_process_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_8__, i32, i32, i64, %struct.TYPE_8__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { {}* }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@AR_PHY_ADC_SERIAL_CTL = common dso_local global i32 0, align 4
@AR_PHY_SEL_EXTERNAL_RADIO = common dso_local global i32 0, align 4
@AR_PHY_SEL_INTERNAL_ADDAC = common dso_local global i32 0, align 4
@AR_AN_TOP2 = common dso_local global i32 0, align 4
@AR_AN_TOP2_PWDCLKIND = common dso_local global i32 0, align 4
@ATH_USB = common dso_local global i64 0, align 8
@AR_PHY_SPECTRAL_SCAN = common dso_local global i32 0, align 4
@AR_PHY_SPECTRAL_SCAN_ENA = common dso_local global i32 0, align 4
@AR_PHY_RF_CTL3 = common dso_local global i32 0, align 4
@AR_PHY_TX_END_TO_ADC_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ar5416SetRfRegs failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_process_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5008_hw_process_ini(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %16 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %15)
  store %struct.ath_common* %16, %struct.ath_common** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %18 = call i64 @IS_CHAN_5GHZ(%struct.ath9k_channel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  %21 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %22 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 1
  store i32 %25, i32* %9, align 4
  br label %32

26:                                               ; preds = %2
  store i32 2, i32* %10, align 4
  %27 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %28 = call i64 @IS_CHAN_HT40(%struct.ath9k_channel* %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 3, i32 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %34 = call i32 @AR_PHY(i32 0)
  %35 = call i32 @REG_WRITE(%struct.ath_hw* %33, i32 %34, i32 7)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %37 = load i32, i32* @AR_PHY_ADC_SERIAL_CTL, align 4
  %38 = load i32, i32* @AR_PHY_SEL_EXTERNAL_RADIO, align 4
  %39 = call i32 @REG_WRITE(%struct.ath_hw* %36, i32 %37, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 9
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.ath_hw*, %struct.ath9k_channel*)**
  %45 = load i32 (%struct.ath_hw*, %struct.ath9k_channel*)*, i32 (%struct.ath_hw*, %struct.ath9k_channel*)** %44, align 8
  %46 = icmp ne i32 (%struct.ath_hw*, %struct.ath9k_channel*)* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %32
  %48 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %49 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %48, i32 0, i32 9
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.ath_hw*, %struct.ath9k_channel*)**
  %53 = load i32 (%struct.ath_hw*, %struct.ath9k_channel*)*, i32 (%struct.ath_hw*, %struct.ath9k_channel*)** %52, align 8
  %54 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %55 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %56 = call i32 %53(%struct.ath_hw* %54, %struct.ath9k_channel* %55)
  br label %57

57:                                               ; preds = %47, %32
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %58, i32 0, i32 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @REG_WRITE_ARRAY(i32* %59, i32 1, i32 %60)
  %62 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %63 = load i32, i32* @AR_PHY_ADC_SERIAL_CTL, align 4
  %64 = load i32, i32* @AR_PHY_SEL_INTERNAL_ADDAC, align 4
  %65 = call i32 @REG_WRITE(%struct.ath_hw* %62, i32 %63, i32 %64)
  %66 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %67 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %66)
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %127, %57
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %71 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %130

75:                                               ; preds = %68
  %76 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %77 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %76, i32 0, i32 7
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @INI_RA(%struct.TYPE_8__* %77, i32 %78, i32 0)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %80, i32 0, i32 7
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @INI_RA(%struct.TYPE_8__* %81, i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @AR_AN_TOP2, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %75
  %89 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %90 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* @AR_AN_TOP2_PWDCLKIND, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %93, %88, %75
  %99 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @REG_WRITE(%struct.ath_hw* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = icmp sge i32 %103, 30720
  br i1 %104, label %105, label %124

105:                                              ; preds = %98
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 30880
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %110 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %116 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ATH_USB, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = call i32 @udelay(i32 100)
  br label %124

124:                                              ; preds = %122, %114, %108, %105, %98
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @DO_DELAY(i32 %125)
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %68

130:                                              ; preds = %68
  %131 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %132 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %131)
  %133 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %134 = call i64 @AR_SREV_9280(%struct.ath_hw* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %130
  %137 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %138 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136, %130
  %141 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %142 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %141, i32 0, i32 5
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @REG_WRITE_ARRAY(i32* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %136
  %147 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %148 = call i64 @AR_SREV_9280(%struct.ath_hw* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %152 = call i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %156 = call i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %154, %150, %146
  %159 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %160 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %159, i32 0, i32 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @REG_WRITE_ARRAY(i32* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %154
  %165 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %166 = call i64 @AR_SREV_9271_10(%struct.ath_hw* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %170 = load i32, i32* @AR_PHY_SPECTRAL_SCAN, align 4
  %171 = load i32, i32* @AR_PHY_SPECTRAL_SCAN_ENA, align 4
  %172 = call i32 @REG_SET_BIT(%struct.ath_hw* %169, i32 %170, i32 %171)
  %173 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %174 = load i32, i32* @AR_PHY_RF_CTL3, align 4
  %175 = load i32, i32* @AR_PHY_TX_END_TO_ADC_ON, align 4
  %176 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %173, i32 %174, i32 %175, i32 10)
  br label %177

177:                                              ; preds = %168, %164
  %178 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %179 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %178)
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %224, %177
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %183 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %181, %185
  br i1 %186, label %187, label %227

187:                                              ; preds = %180
  %188 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %189 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %188, i32 0, i32 3
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @INI_RA(%struct.TYPE_8__* %189, i32 %190, i32 0)
  store i32 %191, i32* %13, align 4
  %192 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %193 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %192, i32 0, i32 3
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @INI_RA(%struct.TYPE_8__* %193, i32 %194, i32 1)
  store i32 %195, i32* %14, align 4
  %196 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @REG_WRITE(%struct.ath_hw* %196, i32 %197, i32 %198)
  %200 = load i32, i32* %13, align 4
  %201 = icmp sge i32 %200, 30720
  br i1 %201, label %202, label %221

202:                                              ; preds = %187
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %203, 30880
  br i1 %204, label %205, label %221

205:                                              ; preds = %202
  %206 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %207 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %205
  %212 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %213 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %212, i32 0, i32 0
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @ATH_USB, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %211
  %220 = call i32 @udelay(i32 100)
  br label %221

221:                                              ; preds = %219, %211, %205, %202, %187
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @DO_DELAY(i32 %222)
  br label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %180

227:                                              ; preds = %180
  %228 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %229 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %228)
  %230 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %231 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %230, i32 0, i32 1
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @REG_WRITE_ARRAY(i32* %231, i32 %232, i32 %233)
  %235 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %236 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %237 = call i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw* %235, %struct.ath9k_channel* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %227
  %240 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %241 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %240, i32 0, i32 0
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @REG_WRITE_ARRAY(i32* %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %239, %227
  %246 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %247 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %248 = call i32 @ar5008_hw_override_ini(%struct.ath_hw* %246, %struct.ath9k_channel* %247)
  %249 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %250 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %251 = call i32 @ar5008_hw_set_channel_regs(%struct.ath_hw* %249, %struct.ath9k_channel* %250)
  %252 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %253 = call i32 @ar5008_hw_init_chain_masks(%struct.ath_hw* %252)
  %254 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %255 = call i32 @ath9k_olc_init(%struct.ath_hw* %254)
  %256 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %257 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %258 = call i32 @ath9k_hw_apply_txpower(%struct.ath_hw* %256, %struct.ath9k_channel* %257, i32 0)
  %259 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %260 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %261 = load i32, i32* %10, align 4
  %262 = call i32 @ath9k_hw_set_rf_regs(%struct.ath_hw* %259, %struct.ath9k_channel* %260, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %270, label %264

264:                                              ; preds = %245
  %265 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %266 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %265)
  %267 = call i32 @ath_err(%struct.ath_common* %266, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %268 = load i32, i32* @EIO, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %3, align 4
  br label %271

270:                                              ; preds = %245
  store i32 0, i32* %3, align 4
  br label %271

271:                                              ; preds = %270, %264
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @IS_CHAN_5GHZ(%struct.ath9k_channel*) #1

declare dso_local i64 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

declare dso_local i32 @REG_WRITE_ARRAY(i32*, i32, i32) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @INI_RA(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DO_DELAY(i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287_11_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9285_12_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271_10(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @IS_CHAN_A_FAST_CLOCK(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_override_ini(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_set_channel_regs(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @ar5008_hw_init_chain_masks(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_olc_init(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_apply_txpower(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @ath9k_hw_set_rf_regs(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
