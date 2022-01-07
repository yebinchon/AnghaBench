; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_g_volatile_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_g_volatile_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ov2680_dev = type { i32, %struct.ov2680_ctrls }
%struct.ov2680_ctrls = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @ov2680_g_volatile_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_g_volatile_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.ov2680_dev*, align 8
  %6 = alloca %struct.ov2680_ctrls*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = call %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl* %8)
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev* %10)
  store %struct.ov2680_dev* %11, %struct.ov2680_dev** %5, align 8
  %12 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %12, i32 0, i32 1
  store %struct.ov2680_ctrls* %13, %struct.ov2680_ctrls** %6, align 8
  %14 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %15 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

19:                                               ; preds = %1
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %49 [
    i32 128, label %23
    i32 129, label %36
  ]

23:                                               ; preds = %19
  %24 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %25 = call i32 @ov2680_gain_get(%struct.ov2680_dev* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %50

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %6, align 8
  %33 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  br label %49

36:                                               ; preds = %19
  %37 = load %struct.ov2680_dev*, %struct.ov2680_dev** %5, align 8
  %38 = call i32 @ov2680_exposure_get(%struct.ov2680_dev* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.ov2680_ctrls*, %struct.ov2680_ctrls** %6, align 8
  %46 = getelementptr inbounds %struct.ov2680_ctrls, %struct.ov2680_ctrls* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %19, %43, %30
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %41, %28, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.v4l2_subdev* @ctrl_to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov2680_gain_get(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_exposure_get(%struct.ov2680_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
