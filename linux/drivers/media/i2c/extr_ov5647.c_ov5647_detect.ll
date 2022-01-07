; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c_ov5647_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c_ov5647_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@OV5647_SW_RESET = common dso_local global i32 0, align 4
@OV5647_REG_CHIPID_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ID High expected 0x56 got %x\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OV5647_REG_CHIPID_L = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ID Low expected 0x47 got %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ov5647_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5647_detect(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %6, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = load i32, i32* @OV5647_SW_RESET, align 4
  %11 = call i32 @ov5647_write(%struct.v4l2_subdev* %9, i32 %10, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %56

16:                                               ; preds = %1
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = load i32, i32* @OV5647_REG_CHIPID_H, align 4
  %19 = call i32 @ov5647_read(%struct.v4l2_subdev* %17, i32 %18, i32* %4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 86
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %56

34:                                               ; preds = %24
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %36 = load i32, i32* @OV5647_REG_CHIPID_L, align 4
  %37 = call i32 @ov5647_read(%struct.v4l2_subdev* %35, i32 %36, i32* %4)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %56

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 71
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %42
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %54 = load i32, i32* @OV5647_SW_RESET, align 4
  %55 = call i32 @ov5647_write(%struct.v4l2_subdev* %53, i32 %54, i32 0)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %45, %40, %27, %22, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov5647_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @ov5647_read(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
