; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_set_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_set_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@DMA_MODE_BER = common dso_local global i32 0, align 4
@DMA_MODE_ECC = common dso_local global i32 0, align 4
@FPM_EV_MASK_STALL_EN = common dso_local global i32 0, align 4
@FPM_EV_MASK_SINGLE_ECC_EN = common dso_local global i32 0, align 4
@FPM_EV_MASK_DOUBLE_ECC_EN = common dso_local global i32 0, align 4
@QMI_INTR_EN_SINGLE_ECC = common dso_local global i32 0, align 4
@QMI_ERR_INTR_EN_DOUBLE_ECC = common dso_local global i32 0, align 4
@QMI_ERR_INTR_EN_DEQ_FROM_DEF = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_LIST_RAM_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_STATISTICS_RAM_ECC = common dso_local global i32 0, align 4
@BMI_ERR_INTR_EN_DISPATCH_RAM_ECC = common dso_local global i32 0, align 4
@FPM_IRAM_ECC_ERR_EX_EN = common dso_local global i32 0, align 4
@FPM_MURAM_ECC_ERR_EX_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fman*, i32, i32)* @set_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_exception(%struct.fman* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fman*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fman* %0, %struct.fman** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %362 [
    i32 139, label %10
    i32 137, label %34
    i32 136, label %34
    i32 138, label %34
    i32 133, label %58
    i32 134, label %82
    i32 135, label %106
    i32 128, label %130
    i32 129, label %154
    i32 130, label %178
    i32 142, label %202
    i32 140, label %226
    i32 141, label %250
    i32 143, label %274
    i32 132, label %298
    i32 131, label %330
  ]

10:                                               ; preds = %3
  %11 = load %struct.fman*, %struct.fman** %5, align 8
  %12 = getelementptr inbounds %struct.fman, %struct.fman* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @ioread32be(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @DMA_MODE_BER, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %27

22:                                               ; preds = %10
  %23 = load i32, i32* @DMA_MODE_BER, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.fman*, %struct.fman** %5, align 8
  %30 = getelementptr inbounds %struct.fman, %struct.fman* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = call i32 @iowrite32be(i32 %28, i32* %32)
  br label %365

34:                                               ; preds = %3, %3, %3
  %35 = load %struct.fman*, %struct.fman** %5, align 8
  %36 = getelementptr inbounds %struct.fman, %struct.fman* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @ioread32be(i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @DMA_MODE_ECC, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %51

46:                                               ; preds = %34
  %47 = load i32, i32* @DMA_MODE_ECC, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.fman*, %struct.fman** %5, align 8
  %54 = getelementptr inbounds %struct.fman, %struct.fman* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @iowrite32be(i32 %52, i32* %56)
  br label %365

58:                                               ; preds = %3
  %59 = load %struct.fman*, %struct.fman** %5, align 8
  %60 = getelementptr inbounds %struct.fman, %struct.fman* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = call i32 @ioread32be(i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @FPM_EV_MASK_STALL_EN, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %75

70:                                               ; preds = %58
  %71 = load i32, i32* @FPM_EV_MASK_STALL_EN, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.fman*, %struct.fman** %5, align 8
  %78 = getelementptr inbounds %struct.fman, %struct.fman* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = call i32 @iowrite32be(i32 %76, i32* %80)
  br label %365

82:                                               ; preds = %3
  %83 = load %struct.fman*, %struct.fman** %5, align 8
  %84 = getelementptr inbounds %struct.fman, %struct.fman* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = call i32 @ioread32be(i32* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* @FPM_EV_MASK_SINGLE_ECC_EN, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %99

94:                                               ; preds = %82
  %95 = load i32, i32* @FPM_EV_MASK_SINGLE_ECC_EN, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.fman*, %struct.fman** %5, align 8
  %102 = getelementptr inbounds %struct.fman, %struct.fman* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = call i32 @iowrite32be(i32 %100, i32* %104)
  br label %365

106:                                              ; preds = %3
  %107 = load %struct.fman*, %struct.fman** %5, align 8
  %108 = getelementptr inbounds %struct.fman, %struct.fman* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = call i32 @ioread32be(i32* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* @FPM_EV_MASK_DOUBLE_ECC_EN, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %123

118:                                              ; preds = %106
  %119 = load i32, i32* @FPM_EV_MASK_DOUBLE_ECC_EN, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.fman*, %struct.fman** %5, align 8
  %126 = getelementptr inbounds %struct.fman, %struct.fman* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = call i32 @iowrite32be(i32 %124, i32* %128)
  br label %365

130:                                              ; preds = %3
  %131 = load %struct.fman*, %struct.fman** %5, align 8
  %132 = getelementptr inbounds %struct.fman, %struct.fman* %131, i32 0, i32 2
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = call i32 @ioread32be(i32* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* @QMI_INTR_EN_SINGLE_ECC, align 4
  %140 = load i32, i32* %8, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %8, align 4
  br label %147

142:                                              ; preds = %130
  %143 = load i32, i32* @QMI_INTR_EN_SINGLE_ECC, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %8, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %142, %138
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.fman*, %struct.fman** %5, align 8
  %150 = getelementptr inbounds %struct.fman, %struct.fman* %149, i32 0, i32 2
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = call i32 @iowrite32be(i32 %148, i32* %152)
  br label %365

154:                                              ; preds = %3
  %155 = load %struct.fman*, %struct.fman** %5, align 8
  %156 = getelementptr inbounds %struct.fman, %struct.fman* %155, i32 0, i32 2
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = call i32 @ioread32be(i32* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i32, i32* @QMI_ERR_INTR_EN_DOUBLE_ECC, align 4
  %164 = load i32, i32* %8, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %171

166:                                              ; preds = %154
  %167 = load i32, i32* @QMI_ERR_INTR_EN_DOUBLE_ECC, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %8, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %166, %162
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.fman*, %struct.fman** %5, align 8
  %174 = getelementptr inbounds %struct.fman, %struct.fman* %173, i32 0, i32 2
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = call i32 @iowrite32be(i32 %172, i32* %176)
  br label %365

178:                                              ; preds = %3
  %179 = load %struct.fman*, %struct.fman** %5, align 8
  %180 = getelementptr inbounds %struct.fman, %struct.fman* %179, i32 0, i32 2
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = call i32 @ioread32be(i32* %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load i32, i32* @QMI_ERR_INTR_EN_DEQ_FROM_DEF, align 4
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  br label %195

190:                                              ; preds = %178
  %191 = load i32, i32* @QMI_ERR_INTR_EN_DEQ_FROM_DEF, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %8, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %190, %186
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.fman*, %struct.fman** %5, align 8
  %198 = getelementptr inbounds %struct.fman, %struct.fman* %197, i32 0, i32 2
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = call i32 @iowrite32be(i32 %196, i32* %200)
  br label %365

202:                                              ; preds = %3
  %203 = load %struct.fman*, %struct.fman** %5, align 8
  %204 = getelementptr inbounds %struct.fman, %struct.fman* %203, i32 0, i32 1
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = call i32 @ioread32be(i32* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %202
  %211 = load i32, i32* @BMI_ERR_INTR_EN_LIST_RAM_ECC, align 4
  %212 = load i32, i32* %8, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %8, align 4
  br label %219

214:                                              ; preds = %202
  %215 = load i32, i32* @BMI_ERR_INTR_EN_LIST_RAM_ECC, align 4
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %8, align 4
  %218 = and i32 %217, %216
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %214, %210
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.fman*, %struct.fman** %5, align 8
  %222 = getelementptr inbounds %struct.fman, %struct.fman* %221, i32 0, i32 1
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = call i32 @iowrite32be(i32 %220, i32* %224)
  br label %365

226:                                              ; preds = %3
  %227 = load %struct.fman*, %struct.fman** %5, align 8
  %228 = getelementptr inbounds %struct.fman, %struct.fman* %227, i32 0, i32 1
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = call i32 @ioread32be(i32* %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %7, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %226
  %235 = load i32, i32* @BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC, align 4
  %236 = load i32, i32* %8, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %8, align 4
  br label %243

238:                                              ; preds = %226
  %239 = load i32, i32* @BMI_ERR_INTR_EN_STORAGE_PROFILE_ECC, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %8, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %238, %234
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.fman*, %struct.fman** %5, align 8
  %246 = getelementptr inbounds %struct.fman, %struct.fman* %245, i32 0, i32 1
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = call i32 @iowrite32be(i32 %244, i32* %248)
  br label %365

250:                                              ; preds = %3
  %251 = load %struct.fman*, %struct.fman** %5, align 8
  %252 = getelementptr inbounds %struct.fman, %struct.fman* %251, i32 0, i32 1
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = call i32 @ioread32be(i32* %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %250
  %259 = load i32, i32* @BMI_ERR_INTR_EN_STATISTICS_RAM_ECC, align 4
  %260 = load i32, i32* %8, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %8, align 4
  br label %267

262:                                              ; preds = %250
  %263 = load i32, i32* @BMI_ERR_INTR_EN_STATISTICS_RAM_ECC, align 4
  %264 = xor i32 %263, -1
  %265 = load i32, i32* %8, align 4
  %266 = and i32 %265, %264
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %262, %258
  %268 = load i32, i32* %8, align 4
  %269 = load %struct.fman*, %struct.fman** %5, align 8
  %270 = getelementptr inbounds %struct.fman, %struct.fman* %269, i32 0, i32 1
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  %273 = call i32 @iowrite32be(i32 %268, i32* %272)
  br label %365

274:                                              ; preds = %3
  %275 = load %struct.fman*, %struct.fman** %5, align 8
  %276 = getelementptr inbounds %struct.fman, %struct.fman* %275, i32 0, i32 1
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = call i32 @ioread32be(i32* %278)
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %7, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %274
  %283 = load i32, i32* @BMI_ERR_INTR_EN_DISPATCH_RAM_ECC, align 4
  %284 = load i32, i32* %8, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %8, align 4
  br label %291

286:                                              ; preds = %274
  %287 = load i32, i32* @BMI_ERR_INTR_EN_DISPATCH_RAM_ECC, align 4
  %288 = xor i32 %287, -1
  %289 = load i32, i32* %8, align 4
  %290 = and i32 %289, %288
  store i32 %290, i32* %8, align 4
  br label %291

291:                                              ; preds = %286, %282
  %292 = load i32, i32* %8, align 4
  %293 = load %struct.fman*, %struct.fman** %5, align 8
  %294 = getelementptr inbounds %struct.fman, %struct.fman* %293, i32 0, i32 1
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = call i32 @iowrite32be(i32 %292, i32* %296)
  br label %365

298:                                              ; preds = %3
  %299 = load %struct.fman*, %struct.fman** %5, align 8
  %300 = getelementptr inbounds %struct.fman, %struct.fman* %299, i32 0, i32 0
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 0
  %303 = call i32 @ioread32be(i32* %302)
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* %7, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %298
  %307 = load %struct.fman*, %struct.fman** %5, align 8
  %308 = getelementptr inbounds %struct.fman, %struct.fman* %307, i32 0, i32 0
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = call i32 @enable_rams_ecc(%struct.TYPE_9__* %309)
  %311 = load i32, i32* @FPM_IRAM_ECC_ERR_EX_EN, align 4
  %312 = load i32, i32* %8, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %8, align 4
  br label %323

314:                                              ; preds = %298
  %315 = load %struct.fman*, %struct.fman** %5, align 8
  %316 = getelementptr inbounds %struct.fman, %struct.fman* %315, i32 0, i32 0
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %316, align 8
  %318 = call i32 @disable_rams_ecc(%struct.TYPE_9__* %317)
  %319 = load i32, i32* @FPM_IRAM_ECC_ERR_EX_EN, align 4
  %320 = xor i32 %319, -1
  %321 = load i32, i32* %8, align 4
  %322 = and i32 %321, %320
  store i32 %322, i32* %8, align 4
  br label %323

323:                                              ; preds = %314, %306
  %324 = load i32, i32* %8, align 4
  %325 = load %struct.fman*, %struct.fman** %5, align 8
  %326 = getelementptr inbounds %struct.fman, %struct.fman* %325, i32 0, i32 0
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = call i32 @iowrite32be(i32 %324, i32* %328)
  br label %365

330:                                              ; preds = %3
  %331 = load %struct.fman*, %struct.fman** %5, align 8
  %332 = getelementptr inbounds %struct.fman, %struct.fman* %331, i32 0, i32 0
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = call i32 @ioread32be(i32* %334)
  store i32 %335, i32* %8, align 4
  %336 = load i32, i32* %7, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %330
  %339 = load %struct.fman*, %struct.fman** %5, align 8
  %340 = getelementptr inbounds %struct.fman, %struct.fman* %339, i32 0, i32 0
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %340, align 8
  %342 = call i32 @enable_rams_ecc(%struct.TYPE_9__* %341)
  %343 = load i32, i32* @FPM_MURAM_ECC_ERR_EX_EN, align 4
  %344 = load i32, i32* %8, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %8, align 4
  br label %355

346:                                              ; preds = %330
  %347 = load %struct.fman*, %struct.fman** %5, align 8
  %348 = getelementptr inbounds %struct.fman, %struct.fman* %347, i32 0, i32 0
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %348, align 8
  %350 = call i32 @disable_rams_ecc(%struct.TYPE_9__* %349)
  %351 = load i32, i32* @FPM_MURAM_ECC_ERR_EX_EN, align 4
  %352 = xor i32 %351, -1
  %353 = load i32, i32* %8, align 4
  %354 = and i32 %353, %352
  store i32 %354, i32* %8, align 4
  br label %355

355:                                              ; preds = %346, %338
  %356 = load i32, i32* %8, align 4
  %357 = load %struct.fman*, %struct.fman** %5, align 8
  %358 = getelementptr inbounds %struct.fman, %struct.fman* %357, i32 0, i32 0
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 0
  %361 = call i32 @iowrite32be(i32 %356, i32* %360)
  br label %365

362:                                              ; preds = %3
  %363 = load i32, i32* @EINVAL, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %4, align 4
  br label %366

365:                                              ; preds = %355, %323, %291, %267, %243, %219, %195, %171, %147, %123, %99, %75, %51, %27
  store i32 0, i32* %4, align 4
  br label %366

366:                                              ; preds = %365, %362
  %367 = load i32, i32* %4, align 4
  ret i32 %367
}

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @enable_rams_ecc(%struct.TYPE_9__*) #1

declare dso_local i32 @disable_rams_ecc(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
