; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_g_volatile_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_g_volatile_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ov5640_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @ov5640_g_volatile_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_g_volatile_ctrl(%struct.v4l2_ctrl* %0) #0 {
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
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %42 [
    i32 129, label %14
    i32 128, label %28
  ]

14:                                               ; preds = %1
  %15 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %16 = call i32 @ov5640_get_gain(%struct.ov5640_dev* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %24 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %22, i32* %27, align 4
  br label %42

28:                                               ; preds = %1
  %29 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %30 = call i32 @ov5640_get_exposure(%struct.ov5640_dev* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ov5640_dev*, %struct.ov5640_dev** %5, align 8
  %38 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %1, %35, %21
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %33, %19
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.ov5640_dev* @to_ov5640_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov5640_get_gain(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_get_exposure(%struct.ov5640_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
