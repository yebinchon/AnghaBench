; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ov965x = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"s_ctrl: %s, value: %d. power: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @ov965x_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.ov965x*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = call %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl* %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.ov965x* @to_ov965x(%struct.v4l2_subdev* %9)
  store %struct.ov965x* %10, %struct.ov965x** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %22 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @v4l2_dbg(i32 1, i32 %13, %struct.v4l2_subdev* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i64 %23)
  %25 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %26 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %29 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %34 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  store i32 0, i32* %2, align 4
  br label %96

36:                                               ; preds = %1
  %37 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %91 [
    i32 135, label %40
    i32 134, label %46
    i32 133, label %52
    i32 136, label %58
    i32 132, label %64
    i32 131, label %67
    i32 130, label %73
    i32 129, label %79
    i32 128, label %85
  ]

40:                                               ; preds = %36
  %41 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %42 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ov965x_set_white_balance(%struct.ov965x* %41, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %91

46:                                               ; preds = %36
  %47 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %48 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ov965x_set_brightness(%struct.ov965x* %47, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %91

52:                                               ; preds = %36
  %53 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %54 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ov965x_set_exposure(%struct.ov965x* %53, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %91

58:                                               ; preds = %36
  %59 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %60 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %61 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ov965x_set_gain(%struct.ov965x* %59, i32 %62)
  store i32 %63, i32* %6, align 4
  br label %91

64:                                               ; preds = %36
  %65 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %66 = call i32 @ov965x_set_flip(%struct.ov965x* %65)
  store i32 %66, i32* %6, align 4
  br label %91

67:                                               ; preds = %36
  %68 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ov965x_set_banding_filter(%struct.ov965x* %68, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %91

73:                                               ; preds = %36
  %74 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %75 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %76 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ov965x_set_saturation(%struct.ov965x* %74, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %91

79:                                               ; preds = %36
  %80 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %81 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %82 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ov965x_set_sharpness(%struct.ov965x* %80, i32 %83)
  store i32 %84, i32* %6, align 4
  br label %91

85:                                               ; preds = %36
  %86 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %87 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %88 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ov965x_set_test_pattern(%struct.ov965x* %86, i32 %89)
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %36, %85, %79, %73, %67, %64, %58, %52, %46, %40
  %92 = load %struct.ov965x*, %struct.ov965x** %5, align 8
  %93 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %32
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.ov965x* @to_ov965x(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ov965x_set_white_balance(%struct.ov965x*, i32) #1

declare dso_local i32 @ov965x_set_brightness(%struct.ov965x*, i32) #1

declare dso_local i32 @ov965x_set_exposure(%struct.ov965x*, i32) #1

declare dso_local i32 @ov965x_set_gain(%struct.ov965x*, i32) #1

declare dso_local i32 @ov965x_set_flip(%struct.ov965x*) #1

declare dso_local i32 @ov965x_set_banding_filter(%struct.ov965x*, i32) #1

declare dso_local i32 @ov965x_set_saturation(%struct.ov965x*, i32) #1

declare dso_local i32 @ov965x_set_sharpness(%struct.ov965x*, i32) #1

declare dso_local i32 @ov965x_set_test_pattern(%struct.ov965x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
