; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7640.c_ov7640_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7640.c_ov7640_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter*, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ov7640_ops = common dso_local global i32 0, align 4
@I2C_CLIENT_SCCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@initial_registers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"error initializing OV7640\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov7640_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7640_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %6, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.v4l2_subdev* @devm_kzalloc(i32* %20, i32 4, i32 %21)
  store %struct.v4l2_subdev* %22, %struct.v4l2_subdev** %7, align 8
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %24 = icmp eq %struct.v4l2_subdev* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %18
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %29, %struct.i2c_client* %30, i32* @ov7640_ops)
  %32 = load i32, i32* @I2C_CLIENT_SCCB, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 1
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %41, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @v4l_info(%struct.i2c_client* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* @initial_registers, align 4
  %48 = call i64 @write_regs(%struct.i2c_client* %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %28
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = call i32 @v4l_err(%struct.i2c_client* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %50, %25, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.v4l2_subdev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i64 @write_regs(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
