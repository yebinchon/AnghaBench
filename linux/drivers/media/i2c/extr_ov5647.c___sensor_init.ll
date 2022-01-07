; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c___sensor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c___sensor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@OV5647_SW_STANDBY = common dso_local global i32 0, align 4
@ov5647_640x480 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"write sensor default regs error\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Device was in SW standby\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @__sensor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sensor_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %11 = load i32, i32* @OV5647_SW_STANDBY, align 4
  %12 = call i32 @ov5647_read(%struct.v4l2_subdev* %10, i32 %11, i32* %6)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = load i32, i32* @ov5647_640x480, align 4
  %20 = load i32, i32* @ov5647_640x480, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @ov5647_write_array(%struct.v4l2_subdev* %18, i32 %19, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %64

30:                                               ; preds = %17
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = call i32 @ov5647_set_virtual_channel(%struct.v4l2_subdev* %31, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %64

37:                                               ; preds = %30
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %39 = load i32, i32* @OV5647_SW_STANDBY, align 4
  %40 = call i32 @ov5647_read(%struct.v4l2_subdev* %38, i32 %39, i32* %5)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %64

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %54 = load i32, i32* @OV5647_SW_STANDBY, align 4
  %55 = call i32 @ov5647_write(%struct.v4l2_subdev* %53, i32 %54, i32 1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %64

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %45
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %63 = call i32 @ov5647_stream_off(%struct.v4l2_subdev* %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %58, %43, %35, %25, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov5647_read(%struct.v4l2_subdev*, i32, i32*) #1

declare dso_local i32 @ov5647_write_array(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ov5647_set_virtual_channel(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov5647_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @ov5647_stream_off(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
