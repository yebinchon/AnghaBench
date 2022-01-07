; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_spmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_spmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_debug_params = type { i64, i32*, i32, %struct.hl_debug_params_spmu*, i64 }
%struct.hl_debug_params_spmu = type { i32, i32* }

@debug_spmu_regs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Invalid register index in SPMU\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"not enough event types values for SPMU enable\0A\00", align 1
@SPMU_MAX_COUNTERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"too many event types values for SPMU enable\0A\00", align 1
@SPMU_EVENT_TYPES_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"not enough values for SPMU disable\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"too many events values for SPMU disable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_debug_params*)* @goya_config_spmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_config_spmu(%struct.hl_device* %0, %struct.hl_debug_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_debug_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hl_debug_params_spmu*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_debug_params* %1, %struct.hl_debug_params** %5, align 8
  %14 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %15 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %14, i32 0, i32 3
  %16 = load %struct.hl_debug_params_spmu*, %struct.hl_debug_params_spmu** %15, align 8
  store %struct.hl_debug_params_spmu* %16, %struct.hl_debug_params_spmu** %7, align 8
  %17 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %18 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32*, i32** @debug_spmu_regs, align 8
  %21 = call i64 @ARRAY_SIZE(i32* %20)
  %22 = icmp uge i64 %19, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %210

30:                                               ; preds = %2
  %31 = load i32*, i32** @debug_spmu_regs, align 8
  %32 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %33 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CFG_BASE, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %40 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %115

43:                                               ; preds = %30
  %44 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %45 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %44, i32 0, i32 3
  %46 = load %struct.hl_debug_params_spmu*, %struct.hl_debug_params_spmu** %45, align 8
  store %struct.hl_debug_params_spmu* %46, %struct.hl_debug_params_spmu** %7, align 8
  %47 = load %struct.hl_debug_params_spmu*, %struct.hl_debug_params_spmu** %7, align 8
  %48 = icmp ne %struct.hl_debug_params_spmu* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %210

52:                                               ; preds = %43
  %53 = load %struct.hl_debug_params_spmu*, %struct.hl_debug_params_spmu** %7, align 8
  %54 = getelementptr inbounds %struct.hl_debug_params_spmu, %struct.hl_debug_params_spmu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %210

64:                                               ; preds = %52
  %65 = load %struct.hl_debug_params_spmu*, %struct.hl_debug_params_spmu** %7, align 8
  %66 = getelementptr inbounds %struct.hl_debug_params_spmu, %struct.hl_debug_params_spmu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SPMU_MAX_COUNTERS, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %72 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %210

77:                                               ; preds = %64
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 3588
  %80 = call i32 @WREG32(i32 %79, i32 1090596934)
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 3588
  %83 = call i32 @WREG32(i32 %82, i32 1090596928)
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %105, %77
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.hl_debug_params_spmu*, %struct.hl_debug_params_spmu** %7, align 8
  %87 = getelementptr inbounds %struct.hl_debug_params_spmu, %struct.hl_debug_params_spmu* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @SPMU_EVENT_TYPES_OFFSET, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i32, i32* %13, align 4
  %95 = mul nsw i32 %94, 4
  %96 = add nsw i32 %93, %95
  %97 = load %struct.hl_debug_params_spmu*, %struct.hl_debug_params_spmu** %7, align 8
  %98 = getelementptr inbounds %struct.hl_debug_params_spmu, %struct.hl_debug_params_spmu* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @WREG32(i32 %96, i32 %103)
  br label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %84

108:                                              ; preds = %84
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 3588
  %111 = call i32 @WREG32(i32 %110, i32 1090596929)
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 3072
  %114 = call i32 @WREG32(i32 %113, i32 -2147483585)
  br label %209

115:                                              ; preds = %30
  %116 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %117 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %8, align 8
  %119 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %120 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sdiv i32 %121, 8
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = sub nsw i32 %123, 2
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 2
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %115
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %210

134:                                              ; preds = %115
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 3
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %139 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %210

144:                                              ; preds = %134
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @SPMU_MAX_COUNTERS, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %150 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dev_err(i32 %151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %210

155:                                              ; preds = %144
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 3588
  %158 = call i32 @WREG32(i32 %157, i32 1090596928)
  store i32 0, i32* %13, align 4
  br label %159

159:                                              ; preds = %173, %155
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %176

163:                                              ; preds = %159
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %13, align 4
  %166 = mul nsw i32 %165, 8
  %167 = add nsw i32 %164, %166
  %168 = call i32 @RREG32(i32 %167)
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  br label %173

173:                                              ; preds = %163
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %159

176:                                              ; preds = %159
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 3264
  %179 = call i32 @RREG32(i32 %178)
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %179, i32* %183, align 4
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 252
  %186 = call i32 @RREG32(i32 %185)
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  store i32 %186, i32* %190, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 32
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 248
  %199 = call i32 @RREG32(i32 %198)
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %199
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 3264
  %208 = call i32 @WREG32(i32 %207, i32 0)
  br label %209

209:                                              ; preds = %176, %108
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %148, %137, %131, %70, %57, %49, %23
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
