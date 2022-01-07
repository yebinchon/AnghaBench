; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9640.c_ov9640_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ov9640_priv = type { i32, i32, i32 }

@OV9640_PID = common dso_local global i32 0, align 4
@OV9640_VER = common dso_local global i32 0, align 4
@OV9640_MIDH = common dso_local global i32 0, align 4
@OV9640_MIDL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ov9640\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Product ID error %x:%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"%s Product ID %0x:%0x Manufacturer ID %x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov9640_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9640_video_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.ov9640_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %4, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.ov9640_priv* @to_ov9640_sensor(%struct.v4l2_subdev* %14)
  store %struct.ov9640_priv* %15, %struct.ov9640_priv** %5, align 8
  %16 = load %struct.ov9640_priv*, %struct.ov9640_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %16, i32 0, i32 1
  %18 = call i32 @ov9640_s_power(i32* %17, i32 1)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %2, align 4
  br label %86

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = load i32, i32* @OV9640_PID, align 4
  %26 = call i32 @ov9640_reg_read(%struct.i2c_client* %24, i32 %25, i32* %6)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = load i32, i32* @OV9640_VER, align 4
  %32 = call i32 @ov9640_reg_read(%struct.i2c_client* %30, i32 %31, i32* %7)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = load i32, i32* @OV9640_MIDH, align 4
  %39 = call i32 @ov9640_reg_read(%struct.i2c_client* %37, i32 %38, i32* %8)
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = load i32, i32* @OV9640_MIDL, align 4
  %46 = call i32 @ov9640_reg_read(%struct.i2c_client* %44, i32 %45, i32* %9)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %81

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @VERSION(i32 %52, i32 %53)
  switch i32 %54, label %61 [
    i32 129, label %55
    i32 128, label %58
  ]

55:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %56 = load %struct.ov9640_priv*, %struct.ov9640_priv** %5, align 8
  %57 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %56, i32 0, i32 0
  store i32 2, i32* %57, align 4
  br label %69

58:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %59 = load %struct.ov9640_priv*, %struct.ov9640_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %59, i32 0, i32 0
  store i32 3, i32* %60, align 4
  br label %69

61:                                               ; preds = %51
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %81

69:                                               ; preds = %58, %55
  %70 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @dev_info(i32* %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.ov9640_priv*, %struct.ov9640_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %78, i32 0, i32 2
  %80 = call i32 @v4l2_ctrl_handler_setup(i32* %79)
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %69, %61, %50
  %82 = load %struct.ov9640_priv*, %struct.ov9640_priv** %5, align 8
  %83 = getelementptr inbounds %struct.ov9640_priv, %struct.ov9640_priv* %82, i32 0, i32 1
  %84 = call i32 @ov9640_s_power(i32* %83, i32 0)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %21
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.ov9640_priv* @to_ov9640_sensor(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov9640_s_power(i32*, i32) #1

declare dso_local i32 @ov9640_reg_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @VERSION(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
