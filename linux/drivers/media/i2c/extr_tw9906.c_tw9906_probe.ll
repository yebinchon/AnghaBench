; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9906.c_tw9906_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9906.c_tw9906_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tw9906 = type { i32, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tw9906_ops = common dso_local global i32 0, align 4
@tw9906_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@initial_registers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"error initializing TW9906\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tw9906_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9906_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tw9906*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %87

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 1
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @v4l_info(%struct.i2c_client* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.tw9906* @devm_kzalloc(i32* %32, i32 16, i32 %33)
  store %struct.tw9906* %34, %struct.tw9906** %6, align 8
  %35 = load %struct.tw9906*, %struct.tw9906** %6, align 8
  %36 = icmp eq %struct.tw9906* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %87

40:                                               ; preds = %19
  %41 = load %struct.tw9906*, %struct.tw9906** %6, align 8
  %42 = getelementptr inbounds %struct.tw9906, %struct.tw9906* %41, i32 0, i32 2
  store %struct.v4l2_subdev* %42, %struct.v4l2_subdev** %7, align 8
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %43, %struct.i2c_client* %44, i32* @tw9906_ops)
  %46 = load %struct.tw9906*, %struct.tw9906** %6, align 8
  %47 = getelementptr inbounds %struct.tw9906, %struct.tw9906* %46, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %47, %struct.v4l2_ctrl_handler** %8, align 8
  %48 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %49 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %48, i32 4)
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %51 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %52 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %50, i32* @tw9906_ctrl_ops, i32 %51, i32 -128, i32 127, i32 1, i32 0)
  %53 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %54 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %55 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %53, i32* @tw9906_ctrl_ops, i32 %54, i32 0, i32 255, i32 1, i32 96)
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %57 = load i32, i32* @V4L2_CID_HUE, align 4
  %58 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %56, i32* @tw9906_ctrl_ops, i32 %57, i32 -128, i32 127, i32 1, i32 0)
  %59 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %60, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %59, %struct.v4l2_ctrl_handler** %61, align 8
  %62 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %40
  %67 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %71 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %87

73:                                               ; preds = %40
  %74 = load i32, i32* @V4L2_STD_NTSC, align 4
  %75 = load %struct.tw9906*, %struct.tw9906** %6, align 8
  %76 = getelementptr inbounds %struct.tw9906, %struct.tw9906* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %78 = load i32, i32* @initial_registers, align 4
  %79 = call i64 @write_regs(%struct.v4l2_subdev* %77, i32 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = call i32 @v4l2_err(%struct.i2c_client* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %87

86:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %81, %66, %37, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.tw9906* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i64 @write_regs(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_err(%struct.i2c_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
