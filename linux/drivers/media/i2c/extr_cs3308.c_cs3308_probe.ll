; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_cs3308.c_cs3308_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_cs3308.c_cs3308_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cs3308_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cs3308_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs3308_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %18, i32 28)
  %20 = and i32 %19, 240
  %21 = icmp ne i32 %20, 224
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %17
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %29, 1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @v4l_info(%struct.i2c_client* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35)
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.v4l2_subdev* @kzalloc(i32 4, i32 %37)
  store %struct.v4l2_subdev* %38, %struct.v4l2_subdev** %6, align 8
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %40 = icmp eq %struct.v4l2_subdev* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %25
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %45, %struct.i2c_client* %46, i32* @cs3308_ops)
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %49 = call i32 @cs3308_write(%struct.v4l2_subdev* %48, i32 13, i32 0)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %51 = call i32 @cs3308_write(%struct.v4l2_subdev* %50, i32 14, i32 0)
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %53 = call i32 @cs3308_write(%struct.v4l2_subdev* %52, i32 11, i32 0)
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %61, %44
  %55 = load i32, i32* %7, align 4
  %56 = icmp ule i32 %55, 8
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @cs3308_write(%struct.v4l2_subdev* %58, i32 %59, i32 210)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %54

64:                                               ; preds = %54
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %66 = call i32 @cs3308_write(%struct.v4l2_subdev* %65, i32 10, i32 0)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %41, %22, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.v4l2_subdev* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @cs3308_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
