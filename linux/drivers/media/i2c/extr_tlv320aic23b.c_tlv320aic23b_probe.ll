; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tlv320aic23b.c_tlv320aic23b_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tlv320aic23b.c_tlv320aic23b_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tlv320aic23b_state = type { %struct.TYPE_6__, %struct.v4l2_subdev }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_6__* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tlv320aic23b_ops = common dso_local global i32 0, align 4
@tlv320aic23b_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tlv320aic23b_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv320aic23b_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tlv320aic23b_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = call i32 @i2c_check_functionality(%struct.TYPE_7__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %86

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @v4l_info(%struct.i2c_client* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.tlv320aic23b_state* @devm_kzalloc(i32* %31, i32 16, i32 %32)
  store %struct.tlv320aic23b_state* %33, %struct.tlv320aic23b_state** %6, align 8
  %34 = load %struct.tlv320aic23b_state*, %struct.tlv320aic23b_state** %6, align 8
  %35 = icmp eq %struct.tlv320aic23b_state* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %86

39:                                               ; preds = %18
  %40 = load %struct.tlv320aic23b_state*, %struct.tlv320aic23b_state** %6, align 8
  %41 = getelementptr inbounds %struct.tlv320aic23b_state, %struct.tlv320aic23b_state* %40, i32 0, i32 1
  store %struct.v4l2_subdev* %41, %struct.v4l2_subdev** %7, align 8
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %42, %struct.i2c_client* %43, i32* @tlv320aic23b_ops)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %46 = call i32 @tlv320aic23b_write(%struct.v4l2_subdev* %45, i32 15, i32 0)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %48 = call i32 @tlv320aic23b_write(%struct.v4l2_subdev* %47, i32 6, i32 10)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %50 = call i32 @tlv320aic23b_write(%struct.v4l2_subdev* %49, i32 7, i32 73)
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %52 = call i32 @tlv320aic23b_write(%struct.v4l2_subdev* %51, i32 0, i32 281)
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %54 = call i32 @tlv320aic23b_write(%struct.v4l2_subdev* %53, i32 8, i32 0)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %56 = call i32 @tlv320aic23b_write(%struct.v4l2_subdev* %55, i32 9, i32 1)
  %57 = load %struct.tlv320aic23b_state*, %struct.tlv320aic23b_state** %6, align 8
  %58 = getelementptr inbounds %struct.tlv320aic23b_state, %struct.tlv320aic23b_state* %57, i32 0, i32 0
  %59 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__* %58, i32 1)
  %60 = load %struct.tlv320aic23b_state*, %struct.tlv320aic23b_state** %6, align 8
  %61 = getelementptr inbounds %struct.tlv320aic23b_state, %struct.tlv320aic23b_state* %60, i32 0, i32 0
  %62 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %63 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %61, i32* @tlv320aic23b_ctrl_ops, i32 %62, i32 0, i32 1, i32 1, i32 0)
  %64 = load %struct.tlv320aic23b_state*, %struct.tlv320aic23b_state** %6, align 8
  %65 = getelementptr inbounds %struct.tlv320aic23b_state, %struct.tlv320aic23b_state* %64, i32 0, i32 0
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %66, i32 0, i32 0
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %67, align 8
  %68 = load %struct.tlv320aic23b_state*, %struct.tlv320aic23b_state** %6, align 8
  %69 = getelementptr inbounds %struct.tlv320aic23b_state, %struct.tlv320aic23b_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %39
  %74 = load %struct.tlv320aic23b_state*, %struct.tlv320aic23b_state** %6, align 8
  %75 = getelementptr inbounds %struct.tlv320aic23b_state, %struct.tlv320aic23b_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %8, align 4
  %78 = load %struct.tlv320aic23b_state*, %struct.tlv320aic23b_state** %6, align 8
  %79 = getelementptr inbounds %struct.tlv320aic23b_state, %struct.tlv320aic23b_state* %78, i32 0, i32 0
  %80 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %79)
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %86

82:                                               ; preds = %39
  %83 = load %struct.tlv320aic23b_state*, %struct.tlv320aic23b_state** %6, align 8
  %84 = getelementptr inbounds %struct.tlv320aic23b_state, %struct.tlv320aic23b_state* %83, i32 0, i32 0
  %85 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %73, %36, %15
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.tlv320aic23b_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @tlv320aic23b_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
