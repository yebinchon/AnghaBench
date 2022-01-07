; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5695.c_ov5695_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ov5695 = type { i32, i32, %struct.TYPE_5__, %struct.v4l2_subdev, i32, i32, i32*, %struct.i2c_client* }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@supported_modes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"xvclk\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to get xvclk\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OV5695_XVCLK_FREQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to set xvclk rate (24MHz)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"xvclk mismatched, modes are based on 24MHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to get reset-gpios\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to get power regulators\0A\00", align 1
@ov5695_subdev_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"v4l2 async register subdev failed\0A\00", align 1
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@ov5695_internal_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov5695_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5695_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ov5695*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ov5695* @devm_kzalloc(%struct.device* %12, i32 56, i32 %13)
  store %struct.ov5695* %14, %struct.ov5695** %7, align 8
  %15 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %16 = icmp ne %struct.ov5695* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %144

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %23 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %22, i32 0, i32 7
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load i32*, i32** @supported_modes, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %27 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %26, i32 0, i32 6
  store i32* %25, i32** %27, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call i32 @devm_clk_get(%struct.device* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %31 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %33 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %144

42:                                               ; preds = %20
  %43 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %44 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @OV5695_XVCLK_FREQ, align 8
  %47 = call i32 @clk_set_rate(i32 %45, i64 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %144

54:                                               ; preds = %42
  %55 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %56 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @clk_get_rate(i32 %57)
  %59 = load i64, i64* @OV5695_XVCLK_FREQ, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 @dev_warn(%struct.device* %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %54
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %67 = call i32 @devm_gpiod_get(%struct.device* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %69 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %71 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %64
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %144

80:                                               ; preds = %64
  %81 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %82 = call i32 @ov5695_configure_regulators(%struct.ov5695* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %144

89:                                               ; preds = %80
  %90 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %91 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %90, i32 0, i32 0
  %92 = call i32 @mutex_init(i32* %91)
  %93 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %94 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %93, i32 0, i32 3
  store %struct.v4l2_subdev* %94, %struct.v4l2_subdev** %8, align 8
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %95, %struct.i2c_client* %96, i32* @ov5695_subdev_ops)
  %98 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %99 = call i32 @ov5695_initialize_controls(%struct.ov5695* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %139

103:                                              ; preds = %89
  %104 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %105 = call i32 @__ov5695_power_on(%struct.ov5695* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %135

109:                                              ; preds = %103
  %110 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = call i32 @ov5695_check_sensor_id(%struct.ov5695* %110, %struct.i2c_client* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %132

116:                                              ; preds = %109
  %117 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %118 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %131

124:                                              ; preds = %116
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = call i32 @pm_runtime_set_active(%struct.device* %125)
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = call i32 @pm_runtime_enable(%struct.device* %127)
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = call i32 @pm_runtime_idle(%struct.device* %129)
  store i32 0, i32* %3, align 4
  br label %144

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %115
  %133 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %134 = call i32 @__ov5695_power_off(%struct.ov5695* %133)
  br label %135

135:                                              ; preds = %132, %108
  %136 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %137 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %136, i32 0, i32 1
  %138 = call i32 @v4l2_ctrl_handler_free(i32* %137)
  br label %139

139:                                              ; preds = %135, %102
  %140 = load %struct.ov5695*, %struct.ov5695** %7, align 8
  %141 = getelementptr inbounds %struct.ov5695, %struct.ov5695* %140, i32 0, i32 0
  %142 = call i32 @mutex_destroy(i32* %141)
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %139, %124, %85, %75, %50, %37, %17
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.ov5695* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @ov5695_configure_regulators(%struct.ov5695*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @ov5695_initialize_controls(%struct.ov5695*) #1

declare dso_local i32 @__ov5695_power_on(%struct.ov5695*) #1

declare dso_local i32 @ov5695_check_sensor_id(%struct.ov5695*, %struct.i2c_client*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_idle(%struct.device*) #1

declare dso_local i32 @__ov5695_power_off(%struct.ov5695*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
