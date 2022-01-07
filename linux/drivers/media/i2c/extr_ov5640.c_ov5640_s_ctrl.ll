; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ov5640_dev = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @ov5640_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.ov5640_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = call %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl* %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev* %9)
  store %struct.ov5640_dev* %10, %struct.ov5640_dev** %5, align 8
  %11 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

16:                                               ; preds = %1
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %80 [
    i32 137, label %20
    i32 134, label %26
    i32 136, label %32
    i32 132, label %38
    i32 135, label %44
    i32 130, label %50
    i32 129, label %56
    i32 131, label %62
    i32 133, label %68
    i32 128, label %74
  ]

20:                                               ; preds = %16
  %21 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %22 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ov5640_set_ctrl_gain(%struct.ov5640_dev* %21, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %83

26:                                               ; preds = %16
  %27 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %28 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ov5640_set_ctrl_exposure(%struct.ov5640_dev* %27, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %83

32:                                               ; preds = %16
  %33 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %34 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ov5640_set_ctrl_white_balance(%struct.ov5640_dev* %33, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %83

38:                                               ; preds = %16
  %39 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %40 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ov5640_set_ctrl_hue(%struct.ov5640_dev* %39, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %83

44:                                               ; preds = %16
  %45 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %46 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %47 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ov5640_set_ctrl_contrast(%struct.ov5640_dev* %45, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %83

50:                                               ; preds = %16
  %51 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %52 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %53 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ov5640_set_ctrl_saturation(%struct.ov5640_dev* %51, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %83

56:                                               ; preds = %16
  %57 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %58 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %59 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ov5640_set_ctrl_test_pattern(%struct.ov5640_dev* %57, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %83

62:                                               ; preds = %16
  %63 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %64 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ov5640_set_ctrl_light_freq(%struct.ov5640_dev* %63, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %83

68:                                               ; preds = %16
  %69 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %70 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %71 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ov5640_set_ctrl_hflip(%struct.ov5640_dev* %69, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %83

74:                                               ; preds = %16
  %75 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %76 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %77 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ov5640_set_ctrl_vflip(%struct.ov5640_dev* %75, i32 %78)
  store i32 %79, i32* %6, align 4
  br label %83

80:                                               ; preds = %16
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %74, %68, %62, %56, %50, %44, %38, %32, %26, %20
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov5640_set_ctrl_gain(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ctrl_exposure(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ctrl_white_balance(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ctrl_hue(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ctrl_contrast(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ctrl_saturation(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ctrl_test_pattern(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ctrl_light_freq(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ctrl_hflip(%struct.ov5640_dev*, i32) #1

declare dso_local i32 @ov5640_set_ctrl_vflip(%struct.ov5640_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
