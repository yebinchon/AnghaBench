; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c_ov5647_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5647.c_ov5647_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ov5647 = type { i32, %struct.TYPE_5__, %struct.v4l2_subdev, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DT parsing error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"could not get xclk\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unsupported clock frequency: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ov5647_subdev_ops = common dso_local global i32 0, align 4
@ov5647_subdev_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"OmniVision OV5647 camera driver probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov5647_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5647_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ov5647*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %8, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ov5647* @devm_kzalloc(%struct.device* %16, i32 32, i32 %17)
  store %struct.ov5647* %18, %struct.ov5647** %5, align 8
  %19 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %20 = icmp ne %struct.ov5647* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %130

24:                                               ; preds = %1
  %25 = load i32, i32* @CONFIG_OF, align 4
  %26 = call i64 @IS_ENABLED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.device_node*, %struct.device_node** %8, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.device_node*, %struct.device_node** %8, align 8
  %33 = call i32 @ov5647_parse_dt(%struct.device_node* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %130

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %28, %24
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @devm_clk_get(%struct.device* %43, i32* null)
  %45 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %46 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %48 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %56 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %130

59:                                               ; preds = %42
  %60 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %61 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_get_rate(i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 25000000
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %130

72:                                               ; preds = %59
  %73 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %74 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %73, i32 0, i32 0
  %75 = call i32 @mutex_init(i32* %74)
  %76 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %77 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %76, i32 0, i32 2
  store %struct.v4l2_subdev* %77, %struct.v4l2_subdev** %7, align 8
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %80 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %78, %struct.i2c_client* %79, i32* @ov5647_subdev_ops)
  %81 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %82 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %82, i32 0, i32 2
  store i32* @ov5647_subdev_internal_ops, i32** %83, align 8
  %84 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %85 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %86 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %91 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %92 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %98, i32 0, i32 0
  %100 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %101 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %100, i32 0, i32 1
  %102 = call i32 @media_entity_pads_init(%struct.TYPE_4__* %99, i32 1, %struct.TYPE_5__* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %72
  br label %125

106:                                              ; preds = %72
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %108 = call i32 @ov5647_detect(%struct.v4l2_subdev* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %121

112:                                              ; preds = %106
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %114 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %121

118:                                              ; preds = %112
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i32 @dev_dbg(%struct.device* %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %130

121:                                              ; preds = %117, %111
  %122 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %123 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %122, i32 0, i32 0
  %124 = call i32 @media_entity_cleanup(%struct.TYPE_4__* %123)
  br label %125

125:                                              ; preds = %121, %105
  %126 = load %struct.ov5647*, %struct.ov5647** %5, align 8
  %127 = getelementptr inbounds %struct.ov5647, %struct.ov5647* %126, i32 0, i32 0
  %128 = call i32 @mutex_destroy(i32* %127)
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %125, %118, %66, %52, %36, %21
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.ov5647* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ov5647_parse_dt(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_4__*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ov5647_detect(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
