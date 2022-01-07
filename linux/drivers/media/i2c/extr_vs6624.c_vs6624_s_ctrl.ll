; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_vs6624.c_vs6624_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_vs6624.c_vs6624_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }

@VS6624_CONTRAST0 = common dso_local global i32 0, align 4
@VS6624_SATURATION0 = common dso_local global i32 0, align 4
@VS6624_HMIRROR0 = common dso_local global i32 0, align 4
@VS6624_VFLIP0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @vs6624_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs6624_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %5 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %6 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %5)
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %4, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %38 [
    i32 131, label %10
    i32 129, label %17
    i32 130, label %24
    i32 128, label %31
  ]

10:                                               ; preds = %1
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = load i32, i32* @VS6624_CONTRAST0, align 4
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vs6624_write(%struct.v4l2_subdev* %11, i32 %12, i32 %15)
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = load i32, i32* @VS6624_SATURATION0, align 4
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vs6624_write(%struct.v4l2_subdev* %18, i32 %19, i32 %22)
  br label %41

24:                                               ; preds = %1
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = load i32, i32* @VS6624_HMIRROR0, align 4
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @vs6624_write(%struct.v4l2_subdev* %25, i32 %26, i32 %29)
  br label %41

31:                                               ; preds = %1
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %33 = load i32, i32* @VS6624_VFLIP0, align 4
  %34 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vs6624_write(%struct.v4l2_subdev* %32, i32 %33, i32 %36)
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %31, %24, %17, %10
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local i32 @vs6624_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
