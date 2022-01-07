; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___is_hw_update_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___is_hw_update_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@PARAM_GLOBAL_SHOTMODE = common dso_local global i32 0, align 4
@PARAM_SENSOR_FRAME_RATE = common dso_local global i32 0, align 4
@PARAM_ISP_CONTROL = common dso_local global i32 0, align 4
@PARAM_DRC_CONTROL = common dso_local global i32 0, align 4
@PARAM_SCALERC_CONTROL = common dso_local global i32 0, align 4
@PARAM_FD_CONTROL = common dso_local global i32 0, align 4
@PARAM_FD_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__is_hw_update_params(%struct.fimc_is* %0) #0 {
  %2 = alloca %struct.fimc_is*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_is* %0, %struct.fimc_is** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %8 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %11 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64* %18, i64** %3, align 8
  %19 = load i32, i32* @PARAM_GLOBAL_SHOTMODE, align 4
  %20 = load i64*, i64** %3, align 8
  %21 = call i64 @test_bit(i32 %19, i64* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %25 = call i32 @__fimc_is_hw_update_param_global_shotmode(%struct.fimc_is* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* @PARAM_SENSOR_FRAME_RATE, align 4
  %28 = load i64*, i64** %3, align 8
  %29 = call i64 @test_bit(i32 %27, i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %33 = call i32 @__fimc_is_hw_update_param_sensor_framerate(%struct.fimc_is* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* @PARAM_ISP_CONTROL, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %50, %34
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PARAM_DRC_CONTROL, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = load i64*, i64** %3, align 8
  %43 = call i64 @test_bit(i32 %41, i64* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @__fimc_is_hw_update_param(%struct.fimc_is* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load i32, i32* @PARAM_DRC_CONTROL, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %69, %53
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PARAM_SCALERC_CONTROL, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = load i64*, i64** %3, align 8
  %62 = call i64 @test_bit(i32 %60, i64* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @__fimc_is_hw_update_param(%struct.fimc_is* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %55

72:                                               ; preds = %55
  %73 = load i32, i32* @PARAM_FD_CONTROL, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %88, %72
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @PARAM_FD_CONFIG, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i64*, i64** %3, align 8
  %81 = call i64 @test_bit(i32 %79, i64* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @__fimc_is_hw_update_param(%struct.fimc_is* %84, i32 %85)
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %74

91:                                               ; preds = %74
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__fimc_is_hw_update_param_global_shotmode(%struct.fimc_is*) #1

declare dso_local i32 @__fimc_is_hw_update_param_sensor_framerate(%struct.fimc_is*) #1

declare dso_local i32 @__fimc_is_hw_update_param(%struct.fimc_is*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
