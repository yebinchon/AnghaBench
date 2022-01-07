; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_init_cm_dll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_init_cm_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i64, %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i64, i32, %struct.sdhci_msm_offset* }
%struct.sdhci_msm_offset = type { i64, i64, i64, i64 }

@CORE_CLK_PWRSAVE = common dso_local global i32 0, align 4
@CORE_CK_OUT_EN = common dso_local global i32 0, align 4
@CORE_DLL_CLOCK_DISABLE = common dso_local global i32 0, align 4
@CORE_DLL_RST = common dso_local global i32 0, align 4
@CORE_DLL_PDN = common dso_local global i32 0, align 4
@CORE_FLL_CYCLE_CNT = common dso_local global i32 0, align 4
@CORE_DLL_EN = common dso_local global i32 0, align 4
@CORE_DLL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: DLL failed to LOCK\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @msm_init_cm_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_init_cm_dll(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_msm_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sdhci_msm_offset*, align 8
  %12 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 3
  %15 = load %struct.mmc_host*, %struct.mmc_host** %14, align 8
  store %struct.mmc_host* %15, %struct.mmc_host** %4, align 8
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %16)
  store %struct.sdhci_pltfm_host* %17, %struct.sdhci_pltfm_host** %5, align 8
  %18 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %19 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %18)
  store %struct.sdhci_msm_host* %19, %struct.sdhci_msm_host** %6, align 8
  store i32 50, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %20 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %21 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %20, i32 0, i32 2
  %22 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %21, align 8
  store %struct.sdhci_msm_offset* %22, %struct.sdhci_msm_offset** %11, align 8
  %23 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %24 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %29 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IS_ERR_OR_NULL(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %35 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @clk_get_rate(i32 %36)
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %33, %27, %1
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %47 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call i32 @readl_relaxed(i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @CORE_CLK_PWRSAVE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %57 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %60 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = call i32 @writel_relaxed(i32 %55, i64 %62)
  %64 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %65 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %110

68:                                               ; preds = %38
  %69 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %70 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %73 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = call i32 @readl_relaxed(i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* @CORE_CK_OUT_EN, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %86 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = call i32 @writel_relaxed(i32 %81, i64 %88)
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %91 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %94 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = call i32 @readl_relaxed(i64 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* @CORE_DLL_CLOCK_DISABLE, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %103 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %106 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = call i32 @writel_relaxed(i32 %101, i64 %108)
  br label %110

110:                                              ; preds = %68, %38
  %111 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %112 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %115 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = call i32 @readl_relaxed(i64 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* @CORE_DLL_RST, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %124 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %127 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %125, %128
  %130 = call i32 @writel_relaxed(i32 %122, i64 %129)
  %131 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %132 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %135 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = call i32 @readl_relaxed(i64 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* @CORE_DLL_PDN, align 4
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %144 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %147 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %145, %148
  %150 = call i32 @writel_relaxed(i32 %142, i64 %149)
  %151 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %152 = call i32 @msm_cm_dll_set_freq(%struct.sdhci_host* %151)
  %153 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %154 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %216

157:                                              ; preds = %110
  %158 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %159 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @IS_ERR_OR_NULL(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %216, label %163

163:                                              ; preds = %157
  store i32 0, i32* %12, align 4
  %164 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %165 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %168 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = call i32 @readl_relaxed(i64 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* @CORE_FLL_CYCLE_CNT, align 4
  %173 = load i32, i32* %10, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %163
  %178 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %179 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = mul nsw i32 %180, 8
  %182 = load i64, i64* %9, align 8
  %183 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %181, i64 %182)
  store i32 %183, i32* %12, align 4
  br label %191

184:                                              ; preds = %163
  %185 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %186 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = mul nsw i32 %187, 4
  %189 = load i64, i64* %9, align 8
  %190 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %188, i64 %189)
  store i32 %190, i32* %12, align 4
  br label %191

191:                                              ; preds = %184, %177
  %192 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %193 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %196 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %194, %197
  %199 = call i32 @readl_relaxed(i64 %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = and i32 %200, -261121
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %12, align 4
  %203 = shl i32 %202, 10
  %204 = load i32, i32* %10, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %208 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %211 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %209, %212
  %214 = call i32 @writel_relaxed(i32 %206, i64 %213)
  %215 = call i32 @udelay(i32 5)
  br label %216

216:                                              ; preds = %191, %157, %110
  %217 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %218 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %221 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %219, %222
  %224 = call i32 @readl_relaxed(i64 %223)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* @CORE_DLL_RST, align 4
  %226 = xor i32 %225, -1
  %227 = load i32, i32* %10, align 4
  %228 = and i32 %227, %226
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %231 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %234 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %232, %235
  %237 = call i32 @writel_relaxed(i32 %229, i64 %236)
  %238 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %239 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %242 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %240, %243
  %245 = call i32 @readl_relaxed(i64 %244)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* @CORE_DLL_PDN, align 4
  %247 = xor i32 %246, -1
  %248 = load i32, i32* %10, align 4
  %249 = and i32 %248, %247
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* %10, align 4
  %251 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %252 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %255 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %253, %256
  %258 = call i32 @writel_relaxed(i32 %250, i64 %257)
  %259 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %260 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %287

263:                                              ; preds = %216
  %264 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %265 = call i32 @msm_cm_dll_set_freq(%struct.sdhci_host* %264)
  %266 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %267 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %270 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %268, %271
  %273 = call i32 @readl_relaxed(i64 %272)
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* @CORE_DLL_CLOCK_DISABLE, align 4
  %275 = xor i32 %274, -1
  %276 = load i32, i32* %10, align 4
  %277 = and i32 %276, %275
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %280 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %283 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %281, %284
  %286 = call i32 @writel_relaxed(i32 %278, i64 %285)
  br label %287

287:                                              ; preds = %263, %216
  %288 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %289 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %292 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = add nsw i64 %290, %293
  %295 = call i32 @readl_relaxed(i64 %294)
  store i32 %295, i32* %10, align 4
  %296 = load i32, i32* @CORE_DLL_EN, align 4
  %297 = load i32, i32* %10, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %10, align 4
  %300 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %301 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %304 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %302, %305
  %307 = call i32 @writel_relaxed(i32 %299, i64 %306)
  %308 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %309 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %312 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = add nsw i64 %310, %313
  %315 = call i32 @readl_relaxed(i64 %314)
  store i32 %315, i32* %10, align 4
  %316 = load i32, i32* @CORE_CK_OUT_EN, align 4
  %317 = load i32, i32* %10, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %10, align 4
  %319 = load i32, i32* %10, align 4
  %320 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %321 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %324 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %322, %325
  %327 = call i32 @writel_relaxed(i32 %319, i64 %326)
  br label %328

328:                                              ; preds = %357, %287
  %329 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %330 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  %333 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = add nsw i64 %331, %334
  %336 = call i32 @readl_relaxed(i64 %335)
  %337 = load i32, i32* @CORE_DLL_LOCK, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  %340 = xor i1 %339, true
  br i1 %340, label %341, label %359

341:                                              ; preds = %328
  %342 = load i32, i32* %7, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %7, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %357

345:                                              ; preds = %341
  %346 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %347 = call i32 @mmc_dev(%struct.mmc_host* %346)
  %348 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %349 = call i32 @mmc_hostname(%struct.mmc_host* %348)
  %350 = call i32 @dev_err(i32 %347, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %349)
  %351 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %352 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %351, i32 0, i32 1
  %353 = load i64, i64* %8, align 8
  %354 = call i32 @spin_unlock_irqrestore(i32* %352, i64 %353)
  %355 = load i32, i32* @ETIMEDOUT, align 4
  %356 = sub nsw i32 0, %355
  store i32 %356, i32* %2, align 4
  br label %364

357:                                              ; preds = %341
  %358 = call i32 @udelay(i32 1)
  br label %328

359:                                              ; preds = %328
  %360 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %361 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %360, i32 0, i32 1
  %362 = load i64, i64* %8, align 8
  %363 = call i32 @spin_unlock_irqrestore(i32* %361, i64 %362)
  store i32 0, i32* %2, align 4
  br label %364

364:                                              ; preds = %359, %345
  %365 = load i32, i32* %2, align 4
  ret i32 %365
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @msm_cm_dll_set_freq(%struct.sdhci_host*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
