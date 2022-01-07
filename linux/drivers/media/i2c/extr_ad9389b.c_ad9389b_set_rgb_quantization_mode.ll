; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_set_rgb_quantization_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_set_rgb_quantization_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_ctrl = type { i32 }
%struct.ad9389b_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@V4L2_DV_FL_IS_CE_VIDEO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_ctrl*)* @ad9389b_set_rgb_quantization_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9389b_set_rgb_quantization_mode(%struct.v4l2_subdev* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca %struct.ad9389b_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %5, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev* %7)
  store %struct.ad9389b_state* %8, %struct.ad9389b_state** %6, align 8
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %34 [
    i32 130, label %12
    i32 128, label %28
    i32 129, label %31
  ]

12:                                               ; preds = %2
  %13 = load %struct.ad9389b_state*, %struct.ad9389b_state** %6, align 8
  %14 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_DV_FL_IS_CE_VIDEO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %23 = call i32 @ad9389b_csc_rgb_full2limit(%struct.v4l2_subdev* %22, i32 1)
  br label %27

24:                                               ; preds = %12
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = call i32 @ad9389b_csc_rgb_full2limit(%struct.v4l2_subdev* %25, i32 0)
  br label %27

27:                                               ; preds = %24, %21
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %30 = call i32 @ad9389b_csc_rgb_full2limit(%struct.v4l2_subdev* %29, i32 1)
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %33 = call i32 @ad9389b_csc_rgb_full2limit(%struct.v4l2_subdev* %32, i32 0)
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %31, %28, %27
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.ad9389b_state* @get_ad9389b_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ad9389b_csc_rgb_full2limit(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
