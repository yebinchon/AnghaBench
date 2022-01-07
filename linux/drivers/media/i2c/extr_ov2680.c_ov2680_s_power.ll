; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov2680_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov2680_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov2680_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev* %8)
  store %struct.ov2680_dev* %9, %struct.ov2680_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ov2680_dev*, %struct.ov2680_dev** %6, align 8
  %11 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.ov2680_dev*, %struct.ov2680_dev** %6, align 8
  %17 = call i32 @ov2680_power_on(%struct.ov2680_dev* %16)
  store i32 %17, i32* %7, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.ov2680_dev*, %struct.ov2680_dev** %6, align 8
  %20 = call i32 @ov2680_power_off(%struct.ov2680_dev* %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.ov2680_dev*, %struct.ov2680_dev** %6, align 8
  %23 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.ov2680_dev*, %struct.ov2680_dev** %6, align 8
  %32 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @v4l2_ctrl_handler_setup(i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %30
  %40 = load %struct.ov2680_dev*, %struct.ov2680_dev** %6, align 8
  %41 = call i32 @ov2680_mode_restore(%struct.ov2680_dev* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %27, %21
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.ov2680_dev* @to_ov2680_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov2680_power_on(%struct.ov2680_dev*) #1

declare dso_local i32 @ov2680_power_off(%struct.ov2680_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @ov2680_mode_restore(%struct.ov2680_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
