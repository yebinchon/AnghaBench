; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_read_fw_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_read_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@REG_FW_VERSION = common dso_local global i32 0, align 4
@S5K4ECGX_FW_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"FW version check failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@REG_FW_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"chip found FW ver: 0x%x, HW rev: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s5k4ecgx_read_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_read_fw_ver(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load i32, i32* @REG_FW_VERSION, align 4
  %12 = call i32 @s5k4ecgx_read(%struct.i2c_client* %10, i32 %11, i64* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @S5K4ECGX_FW_VERSION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %1
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = call i32 @v4l2_err(%struct.v4l2_subdev* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %37

24:                                               ; preds = %15
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @REG_FW_REVISION, align 4
  %27 = call i32 @s5k4ecgx_read(%struct.i2c_client* %25, i32 %26, i64* %5)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %37

32:                                               ; preds = %24
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @v4l2_info(%struct.v4l2_subdev* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %30, %19
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @s5k4ecgx_read(%struct.i2c_client*, i32, i64*) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
