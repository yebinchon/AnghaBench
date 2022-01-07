; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ov5675 = type { i32, %struct.TYPE_6__, %struct.TYPE_8__, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"failed to check HW configuration: %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ov5675_subdev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to find sensor: %d\00", align 1
@supported_modes = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to init controls: %d\00", align 1
@ov5675_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@ov5675_subdev_entity_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to init entity pads: %d\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to register V4L2 subdev: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov5675_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5675_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ov5675*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call i32 @ov5675_check_hwcfg(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %131

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ov5675* @devm_kzalloc(i32* %19, i32 64, i32 %20)
  store %struct.ov5675* %21, %struct.ov5675** %4, align 8
  %22 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %23 = icmp ne %struct.ov5675* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %131

27:                                               ; preds = %17
  %28 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %29 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %28, i32 0, i32 1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__* %29, %struct.i2c_client* %30, i32* @ov5675_subdev_ops)
  %32 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %33 = call i32 @ov5675_identify_module(%struct.ov5675* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %131

42:                                               ; preds = %27
  %43 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %44 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %43, i32 0, i32 0
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load i32*, i32** @supported_modes, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %49 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %51 = call i32 @ov5675_init_controls(%struct.ov5675* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %121

59:                                               ; preds = %42
  %60 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %61 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i32* @ov5675_internal_ops, i32** %62, align 8
  %63 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %64 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %65 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 8
  %69 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %70 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32* @ov5675_subdev_entity_ops, i32** %72, align 8
  %73 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %74 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %75 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %79 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %80 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %83 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %86 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %85, i32 0, i32 2
  %87 = call i32 @media_entity_pads_init(%struct.TYPE_7__* %84, i32 1, %struct.TYPE_8__* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %59
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %121

95:                                               ; preds = %59
  %96 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %97 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %96, i32 0, i32 1
  %98 = call i32 @v4l2_async_register_subdev_sensor_common(%struct.TYPE_6__* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %116

106:                                              ; preds = %95
  %107 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = call i32 @pm_runtime_set_active(i32* %108)
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = call i32 @pm_runtime_enable(i32* %111)
  %113 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = call i32 @pm_runtime_idle(i32* %114)
  store i32 0, i32* %2, align 4
  br label %131

116:                                              ; preds = %101
  %117 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %118 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = call i32 @media_entity_cleanup(%struct.TYPE_7__* %119)
  br label %121

121:                                              ; preds = %116, %90, %54
  %122 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %123 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @v4l2_ctrl_handler_free(i32 %125)
  %127 = load %struct.ov5675*, %struct.ov5675** %4, align 8
  %128 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %127, i32 0, i32 0
  %129 = call i32 @mutex_destroy(i32* %128)
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %121, %106, %36, %24, %11
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @ov5675_check_hwcfg(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.ov5675* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @ov5675_identify_module(%struct.ov5675*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ov5675_init_controls(%struct.ov5675*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_async_register_subdev_sensor_common(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_idle(i32*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
