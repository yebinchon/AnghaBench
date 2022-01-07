; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.ths7303_platform_data* }
%struct.ths7303_platform_data = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ths7303_state = type { %struct.v4l2_subdev, %struct.ths7303_platform_data* }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ths7303_ops = common dso_local global i32 0, align 4
@THS7303_FILTER_MODE_480I_576I = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Setting to 480I_576I filter mode failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ths7303_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ths7303_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ths7303_platform_data*, align 8
  %7 = alloca %struct.ths7303_state*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.ths7303_platform_data*, %struct.ths7303_platform_data** %11, align 8
  store %struct.ths7303_platform_data* %12, %struct.ths7303_platform_data** %6, align 8
  %13 = load %struct.ths7303_platform_data*, %struct.ths7303_platform_data** %6, align 8
  %14 = icmp eq %struct.ths7303_platform_data* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = call i32 @dev_err(%struct.TYPE_5__* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %26 = call i32 @i2c_check_functionality(%struct.TYPE_4__* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %71

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @v4l_info(%struct.i2c_client* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.ths7303_state* @devm_kzalloc(%struct.TYPE_5__* %44, i32 16, i32 %45)
  store %struct.ths7303_state* %46, %struct.ths7303_state** %7, align 8
  %47 = load %struct.ths7303_state*, %struct.ths7303_state** %7, align 8
  %48 = icmp ne %struct.ths7303_state* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %71

52:                                               ; preds = %31
  %53 = load %struct.ths7303_platform_data*, %struct.ths7303_platform_data** %6, align 8
  %54 = load %struct.ths7303_state*, %struct.ths7303_state** %7, align 8
  %55 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %54, i32 0, i32 1
  store %struct.ths7303_platform_data* %53, %struct.ths7303_platform_data** %55, align 8
  %56 = load %struct.ths7303_state*, %struct.ths7303_state** %7, align 8
  %57 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %56, i32 0, i32 0
  store %struct.v4l2_subdev* %57, %struct.v4l2_subdev** %8, align 8
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %58, %struct.i2c_client* %59, i32* @ths7303_ops)
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %62 = load i32, i32* @THS7303_FILTER_MODE_480I_576I, align 4
  %63 = call i64 @ths7303_setval(%struct.v4l2_subdev* %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = call i32 @v4l_err(%struct.i2c_client* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %65, %49, %28, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.ths7303_state* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i64 @ths7303_setval(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
