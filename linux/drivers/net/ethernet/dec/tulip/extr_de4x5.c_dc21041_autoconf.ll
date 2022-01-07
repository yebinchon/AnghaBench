; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_dc21041_autoconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_dc21041_autoconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i32, i32, i32, i32, i32, i32 }

@DE4X5_AUTOSENSE_MS = common dso_local global i32 0, align 4
@DISABLE_IRQs = common dso_local global i32 0, align 4
@AUTO = common dso_local global i32 0, align 4
@DE4X5_OMR = common dso_local global i32 0, align 4
@OMR_FDX = common dso_local global i32 0, align 4
@STS_LNF = common dso_local global i32 0, align 4
@STS_LNP = common dso_local global i32 0, align 4
@IMR_LFM = common dso_local global i32 0, align 4
@IMR_LPM = common dso_local global i32 0, align 4
@TIMER_CB = common dso_local global i32 0, align 4
@DE4X5_SISR = common dso_local global i32 0, align 4
@SISR_NRA = common dso_local global i32 0, align 4
@SISR_SRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dc21041_autoconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc21041_autoconf(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %11)
  store %struct.de4x5_private* %12, %struct.de4x5_private** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @DE4X5_AUTOSENSE_MS, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %18 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %461 [
    i32 132, label %20
    i32 129, label %76
    i32 138, label %122
    i32 137, label %180
    i32 130, label %183
    i32 128, label %269
    i32 136, label %272
    i32 135, label %343
    i32 134, label %346
    i32 133, label %428
    i32 131, label %431
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @DISABLE_IRQs, align 4
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 2
  store i32 -1, i32* %25, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @de4x5_save_skbs(%struct.net_device* %26)
  %28 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %29 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AUTO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %20
  %34 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %35 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 129
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %20
  %39 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %40 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %39, i32 0, i32 0
  store i32 130, i32* %40, align 4
  br label %71

41:                                               ; preds = %33
  %42 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %43 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %48 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %47, i32 0, i32 0
  store i32 130, i32* %48, align 4
  br label %70

49:                                               ; preds = %41
  %50 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %51 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 134
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %56 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %55, i32 0, i32 0
  store i32 134, i32* %56, align 4
  br label %69

57:                                               ; preds = %49
  %58 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %59 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 136
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %64 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %63, i32 0, i32 0
  store i32 136, i32* %64, align 4
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %67 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %66, i32 0, i32 0
  store i32 131, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %46
  br label %71

71:                                               ; preds = %70, %38
  %72 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %73 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %72, i32 0, i32 4
  store i32 0, i32* %73, align 4
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @dc21041_autoconf(%struct.net_device* %74)
  store i32 %75, i32* %10, align 4
  br label %461

76:                                               ; preds = %1
  %77 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %78 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* @DE4X5_OMR, align 4
  %83 = call i32 @inl(i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @OMR_FDX, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DE4X5_OMR, align 4
  %88 = call i32 @outl(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %76
  %90 = load i32, i32* @STS_LNF, align 4
  %91 = load i32, i32* @STS_LNP, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @IMR_LFM, align 4
  %94 = load i32, i32* @IMR_LPM, align 4
  %95 = or i32 %93, %94
  store i32 %95, i32* %7, align 4
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @test_media(%struct.net_device* %96, i32 %97, i32 %98, i32 61185, i32 65535, i32 8, i32 2400)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %89
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @TIMER_CB, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  store i32 %106, i32* %10, align 4
  br label %121

107:                                              ; preds = %89
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @STS_LNP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %114 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %113, i32 0, i32 0
  store i32 138, i32* %114, align 4
  br label %118

115:                                              ; preds = %107
  %116 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %117 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %116, i32 0, i32 0
  store i32 136, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = call i32 @dc21041_autoconf(%struct.net_device* %119)
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %118, %102
  br label %461

122:                                              ; preds = %1
  %123 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %124 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %164, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* @STS_LNP, align 4
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* @IMR_LPM, align 4
  store i32 %129, i32* %7, align 4
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @test_ans(%struct.net_device* %130, i32 %131, i32 %132, i32 3000)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %127
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @TIMER_CB, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  store i32 %140, i32* %10, align 4
  br label %163

141:                                              ; preds = %127
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @STS_LNP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %157, label %146

146:                                              ; preds = %141
  %147 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %148 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @AUTO, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %146
  %153 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %154 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %153, i32 0, i32 0
  store i32 130, i32* %154, align 4
  %155 = load %struct.net_device*, %struct.net_device** %2, align 8
  %156 = call i32 @dc21041_autoconf(%struct.net_device* %155)
  store i32 %156, i32* %10, align 4
  br label %162

157:                                              ; preds = %146, %141
  %158 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %159 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %158, i32 0, i32 4
  store i32 1, i32* %159, align 4
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = call i32 @de4x5_init_connection(%struct.net_device* %160)
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %136
  br label %179

164:                                              ; preds = %122
  %165 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %166 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %164
  %170 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %171 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @AUTO, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %177 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %176, i32 0, i32 0
  store i32 137, i32* %177, align 4
  store i32 3000, i32* %10, align 4
  br label %178

178:                                              ; preds = %175, %169, %164
  br label %179

179:                                              ; preds = %178, %163
  br label %461

180:                                              ; preds = %1
  %181 = load %struct.net_device*, %struct.net_device** %2, align 8
  %182 = call i32 @de4x5_suspect_state(%struct.net_device* %181, i32 1000, i32 138, i32 (%struct.net_device*, i32)* @test_tp, i32 (%struct.net_device*)* @dc21041_autoconf)
  store i32 %182, i32* %10, align 4
  br label %461

183:                                              ; preds = %1
  %184 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %185 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %253, label %188

188:                                              ; preds = %183
  %189 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %190 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load i32, i32* @DE4X5_OMR, align 4
  %195 = call i32 @inl(i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @OMR_FDX, align 4
  %198 = xor i32 %197, -1
  %199 = and i32 %196, %198
  %200 = load i32, i32* @DE4X5_OMR, align 4
  %201 = call i32 @outl(i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %193, %188
  %203 = load i32, i32* @STS_LNF, align 4
  %204 = load i32, i32* @STS_LNP, align 4
  %205 = or i32 %203, %204
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* @IMR_LFM, align 4
  %207 = load i32, i32* @IMR_LPM, align 4
  %208 = or i32 %206, %207
  store i32 %208, i32* %7, align 4
  %209 = load %struct.net_device*, %struct.net_device** %2, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @test_media(%struct.net_device* %209, i32 %210, i32 %211, i32 61185, i32 65343, i32 8, i32 2400)
  store i32 %212, i32* %5, align 4
  %213 = load i32, i32* %5, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %202
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* @TIMER_CB, align 4
  %218 = xor i32 %217, -1
  %219 = and i32 %216, %218
  store i32 %219, i32* %10, align 4
  br label %252

220:                                              ; preds = %202
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* @STS_LNP, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %246, label %225

225:                                              ; preds = %220
  %226 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %227 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @AUTO, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %246

231:                                              ; preds = %225
  %232 = load i32, i32* @DE4X5_SISR, align 4
  %233 = call i32 @inl(i32 %232)
  %234 = load i32, i32* @SISR_NRA, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %239 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %238, i32 0, i32 0
  store i32 136, i32* %239, align 4
  br label %243

240:                                              ; preds = %231
  %241 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %242 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %241, i32 0, i32 0
  store i32 134, i32* %242, align 4
  br label %243

243:                                              ; preds = %240, %237
  %244 = load %struct.net_device*, %struct.net_device** %2, align 8
  %245 = call i32 @dc21041_autoconf(%struct.net_device* %244)
  store i32 %245, i32* %10, align 4
  br label %251

246:                                              ; preds = %225, %220
  %247 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %248 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %247, i32 0, i32 4
  store i32 1, i32* %248, align 4
  %249 = load %struct.net_device*, %struct.net_device** %2, align 8
  %250 = call i32 @de4x5_init_connection(%struct.net_device* %249)
  br label %251

251:                                              ; preds = %246, %243
  br label %252

252:                                              ; preds = %251, %215
  br label %268

253:                                              ; preds = %183
  %254 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %255 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %253
  %259 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %260 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @AUTO, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %266 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %265, i32 0, i32 0
  store i32 128, i32* %266, align 4
  store i32 3000, i32* %10, align 4
  br label %267

267:                                              ; preds = %264, %258, %253
  br label %268

268:                                              ; preds = %267, %252
  br label %461

269:                                              ; preds = %1
  %270 = load %struct.net_device*, %struct.net_device** %2, align 8
  %271 = call i32 @de4x5_suspect_state(%struct.net_device* %270, i32 1000, i32 130, i32 (%struct.net_device*, i32)* @test_tp, i32 (%struct.net_device*)* @dc21041_autoconf)
  store i32 %271, i32* %10, align 4
  br label %461

272:                                              ; preds = %1
  %273 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %274 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %327, label %277

277:                                              ; preds = %272
  %278 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %279 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %277
  %283 = load i32, i32* @DE4X5_OMR, align 4
  %284 = call i32 @inl(i32 %283)
  store i32 %284, i32* %9, align 4
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* @OMR_FDX, align 4
  %287 = xor i32 %286, -1
  %288 = and i32 %285, %287
  %289 = load i32, i32* @DE4X5_OMR, align 4
  %290 = call i32 @outl(i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %282, %277
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %292 = load %struct.net_device*, %struct.net_device** %2, align 8
  %293 = load i32, i32* %6, align 4
  %294 = load i32, i32* %7, align 4
  %295 = call i32 @test_media(%struct.net_device* %292, i32 %293, i32 %294, i32 61193, i32 63293, i32 14, i32 1000)
  store i32 %295, i32* %5, align 4
  %296 = load i32, i32* %5, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %291
  %299 = load i32, i32* %5, align 4
  %300 = load i32, i32* @TIMER_CB, align 4
  %301 = xor i32 %300, -1
  %302 = and i32 %299, %301
  store i32 %302, i32* %10, align 4
  br label %326

303:                                              ; preds = %291
  %304 = load i32, i32* @DE4X5_SISR, align 4
  %305 = call i32 @inl(i32 %304)
  %306 = load i32, i32* @SISR_SRA, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %320, label %309

309:                                              ; preds = %303
  %310 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %311 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @AUTO, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %320

315:                                              ; preds = %309
  %316 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %317 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %316, i32 0, i32 0
  store i32 134, i32* %317, align 4
  %318 = load %struct.net_device*, %struct.net_device** %2, align 8
  %319 = call i32 @dc21041_autoconf(%struct.net_device* %318)
  store i32 %319, i32* %10, align 4
  br label %325

320:                                              ; preds = %309, %303
  %321 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %322 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %321, i32 0, i32 4
  store i32 1, i32* %322, align 4
  %323 = load %struct.net_device*, %struct.net_device** %2, align 8
  %324 = call i32 @de4x5_init_connection(%struct.net_device* %323)
  br label %325

325:                                              ; preds = %320, %315
  br label %326

326:                                              ; preds = %325, %298
  br label %342

327:                                              ; preds = %272
  %328 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %329 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %341, label %332

332:                                              ; preds = %327
  %333 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %334 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @AUTO, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %332
  %339 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %340 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %339, i32 0, i32 0
  store i32 135, i32* %340, align 4
  store i32 3000, i32* %10, align 4
  br label %341

341:                                              ; preds = %338, %332, %327
  br label %342

342:                                              ; preds = %341, %326
  br label %461

343:                                              ; preds = %1
  %344 = load %struct.net_device*, %struct.net_device** %2, align 8
  %345 = call i32 @de4x5_suspect_state(%struct.net_device* %344, i32 1000, i32 136, i32 (%struct.net_device*, i32)* @ping_media, i32 (%struct.net_device*)* @dc21041_autoconf)
  store i32 %345, i32* %10, align 4
  br label %461

346:                                              ; preds = %1
  %347 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %348 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 4
  switch i32 %349, label %427 [
    i32 0, label %350
    i32 1, label %384
  ]

350:                                              ; preds = %346
  %351 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %352 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %350
  %356 = load i32, i32* @DE4X5_OMR, align 4
  %357 = call i32 @inl(i32 %356)
  store i32 %357, i32* %9, align 4
  %358 = load i32, i32* %9, align 4
  %359 = load i32, i32* @OMR_FDX, align 4
  %360 = xor i32 %359, -1
  %361 = and i32 %358, %360
  %362 = load i32, i32* @DE4X5_OMR, align 4
  %363 = call i32 @outl(i32 %361, i32 %362)
  br label %364

364:                                              ; preds = %355, %350
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %365 = load %struct.net_device*, %struct.net_device** %2, align 8
  %366 = load i32, i32* %6, align 4
  %367 = load i32, i32* %7, align 4
  %368 = call i32 @test_media(%struct.net_device* %365, i32 %366, i32 %367, i32 61193, i32 63293, i32 6, i32 1000)
  store i32 %368, i32* %5, align 4
  %369 = load i32, i32* %5, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %364
  %372 = load i32, i32* %5, align 4
  %373 = load i32, i32* @TIMER_CB, align 4
  %374 = xor i32 %373, -1
  %375 = and i32 %372, %374
  store i32 %375, i32* %10, align 4
  br label %383

376:                                              ; preds = %364
  %377 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %378 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %378, align 4
  %381 = load %struct.net_device*, %struct.net_device** %2, align 8
  %382 = call i32 @dc21041_autoconf(%struct.net_device* %381)
  store i32 %382, i32* %10, align 4
  br label %383

383:                                              ; preds = %376, %371
  br label %427

384:                                              ; preds = %346
  %385 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %386 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %411, label %389

389:                                              ; preds = %384
  %390 = load %struct.net_device*, %struct.net_device** %2, align 8
  %391 = call i32 @ping_media(%struct.net_device* %390, i32 3000)
  store i32 %391, i32* %5, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %389
  %394 = load i32, i32* %5, align 4
  %395 = load i32, i32* @TIMER_CB, align 4
  %396 = xor i32 %395, -1
  %397 = and i32 %394, %396
  store i32 %397, i32* %10, align 4
  br label %410

398:                                              ; preds = %389
  %399 = load i32, i32* %5, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %406

401:                                              ; preds = %398
  %402 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %403 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %402, i32 0, i32 4
  store i32 0, i32* %403, align 4
  %404 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %405 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %404, i32 0, i32 0
  store i32 131, i32* %405, align 4
  br label %409

406:                                              ; preds = %398
  %407 = load %struct.net_device*, %struct.net_device** %2, align 8
  %408 = call i32 @de4x5_init_connection(%struct.net_device* %407)
  br label %409

409:                                              ; preds = %406, %401
  br label %410

410:                                              ; preds = %409, %393
  br label %426

411:                                              ; preds = %384
  %412 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %413 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %425, label %416

416:                                              ; preds = %411
  %417 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %418 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @AUTO, align 4
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %416
  %423 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %424 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %423, i32 0, i32 0
  store i32 133, i32* %424, align 4
  store i32 3000, i32* %10, align 4
  br label %425

425:                                              ; preds = %422, %416, %411
  br label %426

426:                                              ; preds = %425, %410
  br label %427

427:                                              ; preds = %346, %426, %383
  br label %461

428:                                              ; preds = %1
  %429 = load %struct.net_device*, %struct.net_device** %2, align 8
  %430 = call i32 @de4x5_suspect_state(%struct.net_device* %429, i32 1000, i32 134, i32 (%struct.net_device*, i32)* @ping_media, i32 (%struct.net_device*)* @dc21041_autoconf)
  store i32 %430, i32* %10, align 4
  br label %461

431:                                              ; preds = %1
  %432 = load i32, i32* @DE4X5_OMR, align 4
  %433 = call i32 @inl(i32 %432)
  store i32 %433, i32* %9, align 4
  %434 = load i32, i32* %9, align 4
  %435 = load i32, i32* @OMR_FDX, align 4
  %436 = or i32 %434, %435
  %437 = load i32, i32* @DE4X5_OMR, align 4
  %438 = call i32 @outl(i32 %436, i32 %437)
  %439 = load %struct.net_device*, %struct.net_device** %2, align 8
  %440 = call i32 @reset_init_sia(%struct.net_device* %439, i32 61185, i32 65535, i32 8)
  %441 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %442 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %445 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %444, i32 0, i32 5
  %446 = load i32, i32* %445, align 4
  %447 = icmp ne i32 %443, %446
  br i1 %447, label %448, label %456

448:                                              ; preds = %431
  %449 = load %struct.net_device*, %struct.net_device** %2, align 8
  %450 = call i32 @de4x5_dbg_media(%struct.net_device* %449)
  %451 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %452 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %455 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %454, i32 0, i32 5
  store i32 %453, i32* %455, align 4
  br label %456

456:                                              ; preds = %448, %431
  %457 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %458 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %457, i32 0, i32 0
  store i32 132, i32* %458, align 4
  %459 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %460 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %459, i32 0, i32 1
  store i32 0, i32* %460, align 4
  br label %461

461:                                              ; preds = %1, %456, %428, %427, %343, %342, %269, %268, %180, %179, %121, %71
  %462 = load i32, i32* %10, align 4
  ret i32 %462
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @de4x5_save_skbs(%struct.net_device*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @test_media(%struct.net_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @test_ans(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @de4x5_init_connection(%struct.net_device*) #1

declare dso_local i32 @de4x5_suspect_state(%struct.net_device*, i32, i32, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*)*) #1

declare dso_local i32 @test_tp(%struct.net_device*, i32) #1

declare dso_local i32 @ping_media(%struct.net_device*, i32) #1

declare dso_local i32 @reset_init_sia(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @de4x5_dbg_media(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
