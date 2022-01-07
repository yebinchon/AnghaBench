; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32, i32 }

@CHIP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Detected a MT9M111/MT9M131 chip ID %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Detected a MT9M112 chip ID %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"No MT9M111/MT9M112/MT9M131 chip detected register read %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9m111_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_video_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9m111*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %7)
  store %struct.mt9m111* %8, %struct.mt9m111** %4, align 8
  %9 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %10 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %9, i32 0, i32 0
  %11 = call i32 @mt9m111_s_power(i32* %10, i32 1)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load i32, i32* @CHIP_VERSION, align 4
  %18 = call i32 @reg_read(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %30 [
    i32 5178, label %20
    i32 5260, label %25
  ]

20:                                               ; preds = %16
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_info(i32* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %37

25:                                               ; preds = %16
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %37

30:                                               ; preds = %16
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %47

37:                                               ; preds = %25, %20
  %38 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %39 = call i32 @mt9m111_init(%struct.mt9m111* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37
  %44 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %45 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %44, i32 0, i32 1
  %46 = call i32 @v4l2_ctrl_handler_setup(i32* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %42, %30
  %48 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %49 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %48, i32 0, i32 0
  %50 = call i32 @mt9m111_s_power(i32* %49, i32 0)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i32 @mt9m111_s_power(i32*, i32) #1

declare dso_local i32 @reg_read(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mt9m111_init(%struct.mt9m111*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
