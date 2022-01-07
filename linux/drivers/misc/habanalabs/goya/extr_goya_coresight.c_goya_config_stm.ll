; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_stm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_stm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_debug_params = type { i64, %struct.hl_debug_params_stm*, i64 }
%struct.hl_debug_params_stm = type { i32, i32, i32, i32 }

@debug_stm_regs = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Invalid register index in STM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@CORESIGHT_UNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to disable STM on timeout, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_debug_params*)* @goya_config_stm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_config_stm(%struct.hl_device* %0, %struct.hl_debug_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_debug_params*, align 8
  %6 = alloca %struct.hl_debug_params_stm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_debug_params* %1, %struct.hl_debug_params** %5, align 8
  %9 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %10 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64*, i64** @debug_stm_regs, align 8
  %13 = call i64 @ARRAY_SIZE(i64* %12)
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %17 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %188

22:                                               ; preds = %2
  %23 = load i64*, i64** @debug_stm_regs, align 8
  %24 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %25 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CFG_BASE, align 8
  %30 = sub nsw i64 %28, %29
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, 4016
  %33 = load i32, i32* @CORESIGHT_UNLOCK, align 4
  %34 = call i32 @WREG32(i64 %32, i32 %33)
  %35 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %36 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %130

39:                                               ; preds = %22
  %40 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %41 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %40, i32 0, i32 1
  %42 = load %struct.hl_debug_params_stm*, %struct.hl_debug_params_stm** %41, align 8
  store %struct.hl_debug_params_stm* %42, %struct.hl_debug_params_stm** %6, align 8
  %43 = load %struct.hl_debug_params_stm*, %struct.hl_debug_params_stm** %6, align 8
  %44 = icmp ne %struct.hl_debug_params_stm* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %188

48:                                               ; preds = %39
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, 3712
  %51 = call i32 @WREG32(i64 %50, i32 524292)
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, 3428
  %54 = call i32 @WREG32(i64 %53, i32 7)
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, 3424
  %57 = call i32 @WREG32(i64 %56, i32 0)
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %58, 3328
  %60 = load %struct.hl_debug_params_stm*, %struct.hl_debug_params_stm** %6, align 8
  %61 = getelementptr inbounds %struct.hl_debug_params_stm, %struct.hl_debug_params_stm* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lower_32_bits(i32 %62)
  %64 = call i32 @WREG32(i64 %59, i32 %63)
  %65 = load i64, i64* %7, align 8
  %66 = add nsw i64 %65, 3360
  %67 = load %struct.hl_debug_params_stm*, %struct.hl_debug_params_stm** %6, align 8
  %68 = getelementptr inbounds %struct.hl_debug_params_stm, %struct.hl_debug_params_stm* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @lower_32_bits(i32 %69)
  %71 = call i32 @WREG32(i64 %66, i32 %70)
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, 3424
  %74 = call i32 @WREG32(i64 %73, i32 1)
  %75 = load i64, i64* %7, align 8
  %76 = add nsw i64 %75, 3328
  %77 = load %struct.hl_debug_params_stm*, %struct.hl_debug_params_stm** %6, align 8
  %78 = getelementptr inbounds %struct.hl_debug_params_stm, %struct.hl_debug_params_stm* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @upper_32_bits(i32 %79)
  %81 = call i32 @WREG32(i64 %76, i32 %80)
  %82 = load i64, i64* %7, align 8
  %83 = add nsw i64 %82, 3360
  %84 = load %struct.hl_debug_params_stm*, %struct.hl_debug_params_stm** %6, align 8
  %85 = getelementptr inbounds %struct.hl_debug_params_stm, %struct.hl_debug_params_stm* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @upper_32_bits(i32 %86)
  %88 = call i32 @WREG32(i64 %83, i32 %87)
  %89 = load i64, i64* %7, align 8
  %90 = add nsw i64 %89, 3696
  %91 = call i32 @WREG32(i64 %90, i32 16)
  %92 = load i64, i64* %7, align 8
  %93 = add nsw i64 %92, 3680
  %94 = call i32 @WREG32(i64 %93, i32 0)
  %95 = load i64, i64* %7, align 8
  %96 = add nsw i64 %95, 3684
  %97 = call i32 @WREG32(i64 %96, i32 4325376)
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %98, 3584
  %100 = call i32 @WREG32(i64 %99, i32 -1)
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, 3616
  %103 = call i32 @WREG32(i64 %102, i32 -1)
  %104 = load i64, i64* %7, align 8
  %105 = add nsw i64 %104, 3828
  %106 = load %struct.hl_debug_params_stm*, %struct.hl_debug_params_stm** %6, align 8
  %107 = getelementptr inbounds %struct.hl_debug_params_stm, %struct.hl_debug_params_stm* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @WREG32(i64 %105, i32 %108)
  %110 = load i64, i64* %7, align 8
  %111 = add nsw i64 %110, 3572
  %112 = call i32 @WREG32(i64 %111, i32 128)
  %113 = load i64, i64* %7, align 8
  %114 = add nsw i64 %113, 3724
  %115 = load %struct.hl_debug_params_stm*, %struct.hl_debug_params_stm** %6, align 8
  %116 = getelementptr inbounds %struct.hl_debug_params_stm, %struct.hl_debug_params_stm* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @WREG32(i64 %114, i32 %117)
  %119 = load i64, i64* %7, align 8
  %120 = add nsw i64 %119, 3728
  %121 = call i32 @WREG32(i64 %120, i32 2047)
  %122 = load i64, i64* %7, align 8
  %123 = add nsw i64 %122, 3712
  %124 = load %struct.hl_debug_params_stm*, %struct.hl_debug_params_stm** %6, align 8
  %125 = getelementptr inbounds %struct.hl_debug_params_stm, %struct.hl_debug_params_stm* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 16
  %128 = or i32 7, %127
  %129 = call i32 @WREG32(i64 %123, i32 %128)
  br label %187

130:                                              ; preds = %22
  %131 = load i64, i64* %7, align 8
  %132 = add nsw i64 %131, 3712
  %133 = call i32 @WREG32(i64 %132, i32 4)
  %134 = load i64, i64* %7, align 8
  %135 = add nsw i64 %134, 3428
  %136 = call i32 @WREG32(i64 %135, i32 0)
  %137 = load i64, i64* %7, align 8
  %138 = add nsw i64 %137, 3424
  %139 = call i32 @WREG32(i64 %138, i32 1)
  %140 = load i64, i64* %7, align 8
  %141 = add nsw i64 %140, 3328
  %142 = call i32 @WREG32(i64 %141, i32 0)
  %143 = load i64, i64* %7, align 8
  %144 = add nsw i64 %143, 3360
  %145 = call i32 @WREG32(i64 %144, i32 0)
  %146 = load i64, i64* %7, align 8
  %147 = add nsw i64 %146, 3424
  %148 = call i32 @WREG32(i64 %147, i32 0)
  %149 = load i64, i64* %7, align 8
  %150 = add nsw i64 %149, 3616
  %151 = call i32 @WREG32(i64 %150, i32 0)
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %152, 3584
  %154 = call i32 @WREG32(i64 %153, i32 0)
  %155 = load i64, i64* %7, align 8
  %156 = add nsw i64 %155, 3572
  %157 = call i32 @WREG32(i64 %156, i32 128)
  %158 = load i64, i64* %7, align 8
  %159 = add nsw i64 %158, 3696
  %160 = call i32 @WREG32(i64 %159, i32 0)
  %161 = load i64, i64* %7, align 8
  %162 = add nsw i64 %161, 3680
  %163 = call i32 @WREG32(i64 %162, i32 0)
  %164 = load i64, i64* %7, align 8
  %165 = add nsw i64 %164, 3684
  %166 = call i32 @WREG32(i64 %165, i32 0)
  %167 = load i64, i64* %7, align 8
  %168 = add nsw i64 %167, 3724
  %169 = call i32 @WREG32(i64 %168, i32 0)
  %170 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %171 = load i64, i64* %7, align 8
  %172 = add nsw i64 %171, 3712
  %173 = call i32 @goya_coresight_timeout(%struct.hl_device* %170, i64 %172, i32 23, i32 0)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %130
  %177 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %178 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 (i32, i8*, ...) @dev_err(i32 %179, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %3, align 4
  br label %188

183:                                              ; preds = %130
  %184 = load i64, i64* %7, align 8
  %185 = add nsw i64 %184, 3712
  %186 = call i32 @WREG32(i64 %185, i32 4)
  br label %187

187:                                              ; preds = %183, %48
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %176, %45, %15
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @goya_coresight_timeout(%struct.hl_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
