; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c_ov2685_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2685.c_ov2685_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ov2685 = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_8__, i32, i32, i32*, %struct.i2c_client* }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@supported_modes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"xvclk\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to get xvclk\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OV2685_XVCLK_FREQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to set xvclk rate (24MHz)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"xvclk mismatched, modes are based on 24MHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to get reset-gpios\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to get power regulators\0A\00", align 1
@ov2685_subdev_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"v4l2 async register subdev failed\0A\00", align 1
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@ov2685_internal_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov2685_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2685_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ov2685*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ov2685* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.ov2685* %13, %struct.ov2685** %7, align 8
  %14 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %15 = icmp ne %struct.ov2685* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %143

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %22 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %21, i32 0, i32 7
  store %struct.i2c_client* %20, %struct.i2c_client** %22, align 8
  %23 = load i32*, i32** @supported_modes, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %26 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %25, i32 0, i32 6
  store i32* %24, i32** %26, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 @devm_clk_get(%struct.device* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %30 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %32 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %143

41:                                               ; preds = %19
  %42 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %43 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* @OV2685_XVCLK_FREQ, align 8
  %46 = call i32 @clk_set_rate(i32 %44, i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %143

53:                                               ; preds = %41
  %54 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %55 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @clk_get_rate(i32 %56)
  %58 = load i64, i64* @OV2685_XVCLK_FREQ, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = call i32 @dev_warn(%struct.device* %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %66 = call i32 @devm_gpiod_get(%struct.device* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %68 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %70 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %143

79:                                               ; preds = %63
  %80 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %81 = call i32 @ov2685_configure_regulators(%struct.ov2685* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %143

88:                                               ; preds = %79
  %89 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %90 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %89, i32 0, i32 0
  %91 = call i32 @mutex_init(i32* %90)
  %92 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %93 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %92, i32 0, i32 2
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__* %93, %struct.i2c_client* %94, i32* @ov2685_subdev_ops)
  %96 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %97 = call i32 @ov2685_initialize_controls(%struct.ov2685* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %138

101:                                              ; preds = %88
  %102 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %103 = call i32 @__ov2685_power_on(%struct.ov2685* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %134

107:                                              ; preds = %101
  %108 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = call i32 @ov2685_check_sensor_id(%struct.ov2685* %108, %struct.i2c_client* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %131

114:                                              ; preds = %107
  %115 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %116 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %115, i32 0, i32 2
  %117 = call i32 @v4l2_async_register_subdev(%struct.TYPE_6__* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = call i32 @dev_err(%struct.device* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %130

123:                                              ; preds = %114
  %124 = load %struct.device*, %struct.device** %6, align 8
  %125 = call i32 @pm_runtime_set_active(%struct.device* %124)
  %126 = load %struct.device*, %struct.device** %6, align 8
  %127 = call i32 @pm_runtime_enable(%struct.device* %126)
  %128 = load %struct.device*, %struct.device** %6, align 8
  %129 = call i32 @pm_runtime_idle(%struct.device* %128)
  store i32 0, i32* %3, align 4
  br label %143

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %113
  %132 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %133 = call i32 @__ov2685_power_off(%struct.ov2685* %132)
  br label %134

134:                                              ; preds = %131, %106
  %135 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %136 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %135, i32 0, i32 1
  %137 = call i32 @v4l2_ctrl_handler_free(i32* %136)
  br label %138

138:                                              ; preds = %134, %100
  %139 = load %struct.ov2685*, %struct.ov2685** %7, align 8
  %140 = getelementptr inbounds %struct.ov2685, %struct.ov2685* %139, i32 0, i32 0
  %141 = call i32 @mutex_destroy(i32* %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %138, %123, %84, %74, %49, %36, %16
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.ov2685* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @ov2685_configure_regulators(%struct.ov2685*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @ov2685_initialize_controls(%struct.ov2685*) #1

declare dso_local i32 @__ov2685_power_on(%struct.ov2685*) #1

declare dso_local i32 @ov2685_check_sensor_id(%struct.ov2685*, %struct.i2c_client*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_idle(%struct.device*) #1

declare dso_local i32 @__ov2685_power_off(%struct.ov2685*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
