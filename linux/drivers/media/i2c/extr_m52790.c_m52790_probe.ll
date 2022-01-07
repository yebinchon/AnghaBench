; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_m52790.c_m52790_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_m52790.c_m52790_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.m52790_state = type { i32, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@m52790_ops = common dso_local global i32 0, align 4
@M52790_IN_TUNER = common dso_local global i32 0, align 4
@M52790_OUT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @m52790_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m52790_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.m52790_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @v4l_info(%struct.i2c_client* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.m52790_state* @devm_kzalloc(i32* %30, i32 12, i32 %31)
  store %struct.m52790_state* %32, %struct.m52790_state** %6, align 8
  %33 = load %struct.m52790_state*, %struct.m52790_state** %6, align 8
  %34 = icmp eq %struct.m52790_state* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %52

38:                                               ; preds = %17
  %39 = load %struct.m52790_state*, %struct.m52790_state** %6, align 8
  %40 = getelementptr inbounds %struct.m52790_state, %struct.m52790_state* %39, i32 0, i32 2
  store %struct.v4l2_subdev* %40, %struct.v4l2_subdev** %7, align 8
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %41, %struct.i2c_client* %42, i32* @m52790_ops)
  %44 = load i32, i32* @M52790_IN_TUNER, align 4
  %45 = load %struct.m52790_state*, %struct.m52790_state** %6, align 8
  %46 = getelementptr inbounds %struct.m52790_state, %struct.m52790_state* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @M52790_OUT_STEREO, align 4
  %48 = load %struct.m52790_state*, %struct.m52790_state** %6, align 8
  %49 = getelementptr inbounds %struct.m52790_state, %struct.m52790_state* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %51 = call i32 @m52790_write(%struct.v4l2_subdev* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %38, %35, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.m52790_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @m52790_write(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
