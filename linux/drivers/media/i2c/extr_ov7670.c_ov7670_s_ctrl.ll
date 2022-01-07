; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ov7670_info = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @ov7670_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.ov7670_info*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %8)
  store %struct.ov7670_info* %9, %struct.ov7670_info** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %95 [
    i32 134, label %13
    i32 133, label %19
    i32 130, label %25
    i32 128, label %38
    i32 131, label %44
    i32 135, label %50
    i32 132, label %69
    i32 129, label %89
  ]

13:                                               ; preds = %1
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ov7670_s_brightness(%struct.v4l2_subdev* %14, i32 %17)
  store i32 %18, i32* %2, align 4
  br label %98

19:                                               ; preds = %1
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ov7670_s_contrast(%struct.v4l2_subdev* %20, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %98

25:                                               ; preds = %1
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %28 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %33 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ov7670_s_sat_hue(%struct.v4l2_subdev* %26, i32 %31, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %98

38:                                               ; preds = %1
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ov7670_s_vflip(%struct.v4l2_subdev* %39, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %98

44:                                               ; preds = %1
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %46 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ov7670_s_hflip(%struct.v4l2_subdev* %45, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %98

50:                                               ; preds = %1
  %51 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %52 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %57 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %58 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ov7670_s_gain(%struct.v4l2_subdev* %56, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %98

63:                                               ; preds = %50
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %65 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %66 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ov7670_s_autogain(%struct.v4l2_subdev* %64, i32 %67)
  store i32 %68, i32* %2, align 4
  br label %98

69:                                               ; preds = %1
  %70 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %71 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %77 = load %struct.ov7670_info*, %struct.ov7670_info** %5, align 8
  %78 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ov7670_s_exp(%struct.v4l2_subdev* %76, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %98

83:                                               ; preds = %69
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %85 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %86 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ov7670_s_autoexp(%struct.v4l2_subdev* %84, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %98

89:                                               ; preds = %1
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %91 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %92 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ov7670_s_test_pattern(%struct.v4l2_subdev* %90, i32 %93)
  store i32 %94, i32* %2, align 4
  br label %98

95:                                               ; preds = %1
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %89, %83, %75, %63, %55, %44, %38, %25, %19, %13
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7670_s_brightness(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_contrast(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_sat_hue(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @ov7670_s_vflip(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_hflip(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_gain(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_autogain(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_exp(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_autoexp(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_s_test_pattern(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
