; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_fops_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-i2c.c_si470x_fops_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.si470x_device = type { i32* }

@SYSCONFIG1_RDSIEN = common dso_local global i32 0, align 4
@SYSCONFIG1 = common dso_local global i64 0, align 8
@SYSCONFIG1_STCIEN = common dso_local global i32 0, align 4
@SYSCONFIG1_GPIO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @si470x_fops_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_fops_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.si470x_device*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.si470x_device* @video_drvdata(%struct.file* %6)
  store %struct.si470x_device* %7, %struct.si470x_device** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call i32 @v4l2_fh_open(%struct.file* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = call i64 @v4l2_fh_is_singular_file(%struct.file* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %20 = call i32 @si470x_start(%struct.si470x_device* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %61

24:                                               ; preds = %18
  %25 = load i32, i32* @SYSCONFIG1_RDSIEN, align 4
  %26 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %27 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @SYSCONFIG1, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %25
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @SYSCONFIG1_STCIEN, align 4
  %34 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %35 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @SYSCONFIG1, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %33
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @SYSCONFIG1_GPIO2, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %44 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @SYSCONFIG1, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %42
  store i32 %49, i32* %47, align 4
  %50 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %51 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @SYSCONFIG1, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, 4
  store i32 %56, i32* %54, align 4
  %57 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %58 = load i64, i64* @SYSCONFIG1, align 8
  %59 = call i32 @si470x_set_register(%struct.si470x_device* %57, i64 %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %24, %14
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.file*, %struct.file** %3, align 8
  %66 = call i32 @v4l2_fh_release(%struct.file* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %12
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @si470x_start(%struct.si470x_device*) #1

declare dso_local i32 @si470x_set_register(%struct.si470x_device*, i64) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
