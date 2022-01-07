; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.imx214 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @imx214_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx214_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx214*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.imx214* @to_imx214(%struct.v4l2_subdev* %8)
  store %struct.imx214* %9, %struct.imx214** %6, align 8
  %10 = load %struct.imx214*, %struct.imx214** %6, align 8
  %11 = getelementptr inbounds %struct.imx214, %struct.imx214* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.imx214*, %struct.imx214** %6, align 8
  %21 = getelementptr inbounds %struct.imx214, %struct.imx214* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_get_sync(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.imx214*, %struct.imx214** %6, align 8
  %28 = getelementptr inbounds %struct.imx214, %struct.imx214* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_put_noidle(i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %60

32:                                               ; preds = %19
  %33 = load %struct.imx214*, %struct.imx214** %6, align 8
  %34 = call i32 @imx214_start_streaming(%struct.imx214* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %54

38:                                               ; preds = %32
  br label %50

39:                                               ; preds = %16
  %40 = load %struct.imx214*, %struct.imx214** %6, align 8
  %41 = call i32 @imx214_start_streaming(%struct.imx214* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %54

45:                                               ; preds = %39
  %46 = load %struct.imx214*, %struct.imx214** %6, align 8
  %47 = getelementptr inbounds %struct.imx214, %struct.imx214* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pm_runtime_put(i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.imx214*, %struct.imx214** %6, align 8
  %53 = getelementptr inbounds %struct.imx214, %struct.imx214* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %60

54:                                               ; preds = %44, %37
  %55 = load %struct.imx214*, %struct.imx214** %6, align 8
  %56 = getelementptr inbounds %struct.imx214, %struct.imx214* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pm_runtime_put(i32 %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %50, %26, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.imx214* @to_imx214(%struct.v4l2_subdev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @imx214_start_streaming(%struct.imx214*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
