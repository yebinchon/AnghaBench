; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7343.c_adv7343_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7343.c_adv7343_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.adv7343_state = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"chip found @ 0x%x (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ADV7343_SD_MODE_REG1_DEFAULT = common dso_local global i32 0, align 4
@ADV7343_SD_MODE_REG2_DEFAULT = common dso_local global i32 0, align 4
@ADV7343_COMPOSITE_ID = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@adv7343_ops = common dso_local global i32 0, align 4
@adv7343_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@ADV7343_BRIGHTNESS_MIN = common dso_local global i32 0, align 4
@ADV7343_BRIGHTNESS_MAX = common dso_local global i32 0, align 4
@ADV7343_BRIGHTNESS_DEF = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@ADV7343_HUE_MIN = common dso_local global i32 0, align 4
@ADV7343_HUE_MAX = common dso_local global i32 0, align 4
@ADV7343_HUE_DEF = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@ADV7343_GAIN_MIN = common dso_local global i32 0, align 4
@ADV7343_GAIN_MAX = common dso_local global i32 0, align 4
@ADV7343_GAIN_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adv7343_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7343_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adv7343_state*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 2
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %10 = call i32 @i2c_check_functionality(%struct.TYPE_11__* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @v4l_info(%struct.i2c_client* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.adv7343_state* @devm_kzalloc(i32* %28, i32 56, i32 %29)
  store %struct.adv7343_state* %30, %struct.adv7343_state** %4, align 8
  %31 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %32 = icmp eq %struct.adv7343_state* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %127

36:                                               ; preds = %15
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = call i32 @adv7343_get_pdata(%struct.i2c_client* %37)
  %39 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %40 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 8
  %41 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %42 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %41, i32 0, i32 0
  store i32 128, i32* %42, align 8
  %43 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %44 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %46 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %45, i32 0, i32 2
  store i32 32, i32* %46, align 8
  %47 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %48 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @ADV7343_SD_MODE_REG1_DEFAULT, align 4
  %50 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %51 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ADV7343_SD_MODE_REG2_DEFAULT, align 4
  %53 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %54 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @ADV7343_COMPOSITE_ID, align 4
  %56 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %57 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @V4L2_STD_NTSC, align 4
  %59 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %60 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %62 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %61, i32 0, i32 5
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_9__* %62, %struct.i2c_client* %63, i32* @adv7343_ops)
  %65 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %66 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %65, i32 0, i32 4
  %67 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %66, i32 2)
  %68 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %69 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %68, i32 0, i32 4
  %70 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %71 = load i32, i32* @ADV7343_BRIGHTNESS_MIN, align 4
  %72 = load i32, i32* @ADV7343_BRIGHTNESS_MAX, align 4
  %73 = load i32, i32* @ADV7343_BRIGHTNESS_DEF, align 4
  %74 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %69, i32* @adv7343_ctrl_ops, i32 %70, i32 %71, i32 %72, i32 1, i32 %73)
  %75 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %76 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %75, i32 0, i32 4
  %77 = load i32, i32* @V4L2_CID_HUE, align 4
  %78 = load i32, i32* @ADV7343_HUE_MIN, align 4
  %79 = load i32, i32* @ADV7343_HUE_MAX, align 4
  %80 = load i32, i32* @ADV7343_HUE_DEF, align 4
  %81 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %76, i32* @adv7343_ctrl_ops, i32 %77, i32 %78, i32 %79, i32 1, i32 %80)
  %82 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %83 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %82, i32 0, i32 4
  %84 = load i32, i32* @V4L2_CID_GAIN, align 4
  %85 = load i32, i32* @ADV7343_GAIN_MIN, align 4
  %86 = load i32, i32* @ADV7343_GAIN_MAX, align 4
  %87 = load i32, i32* @ADV7343_GAIN_DEF, align 4
  %88 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %83, i32* @adv7343_ctrl_ops, i32 %84, i32 %85, i32 %86, i32 1, i32 %87)
  %89 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %90 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %89, i32 0, i32 4
  %91 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %92 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %93, align 8
  %94 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %95 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %36
  %100 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %101 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %5, align 4
  br label %118

104:                                              ; preds = %36
  %105 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %106 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %105, i32 0, i32 4
  %107 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__* %106)
  %108 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %109 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %108, i32 0, i32 5
  %110 = call i32 @adv7343_initialize(%struct.TYPE_9__* %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %118

114:                                              ; preds = %104
  %115 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %116 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %115, i32 0, i32 5
  %117 = call i32 @v4l2_async_register_subdev(%struct.TYPE_9__* %116)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %113, %99
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load %struct.adv7343_state*, %struct.adv7343_state** %4, align 8
  %123 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %122, i32 0, i32 4
  %124 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__* %123)
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %33, %12
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local %struct.adv7343_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @adv7343_get_pdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_9__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__*) #1

declare dso_local i32 @adv7343_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
