; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_set_rgb_quantization_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7511-v4l2.c_adv7511_set_rgb_quantization_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_ctrl = type { i32 }
%struct.adv7511_state = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MEDIA_BUS_FMT_RGB888_1X24 = common dso_local global i64 0, align 8
@V4L2_DV_FL_IS_CE_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.v4l2_ctrl*)* @adv7511_set_rgb_quantization_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_set_rgb_quantization_mode(%struct.v4l2_subdev* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca %struct.adv7511_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %4, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev* %6)
  store %struct.adv7511_state* %7, %struct.adv7511_state** %5, align 8
  %8 = load %struct.adv7511_state*, %struct.adv7511_state** %5, align 8
  %9 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MEDIA_BUS_FMT_RGB888_1X24, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = call i32 @adv7511_csc_rgb_full2limit(%struct.v4l2_subdev* %14, i32 0)
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %42 [
    i32 130, label %20
    i32 128, label %36
    i32 129, label %39
  ]

20:                                               ; preds = %16
  %21 = load %struct.adv7511_state*, %struct.adv7511_state** %5, align 8
  %22 = getelementptr inbounds %struct.adv7511_state, %struct.adv7511_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @V4L2_DV_FL_IS_CE_VIDEO, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %31 = call i32 @adv7511_csc_rgb_full2limit(%struct.v4l2_subdev* %30, i32 1)
  br label %35

32:                                               ; preds = %20
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = call i32 @adv7511_csc_rgb_full2limit(%struct.v4l2_subdev* %33, i32 0)
  br label %35

35:                                               ; preds = %32, %29
  br label %42

36:                                               ; preds = %16
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = call i32 @adv7511_csc_rgb_full2limit(%struct.v4l2_subdev* %37, i32 1)
  br label %42

39:                                               ; preds = %16
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %41 = call i32 @adv7511_csc_rgb_full2limit(%struct.v4l2_subdev* %40, i32 0)
  br label %42

42:                                               ; preds = %13, %16, %39, %36, %35
  ret void
}

declare dso_local %struct.adv7511_state* @get_adv7511_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @adv7511_csc_rgb_full2limit(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
