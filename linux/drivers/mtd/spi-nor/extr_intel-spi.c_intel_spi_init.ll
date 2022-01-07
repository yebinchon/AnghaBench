; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_spi = type { i32, i32, i32, i32, i32, i32*, i64, i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@BYT_SSFSTS_CTL = common dso_local global i64 0, align 8
@BYT_PR = common dso_local global i64 0, align 8
@BYT_FREG_NUM = common dso_local global i32 0, align 4
@BYT_PR_NUM = common dso_local global i32 0, align 4
@writeable = common dso_local global i32 0, align 4
@BYT_BCR = common dso_local global i64 0, align 8
@BYT_BCR_WPD = common dso_local global i32 0, align 4
@LPT_SSFSTS_CTL = common dso_local global i64 0, align 8
@LPT_PR = common dso_local global i64 0, align 8
@LPT_FREG_NUM = common dso_local global i32 0, align 4
@LPT_PR_NUM = common dso_local global i32 0, align 4
@BXT_SSFSTS_CTL = common dso_local global i64 0, align 8
@BXT_PR = common dso_local global i64 0, align 8
@BXT_FREG_NUM = common dso_local global i32 0, align 4
@BXT_PR_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HSFSTS_CTL = common dso_local global i64 0, align 8
@HSFSTS_CTL_FSMIE = common dso_local global i32 0, align 4
@LVSCC = common dso_local global i64 0, align 8
@UVSCC = common dso_local global i64 0, align 8
@ERASE_OPCODE_MASK = common dso_local global i32 0, align 4
@ERASE_64K_OPCODE_MASK = common dso_local global i32 0, align 4
@SSFSTS_CTL = common dso_local global i64 0, align 8
@SSFSTS_CTL_FSMIE = common dso_local global i32 0, align 4
@HSFSTS_CTL_FLOCKDN = common dso_local global i32 0, align 4
@OPMENU0 = common dso_local global i64 0, align 8
@OPMENU1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_spi*)* @intel_spi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_spi_init(%struct.intel_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_spi* %0, %struct.intel_spi** %3, align 8
  %10 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %11 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %10, i32 0, i32 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %125 [
    i32 129, label %15
    i32 128, label %79
    i32 130, label %102
  ]

15:                                               ; preds = %1
  %16 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %17 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BYT_SSFSTS_CTL, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %22 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %21, i32 0, i32 6
  store i64 %20, i64* %22, align 8
  %23 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %24 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BYT_PR, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %29 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %28, i32 0, i32 11
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @BYT_FREG_NUM, align 4
  %31 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %32 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @BYT_PR_NUM, align 4
  %34 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %35 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %37 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* @writeable, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %15
  %41 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %42 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BYT_BCR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @BYT_BCR_WPD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @BYT_BCR_WPD, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %57 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BYT_BCR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %63 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BYT_BCR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl(i64 %66)
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %51, %40
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @BYT_BCR_WPD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %77 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %15
  br label %128

79:                                               ; preds = %1
  %80 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %81 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @LPT_SSFSTS_CTL, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %86 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %85, i32 0, i32 6
  store i64 %84, i64* %86, align 8
  %87 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %88 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @LPT_PR, align 8
  %91 = add nsw i64 %89, %90
  %92 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %93 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %92, i32 0, i32 11
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @LPT_FREG_NUM, align 4
  %95 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %96 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %95, i32 0, i32 10
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @LPT_PR_NUM, align 4
  %98 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %99 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %98, i32 0, i32 9
  store i32 %97, i32* %99, align 8
  %100 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %101 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  br label %128

102:                                              ; preds = %1
  %103 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %104 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @BXT_SSFSTS_CTL, align 8
  %107 = add nsw i64 %105, %106
  %108 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %109 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %108, i32 0, i32 6
  store i64 %107, i64* %109, align 8
  %110 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %111 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BXT_PR, align 8
  %114 = add nsw i64 %112, %113
  %115 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %116 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %115, i32 0, i32 11
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* @BXT_FREG_NUM, align 4
  %118 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %119 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @BXT_PR_NUM, align 4
  %121 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %122 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 8
  %123 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %124 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  br label %128

125:                                              ; preds = %1
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %296

128:                                              ; preds = %102, %79, %78
  %129 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %130 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HSFSTS_CTL, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @readl(i64 %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @HSFSTS_CTL_FSMIE, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %141 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @HSFSTS_CTL, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  %146 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %147 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @LVSCC, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @readl(i64 %150)
  store i32 %151, i32* %6, align 4
  %152 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %153 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @UVSCC, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @readl(i64 %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @ERASE_OPCODE_MASK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %128
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @ERASE_OPCODE_MASK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %162, %128
  %168 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %169 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %168, i32 0, i32 3
  store i32 1, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %162
  %171 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %172 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %171, i32 0, i32 8
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 130
  br i1 %176, label %177, label %196

177:                                              ; preds = %170
  %178 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %179 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @ERASE_64K_OPCODE_MASK, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @ERASE_64K_OPCODE_MASK, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %187, %182
  %193 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %194 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %193, i32 0, i32 2
  store i32 0, i32* %194, align 8
  br label %195

195:                                              ; preds = %192, %187
  br label %196

196:                                              ; preds = %195, %177, %170
  %197 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %198 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %219

201:                                              ; preds = %196
  %202 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %203 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @SSFSTS_CTL, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @readl(i64 %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* @SSFSTS_CTL_FSMIE, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %8, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %214 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @SSFSTS_CTL, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @writel(i32 %212, i64 %217)
  br label %219

219:                                              ; preds = %201, %196
  %220 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %221 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %220, i32 0, i32 7
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @HSFSTS_CTL, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @readl(i64 %224)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @HSFSTS_CTL_FLOCKDN, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %234 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 8
  %235 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %236 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %293

239:                                              ; preds = %219
  %240 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %241 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %240, i32 0, i32 6
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @OPMENU0, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i32 @readl(i64 %244)
  store i32 %245, i32* %4, align 4
  %246 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %247 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @OPMENU1, align 8
  %250 = add nsw i64 %248, %249
  %251 = call i32 @readl(i64 %250)
  store i32 %251, i32* %5, align 4
  %252 = load i32, i32* %4, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %292

254:                                              ; preds = %239
  %255 = load i32, i32* %5, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %292

257:                                              ; preds = %254
  store i32 0, i32* %9, align 4
  br label %258

258:                                              ; preds = %288, %257
  %259 = load i32, i32* %9, align 4
  %260 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %261 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %260, i32 0, i32 5
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @ARRAY_SIZE(i32* %262)
  %264 = sdiv i32 %263, 2
  %265 = icmp slt i32 %259, %264
  br i1 %265, label %266, label %291

266:                                              ; preds = %258
  %267 = load i32, i32* %4, align 4
  %268 = load i32, i32* %9, align 4
  %269 = mul nsw i32 %268, 8
  %270 = ashr i32 %267, %269
  %271 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %272 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %271, i32 0, i32 5
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32 %270, i32* %276, align 4
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* %9, align 4
  %279 = mul nsw i32 %278, 8
  %280 = ashr i32 %277, %279
  %281 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %282 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %281, i32 0, i32 5
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  store i32 %280, i32* %287, align 4
  br label %288

288:                                              ; preds = %266
  %289 = load i32, i32* %9, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %9, align 4
  br label %258

291:                                              ; preds = %258
  br label %292

292:                                              ; preds = %291, %254, %239
  br label %293

293:                                              ; preds = %292, %219
  %294 = load %struct.intel_spi*, %struct.intel_spi** %3, align 8
  %295 = call i32 @intel_spi_dump_regs(%struct.intel_spi* %294)
  store i32 0, i32* %2, align 4
  br label %296

296:                                              ; preds = %293, %125
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @intel_spi_dump_regs(%struct.intel_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
