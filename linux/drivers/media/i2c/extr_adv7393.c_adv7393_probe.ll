; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7393.c_adv7393_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7393.c_adv7393_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adv7393_state = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADV7393_POWER_MODE_REG_DEFAULT = common dso_local global i32 0, align 4
@ADV7393_HD_MODE_REG6_DEFAULT = common dso_local global i32 0, align 4
@ADV7393_SD_MODE_REG1_DEFAULT = common dso_local global i32 0, align 4
@ADV7393_SD_MODE_REG2_DEFAULT = common dso_local global i32 0, align 4
@ADV7393_COMPOSITE_ID = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@adv7393_ops = common dso_local global i32 0, align 4
@adv7393_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@ADV7393_BRIGHTNESS_MIN = common dso_local global i32 0, align 4
@ADV7393_BRIGHTNESS_MAX = common dso_local global i32 0, align 4
@ADV7393_BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@ADV7393_HUE_MIN = common dso_local global i32 0, align 4
@ADV7393_HUE_MAX = common dso_local global i32 0, align 4
@ADV7393_HUE_DEF = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@ADV7393_GAIN_MIN = common dso_local global i32 0, align 4
@ADV7393_GAIN_MAX = common dso_local global i32 0, align 4
@ADV7393_GAIN_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adv7393_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7393_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adv7393_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = call i32 @i2c_check_functionality(%struct.TYPE_10__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %124

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @v4l_info(%struct.i2c_client* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.adv7393_state* @devm_kzalloc(i32* %31, i32 48, i32 %32)
  store %struct.adv7393_state* %33, %struct.adv7393_state** %6, align 8
  %34 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %35 = icmp eq %struct.adv7393_state* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %124

39:                                               ; preds = %18
  %40 = load i32, i32* @ADV7393_POWER_MODE_REG_DEFAULT, align 4
  %41 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %42 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %44 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %46 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %45, i32 0, i32 1
  store i32 32, i32* %46, align 4
  %47 = load i32, i32* @ADV7393_HD_MODE_REG6_DEFAULT, align 4
  %48 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %49 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @ADV7393_SD_MODE_REG1_DEFAULT, align 4
  %51 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %52 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ADV7393_SD_MODE_REG2_DEFAULT, align 4
  %54 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %55 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @ADV7393_COMPOSITE_ID, align 4
  %57 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %58 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @V4L2_STD_NTSC, align 4
  %60 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %61 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %63 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %62, i32 0, i32 3
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_8__* %63, %struct.i2c_client* %64, i32* @adv7393_ops)
  %66 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %67 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %66, i32 0, i32 2
  %68 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__* %67, i32 3)
  %69 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %70 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %69, i32 0, i32 2
  %71 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %72 = load i32, i32* @ADV7393_BRIGHTNESS_MIN, align 4
  %73 = load i32, i32* @ADV7393_BRIGHTNESS_MAX, align 4
  %74 = load i32, i32* @ADV7393_BRIGHTNESS_DEF, align 4
  %75 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %70, i32* @adv7393_ctrl_ops, i32 %71, i32 %72, i32 %73, i32 1, i32 %74)
  %76 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %77 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %76, i32 0, i32 2
  %78 = load i32, i32* @V4L2_CID_HUE, align 4
  %79 = load i32, i32* @ADV7393_HUE_MIN, align 4
  %80 = load i32, i32* @ADV7393_HUE_MAX, align 4
  %81 = load i32, i32* @ADV7393_HUE_DEF, align 4
  %82 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %77, i32* @adv7393_ctrl_ops, i32 %78, i32 %79, i32 %80, i32 1, i32 %81)
  %83 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %84 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %83, i32 0, i32 2
  %85 = load i32, i32* @V4L2_CID_GAIN, align 4
  %86 = load i32, i32* @ADV7393_GAIN_MIN, align 4
  %87 = load i32, i32* @ADV7393_GAIN_MAX, align 4
  %88 = load i32, i32* @ADV7393_GAIN_DEF, align 4
  %89 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %84, i32* @adv7393_ctrl_ops, i32 %85, i32 %86, i32 %87, i32 1, i32 %88)
  %90 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %91 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %90, i32 0, i32 2
  %92 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %93 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %94, align 8
  %95 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %96 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %39
  %101 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %102 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %8, align 4
  %105 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %106 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %105, i32 0, i32 2
  %107 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__* %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %124

109:                                              ; preds = %39
  %110 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %111 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %110, i32 0, i32 2
  %112 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_9__* %111)
  %113 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %114 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %113, i32 0, i32 3
  %115 = call i32 @adv7393_initialize(%struct.TYPE_8__* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load %struct.adv7393_state*, %struct.adv7393_state** %6, align 8
  %120 = getelementptr inbounds %struct.adv7393_state, %struct.adv7393_state* %119, i32 0, i32 2
  %121 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__* %120)
  br label %122

122:                                              ; preds = %118, %109
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %100, %36, %15
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.adv7393_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_8__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_9__*) #1

declare dso_local i32 @adv7393_initialize(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
