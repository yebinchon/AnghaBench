; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.s5k4ecgx_platform_data* }
%struct.s5k4ecgx_platform_data = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_8__, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.s5k4ecgx = type { %struct.v4l2_subdev, i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"platform data is missing!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s5k4ecgx_ops = common dso_local global i32 0, align 4
@S5K4ECGX_DRIVER_NAME = common dso_local global i32 0, align 4
@s5k4ecgx_subdev_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to set gpios\0A\00", align 1
@S5K4ECGX_NUM_SUPPLIES = common dso_local global i32 0, align 4
@s5k4ecgx_supply_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to get regulators\0A\00", align 1
@s5k4ecgx_formats = common dso_local global i32* null, align 8
@s5k4ecgx_prev_sizes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @s5k4ecgx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.s5k4ecgx_platform_data*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.s5k4ecgx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.s5k4ecgx_platform_data*, %struct.s5k4ecgx_platform_data** %13, align 8
  store %struct.s5k4ecgx_platform_data* %14, %struct.s5k4ecgx_platform_data** %6, align 8
  %15 = load %struct.s5k4ecgx_platform_data*, %struct.s5k4ecgx_platform_data** %6, align 8
  %16 = icmp eq %struct.s5k4ecgx_platform_data* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_10__* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %142

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.s5k4ecgx* @devm_kzalloc(%struct.TYPE_10__* %25, i32 72, i32 %26)
  store %struct.s5k4ecgx* %27, %struct.s5k4ecgx** %8, align 8
  %28 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %29 = icmp ne %struct.s5k4ecgx* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %142

33:                                               ; preds = %23
  %34 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %35 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %34, i32 0, i32 6
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %38 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %40 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %39, i32 0, i32 0
  store %struct.v4l2_subdev* %40, %struct.v4l2_subdev** %7, align 8
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %41, %struct.i2c_client* %42, i32* @s5k4ecgx_ops)
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @S5K4ECGX_DRIVER_NAME, align 4
  %48 = call i32 @strscpy(i32 %46, i32 %47, i32 4)
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %49, i32 0, i32 2
  store i32* @s5k4ecgx_subdev_internal_ops, i32** %50, align 8
  %51 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %57 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %58 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %64, i32 0, i32 0
  %66 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %67 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %66, i32 0, i32 4
  %68 = call i32 @media_entity_pads_init(%struct.TYPE_8__* %65, i32 1, %struct.TYPE_9__* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %33
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %142

73:                                               ; preds = %33
  %74 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %75 = load %struct.s5k4ecgx_platform_data*, %struct.s5k4ecgx_platform_data** %6, align 8
  %76 = call i32 @s5k4ecgx_config_gpios(%struct.s5k4ecgx* %74, %struct.s5k4ecgx_platform_data* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = call i32 @dev_err(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %136

83:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @S5K4ECGX_NUM_SUPPLIES, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load i32*, i32** @s5k4ecgx_supply_names, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %95 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %94, i32 0, i32 3
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 4
  br label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %84

104:                                              ; preds = %84
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load i32, i32* @S5K4ECGX_NUM_SUPPLIES, align 4
  %108 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %109 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %108, i32 0, i32 3
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = call i32 @devm_regulator_bulk_get(%struct.TYPE_10__* %106, i32 %107, %struct.TYPE_11__* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = call i32 @dev_err(%struct.TYPE_10__* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %133

118:                                              ; preds = %104
  %119 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %120 = call i32 @s5k4ecgx_init_v4l2_ctrls(%struct.s5k4ecgx* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %133

124:                                              ; preds = %118
  %125 = load i32*, i32** @s5k4ecgx_formats, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %128 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %127, i32 0, i32 2
  store i32* %126, i32** %128, align 8
  %129 = load i32*, i32** @s5k4ecgx_prev_sizes, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %132 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %131, i32 0, i32 1
  store i32* %130, i32** %132, align 8
  store i32 0, i32* %3, align 4
  br label %142

133:                                              ; preds = %123, %114
  %134 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %135 = call i32 @s5k4ecgx_free_gpios(%struct.s5k4ecgx* %134)
  br label %136

136:                                              ; preds = %133, %79
  %137 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %8, align 8
  %138 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %138, i32 0, i32 0
  %140 = call i32 @media_entity_cleanup(%struct.TYPE_8__* %139)
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %136, %124, %71, %30, %17
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.s5k4ecgx* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @s5k4ecgx_config_gpios(%struct.s5k4ecgx*, %struct.s5k4ecgx_platform_data*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @s5k4ecgx_init_v4l2_ctrls(%struct.s5k4ecgx*) #1

declare dso_local i32 @s5k4ecgx_free_gpios(%struct.s5k4ecgx*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
