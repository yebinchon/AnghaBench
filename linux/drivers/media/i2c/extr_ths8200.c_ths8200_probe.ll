; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths8200.c_ths8200_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths8200.c_ths8200_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ths8200_state = type { %struct.v4l2_subdev, i32 }
%struct.v4l2_subdev = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ths8200_ops = common dso_local global i32 0, align 4
@THS8200_VERSION = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"chip version 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s found @ 0x%x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ths8200_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ths8200_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ths8200_state*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %11 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ths8200_state* @devm_kzalloc(i32* %18, i32 8, i32 %19)
  store %struct.ths8200_state* %20, %struct.ths8200_state** %4, align 8
  %21 = load %struct.ths8200_state*, %struct.ths8200_state** %4, align 8
  %22 = icmp ne %struct.ths8200_state* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %67

26:                                               ; preds = %16
  %27 = load %struct.ths8200_state*, %struct.ths8200_state** %4, align 8
  %28 = getelementptr inbounds %struct.ths8200_state, %struct.ths8200_state* %27, i32 0, i32 0
  store %struct.v4l2_subdev* %28, %struct.v4l2_subdev** %5, align 8
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %29, %struct.i2c_client* %30, i32* @ths8200_ops)
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %33 = load i32, i32* @THS8200_VERSION, align 4
  %34 = call i32 @ths8200_read(%struct.v4l2_subdev* %32, i32 %33)
  %35 = load %struct.ths8200_state*, %struct.ths8200_state** %4, align 8
  %36 = getelementptr inbounds %struct.ths8200_state, %struct.ths8200_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @debug, align 4
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %39 = load %struct.ths8200_state*, %struct.ths8200_state** %4, align 8
  %40 = getelementptr inbounds %struct.ths8200_state, %struct.ths8200_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @v4l2_dbg(i32 1, i32 %37, %struct.v4l2_subdev* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %44 = call i32 @ths8200_core_init(%struct.v4l2_subdev* %43)
  %45 = load %struct.ths8200_state*, %struct.ths8200_state** %4, align 8
  %46 = getelementptr inbounds %struct.ths8200_state, %struct.ths8200_state* %45, i32 0, i32 0
  %47 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %26
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %67

52:                                               ; preds = %26
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 %59, 1
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @v4l2_info(%struct.v4l2_subdev* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %60, i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %52, %50, %23, %13
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.ths8200_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @ths8200_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @ths8200_core_init(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
