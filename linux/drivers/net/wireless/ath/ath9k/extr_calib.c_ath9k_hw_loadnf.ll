; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_loadnf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_hw_loadnf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ath9k_nfcal_hist* }
%struct.ath9k_nfcal_hist = type { i32 }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@AR_PHY_AGC_CONTROL = common dso_local global i32 0, align 4
@NUM_NF_READINGS = common dso_local global i32 0, align 4
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NF = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_ENABLE_NF = common dso_local global i32 0, align 4
@AR_PHY_AGC_CONTROL_NO_UPDATE_NF = common dso_local global i32 0, align 4
@ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Timeout while waiting for nf to load: AR_PHY_AGC_CONTROL=0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_loadnf(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath9k_nfcal_hist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  store %struct.ath9k_nfcal_hist* null, %struct.ath9k_nfcal_hist** %6, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 3
  %18 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %23 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %22)
  store %struct.ath_common* %23, %struct.ath_common** %10, align 8
  %24 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %25 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %26 = call %struct.TYPE_4__* @ath9k_hw_get_nf_limits(%struct.ath_hw* %24, %struct.ath9k_channel* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %30 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %31 = call i32 @REG_READ(%struct.ath_hw* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %38 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %40, align 8
  store %struct.ath9k_nfcal_hist* %41, %struct.ath9k_nfcal_hist** %6, align 8
  br label %42

42:                                               ; preds = %36, %2
  %43 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %44 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %43)
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %116, %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NUM_NF_READINGS, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %119

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %115

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %61 = call i32 @IS_CHAN_HT40(%struct.ath9k_channel* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %116

64:                                               ; preds = %59, %55
  %65 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %71 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  br label %102

73:                                               ; preds = %64
  %74 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %6, align 8
  %75 = icmp ne %struct.ath9k_nfcal_hist* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %77, i64 %79
  %81 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %13, align 4
  br label %101

83:                                               ; preds = %73
  %84 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %85 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %86 = call %struct.TYPE_4__* @ath9k_hw_get_nf_limits(%struct.ath_hw* %84, %struct.ath9k_channel* %85)
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp sgt i32 %93, -60
  br i1 %94, label %98, label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, -127
  br i1 %97, label %98, label %100

98:                                               ; preds = %95, %83
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %98, %95
  br label %101

101:                                              ; preds = %100, %76
  br label %102

102:                                              ; preds = %101, %69
  %103 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %104 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %105 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = shl i32 %111, 1
  %113 = and i32 %112, 511
  %114 = call i32 @REG_RMW(%struct.ath_hw* %103, i32 %110, i32 %113, i32 511)
  br label %115

115:                                              ; preds = %102, %49
  br label %116

116:                                              ; preds = %115, %63
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %45

119:                                              ; preds = %45
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %126 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %127 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %128 = call i32 @REG_CLR_BIT(%struct.ath_hw* %125, i32 %126, i32 %127)
  %129 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %130 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %129)
  %131 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %132 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %131)
  br label %133

133:                                              ; preds = %124, %119
  %134 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %135 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %136 = load i32, i32* @AR_PHY_AGC_CONTROL_ENABLE_NF, align 4
  %137 = call i32 @REG_CLR_BIT(%struct.ath_hw* %134, i32 %135, i32 %136)
  %138 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %139 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %140 = load i32, i32* @AR_PHY_AGC_CONTROL_NO_UPDATE_NF, align 4
  %141 = call i32 @REG_CLR_BIT(%struct.ath_hw* %138, i32 %139, i32 %140)
  %142 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %143 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %144 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %145 = call i32 @REG_SET_BIT(%struct.ath_hw* %142, i32 %143, i32 %144)
  %146 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %147 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %146)
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %161, %133
  %149 = load i32, i32* %8, align 4
  %150 = icmp ult i32 %149, 22200
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %153 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %154 = call i32 @REG_READ(%struct.ath_hw* %152, i32 %153)
  %155 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %164

159:                                              ; preds = %151
  %160 = call i32 @udelay(i32 10)
  br label %161

161:                                              ; preds = %159
  %162 = load i32, i32* %8, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %148

164:                                              ; preds = %158, %148
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %198

169:                                              ; preds = %164
  %170 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %171 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %170)
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @AR_PHY_AGC_CONTROL_ENABLE_NF, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %178 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %179 = load i32, i32* @AR_PHY_AGC_CONTROL_ENABLE_NF, align 4
  %180 = call i32 @REG_SET_BIT(%struct.ath_hw* %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %176, %169
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @AR_PHY_AGC_CONTROL_NO_UPDATE_NF, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %188 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %189 = load i32, i32* @AR_PHY_AGC_CONTROL_NO_UPDATE_NF, align 4
  %190 = call i32 @REG_SET_BIT(%struct.ath_hw* %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %193 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %194 = load i32, i32* @AR_PHY_AGC_CONTROL_NF, align 4
  %195 = call i32 @REG_SET_BIT(%struct.ath_hw* %192, i32 %193, i32 %194)
  %196 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %197 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %196)
  br label %198

198:                                              ; preds = %191, %164
  %199 = load i32, i32* %8, align 4
  %200 = icmp eq i32 %199, 22200
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %203 = load i32, i32* @ANY, align 4
  %204 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %205 = load i32, i32* @AR_PHY_AGC_CONTROL, align 4
  %206 = call i32 @REG_READ(%struct.ath_hw* %204, i32 %205)
  %207 = call i32 @ath_dbg(%struct.ath_common* %202, i32 %203, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @ETIMEDOUT, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %3, align 4
  br label %249

210:                                              ; preds = %198
  %211 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %212 = call i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw* %211)
  store i32 0, i32* %7, align 4
  br label %213

213:                                              ; preds = %243, %210
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* @NUM_NF_READINGS, align 4
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %217, label %246

217:                                              ; preds = %213
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %7, align 4
  %220 = shl i32 1, %219
  %221 = and i32 %218, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %242

223:                                              ; preds = %217
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %226 = icmp uge i32 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %229 = call i32 @IS_CHAN_HT40(%struct.ath9k_channel* %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %227
  br label %243

232:                                              ; preds = %227, %223
  %233 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %234 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %235 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @REG_RMW(%struct.ath_hw* %233, i32 %240, i32 412, i32 511)
  br label %242

242:                                              ; preds = %232, %217
  br label %243

243:                                              ; preds = %242, %231
  %244 = load i32, i32* %7, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %213

246:                                              ; preds = %213
  %247 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %248 = call i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw* %247)
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %246, %201
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local %struct.TYPE_4__* @ath9k_hw_get_nf_limits(%struct.ath_hw*, %struct.ath9k_channel*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ENABLE_REG_RMW_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @IS_CHAN_HT40(%struct.ath9k_channel*) #1

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_RMW_BUFFER_FLUSH(%struct.ath_hw*) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
