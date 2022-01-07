; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_etf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_config_etf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_debug_params = type { i64, %struct.hl_debug_params_etf*, i64 }
%struct.hl_debug_params_etf = type { i32 }

@debug_etf_regs = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Invalid register index in ETF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@CORESIGHT_UNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to %s ETF on timeout, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_debug_params*)* @goya_config_etf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_config_etf(%struct.hl_device* %0, %struct.hl_debug_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca %struct.hl_debug_params*, align 8
  %6 = alloca %struct.hl_debug_params_etf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store %struct.hl_debug_params* %1, %struct.hl_debug_params** %5, align 8
  %10 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %11 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** @debug_etf_regs, align 8
  %14 = call i64 @ARRAY_SIZE(i64* %13)
  %15 = icmp uge i64 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %137

23:                                               ; preds = %2
  %24 = load i64*, i64** @debug_etf_regs, align 8
  %25 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %26 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CFG_BASE, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 4016
  %34 = load i32, i32* @CORESIGHT_UNLOCK, align 4
  %35 = call i32 @WREG32(i64 %33, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 772
  %38 = call i32 @RREG32(i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, 4096
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %41, 772
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @WREG32(i64 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, 64
  store i32 %46, i32* %8, align 4
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, 772
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @WREG32(i64 %48, i32 %49)
  %51 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, 772
  %54 = call i32 @goya_coresight_timeout(%struct.hl_device* %51, i64 %53, i32 6, i32 0)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %23
  %58 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %62 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %137

70:                                               ; preds = %23
  %71 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, 12
  %74 = call i32 @goya_coresight_timeout(%struct.hl_device* %71, i64 %73, i32 2, i32 1)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %70
  %78 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %79 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %82 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %137

90:                                               ; preds = %70
  %91 = load i64, i64* %7, align 8
  %92 = add nsw i64 %91, 32
  %93 = call i32 @WREG32(i64 %92, i32 0)
  %94 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %95 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %90
  %99 = load %struct.hl_debug_params*, %struct.hl_debug_params** %5, align 8
  %100 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %99, i32 0, i32 1
  %101 = load %struct.hl_debug_params_etf*, %struct.hl_debug_params_etf** %100, align 8
  store %struct.hl_debug_params_etf* %101, %struct.hl_debug_params_etf** %6, align 8
  %102 = load %struct.hl_debug_params_etf*, %struct.hl_debug_params_etf** %6, align 8
  %103 = icmp ne %struct.hl_debug_params_etf* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %137

107:                                              ; preds = %98
  %108 = load i64, i64* %7, align 8
  %109 = add nsw i64 %108, 52
  %110 = call i32 @WREG32(i64 %109, i32 16380)
  %111 = load i64, i64* %7, align 8
  %112 = add nsw i64 %111, 40
  %113 = load %struct.hl_debug_params_etf*, %struct.hl_debug_params_etf** %6, align 8
  %114 = getelementptr inbounds %struct.hl_debug_params_etf, %struct.hl_debug_params_etf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @WREG32(i64 %112, i32 %115)
  %117 = load i64, i64* %7, align 8
  %118 = add nsw i64 %117, 772
  %119 = call i32 @WREG32(i64 %118, i32 16385)
  %120 = load i64, i64* %7, align 8
  %121 = add nsw i64 %120, 776
  %122 = call i32 @WREG32(i64 %121, i32 10)
  %123 = load i64, i64* %7, align 8
  %124 = add nsw i64 %123, 32
  %125 = call i32 @WREG32(i64 %124, i32 1)
  br label %136

126:                                              ; preds = %90
  %127 = load i64, i64* %7, align 8
  %128 = add nsw i64 %127, 52
  %129 = call i32 @WREG32(i64 %128, i32 0)
  %130 = load i64, i64* %7, align 8
  %131 = add nsw i64 %130, 40
  %132 = call i32 @WREG32(i64 %131, i32 0)
  %133 = load i64, i64* %7, align 8
  %134 = add nsw i64 %133, 772
  %135 = call i32 @WREG32(i64 %134, i32 0)
  br label %136

136:                                              ; preds = %126, %107
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %104, %77, %57, %16
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @goya_coresight_timeout(%struct.hl_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
