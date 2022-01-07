; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx258.c_imx258_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx258.c_imx258_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.imx258 = type { %struct.TYPE_6__, %struct.TYPE_8__, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx258_subdev_ops = common dso_local global i32 0, align 4
@supported_modes = common dso_local global i32* null, align 8
@imx258_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @imx258_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx258_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.imx258*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = call i32 @device_property_read_u32(i32* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %6)
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 19200000
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %113

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @device_property_read_u32(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 180
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %15
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %113

27:                                               ; preds = %21
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.imx258* @devm_kzalloc(i32* %29, i32 32, i32 %30)
  store %struct.imx258* %31, %struct.imx258** %4, align 8
  %32 = load %struct.imx258*, %struct.imx258** %4, align 8
  %33 = icmp ne %struct.imx258* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %113

37:                                               ; preds = %27
  %38 = load %struct.imx258*, %struct.imx258** %4, align 8
  %39 = getelementptr inbounds %struct.imx258, %struct.imx258* %38, i32 0, i32 0
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__* %39, %struct.i2c_client* %40, i32* @imx258_subdev_ops)
  %42 = load %struct.imx258*, %struct.imx258** %4, align 8
  %43 = call i32 @imx258_identify_module(%struct.imx258* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %113

48:                                               ; preds = %37
  %49 = load i32*, i32** @supported_modes, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.imx258*, %struct.imx258** %4, align 8
  %52 = getelementptr inbounds %struct.imx258, %struct.imx258* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.imx258*, %struct.imx258** %4, align 8
  %54 = call i32 @imx258_init_controls(%struct.imx258* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %113

59:                                               ; preds = %48
  %60 = load %struct.imx258*, %struct.imx258** %4, align 8
  %61 = getelementptr inbounds %struct.imx258, %struct.imx258* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32* @imx258_internal_ops, i32** %62, align 8
  %63 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %64 = load %struct.imx258*, %struct.imx258** %4, align 8
  %65 = getelementptr inbounds %struct.imx258, %struct.imx258* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %70 = load %struct.imx258*, %struct.imx258** %4, align 8
  %71 = getelementptr inbounds %struct.imx258, %struct.imx258* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %75 = load %struct.imx258*, %struct.imx258** %4, align 8
  %76 = getelementptr inbounds %struct.imx258, %struct.imx258* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.imx258*, %struct.imx258** %4, align 8
  %79 = getelementptr inbounds %struct.imx258, %struct.imx258* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.imx258*, %struct.imx258** %4, align 8
  %82 = getelementptr inbounds %struct.imx258, %struct.imx258* %81, i32 0, i32 1
  %83 = call i32 @media_entity_pads_init(%struct.TYPE_7__* %80, i32 1, %struct.TYPE_8__* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %59
  br label %109

87:                                               ; preds = %59
  %88 = load %struct.imx258*, %struct.imx258** %4, align 8
  %89 = getelementptr inbounds %struct.imx258, %struct.imx258* %88, i32 0, i32 0
  %90 = call i32 @v4l2_async_register_subdev_sensor_common(%struct.TYPE_6__* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %104

94:                                               ; preds = %87
  %95 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = call i32 @pm_runtime_set_active(i32* %96)
  %98 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = call i32 @pm_runtime_enable(i32* %99)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = call i32 @pm_runtime_idle(i32* %102)
  store i32 0, i32* %2, align 4
  br label %113

104:                                              ; preds = %93
  %105 = load %struct.imx258*, %struct.imx258** %4, align 8
  %106 = getelementptr inbounds %struct.imx258, %struct.imx258* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = call i32 @media_entity_cleanup(%struct.TYPE_7__* %107)
  br label %109

109:                                              ; preds = %104, %86
  %110 = load %struct.imx258*, %struct.imx258** %4, align 8
  %111 = call i32 @imx258_free_controls(%struct.imx258* %110)
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %94, %57, %46, %34, %24, %12
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local %struct.imx258* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_6__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @imx258_identify_module(%struct.imx258*) #1

declare dso_local i32 @imx258_init_controls(%struct.imx258*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_async_register_subdev_sensor_common(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_idle(i32*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_7__*) #1

declare dso_local i32 @imx258_free_controls(%struct.imx258*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
