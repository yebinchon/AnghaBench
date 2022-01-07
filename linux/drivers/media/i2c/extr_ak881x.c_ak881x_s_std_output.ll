; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ak881x.c_ak881x_s_std_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ak881x.c_ak881x_s_std_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ak881x = type { i32 }

@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AK881X_VIDEO_PROCESS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ak881x_s_std_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak881x_s_std_output(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ak881x*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = call %struct.ak881x* @to_ak881x(%struct.i2c_client* %11)
  store %struct.ak881x* %12, %struct.ak881x** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  %17 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %18 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %17, i32 0, i32 0
  store i32 480, i32* %18, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  store i32 5, i32* %8, align 4
  %24 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %25 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %24, i32 0, i32 0
  store i32 480, i32* %25, align 4
  br label %55

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  store i32 7, i32* %8, align 4
  %31 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %32 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %31, i32 0, i32 0
  store i32 480, i32* %32, align 4
  br label %54

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @V4L2_STD_NTSC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  %39 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %40 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %39, i32 0, i32 0
  store i32 480, i32* %40, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @V4L2_STD_PAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  store i32 15, i32* %8, align 4
  %47 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %48 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %47, i32 0, i32 0
  store i32 576, i32* %48, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %61

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53, %30
  br label %55

55:                                               ; preds = %54, %23
  br label %56

56:                                               ; preds = %55, %16
  %57 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %58 = load i32, i32* @AK881X_VIDEO_PROCESS1, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @reg_set(%struct.i2c_client* %57, i32 %58, i32 %59, i32 15)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ak881x* @to_ak881x(%struct.i2c_client*) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
