; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.s5k6aa_platform_data* }
%struct.s5k6aa_platform_data = type { i64, i32, i32, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_10__, i32, i32*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.s5k6aa = type { i64, %struct.v4l2_subdev, %struct.TYPE_9__, %struct.TYPE_13__*, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Platform data not specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"MCLK frequency not specified\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s5k6aa_subdev_ops = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@s5k6aa_subdev_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@S5K6AA_NUM_SUPPLIES = common dso_local global i32 0, align 4
@s5k6aa_supply_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to get regulators\0A\00", align 1
@S5K6AA_WIN_WIDTH_MAX = common dso_local global i32 0, align 4
@S5K6AA_WIN_HEIGHT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @s5k6aa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.s5k6aa_platform_data*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.s5k6aa*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %13, align 8
  store %struct.s5k6aa_platform_data* %14, %struct.s5k6aa_platform_data** %6, align 8
  %15 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %6, align 8
  %16 = icmp eq %struct.s5k6aa_platform_data* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %183

23:                                               ; preds = %2
  %24 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %6, align 8
  %25 = getelementptr inbounds %struct.s5k6aa_platform_data, %struct.s5k6aa_platform_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_12__* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %183

34:                                               ; preds = %23
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.s5k6aa* @devm_kzalloc(%struct.TYPE_12__* %36, i32 96, i32 %37)
  store %struct.s5k6aa* %38, %struct.s5k6aa** %8, align 8
  %39 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %40 = icmp ne %struct.s5k6aa* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %183

44:                                               ; preds = %34
  %45 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %46 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %45, i32 0, i32 10
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %6, align 8
  %49 = getelementptr inbounds %struct.s5k6aa_platform_data, %struct.s5k6aa_platform_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %52 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %6, align 8
  %54 = getelementptr inbounds %struct.s5k6aa_platform_data, %struct.s5k6aa_platform_data* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %57 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 4
  %58 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %6, align 8
  %59 = getelementptr inbounds %struct.s5k6aa_platform_data, %struct.s5k6aa_platform_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %62 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  %63 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %6, align 8
  %64 = getelementptr inbounds %struct.s5k6aa_platform_data, %struct.s5k6aa_platform_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %67 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %6, align 8
  %69 = getelementptr inbounds %struct.s5k6aa_platform_data, %struct.s5k6aa_platform_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %72 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %6, align 8
  %74 = getelementptr inbounds %struct.s5k6aa_platform_data, %struct.s5k6aa_platform_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %77 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %79 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %78, i32 0, i32 1
  store %struct.v4l2_subdev* %79, %struct.v4l2_subdev** %7, align 8
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %80, %struct.i2c_client* %81, i32* @s5k6aa_subdev_ops)
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DRIVER_NAME, align 4
  %87 = call i32 @strscpy(i32 %85, i32 %86, i32 4)
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %88, i32 0, i32 2
  store i32* @s5k6aa_subdev_internal_ops, i32** %89, align 8
  %90 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %96 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %97 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %103, i32 0, i32 0
  %105 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %106 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %105, i32 0, i32 4
  %107 = call i32 @media_entity_pads_init(%struct.TYPE_10__* %104, i32 1, %struct.TYPE_11__* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %44
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %183

112:                                              ; preds = %44
  %113 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %114 = load %struct.s5k6aa_platform_data*, %struct.s5k6aa_platform_data** %6, align 8
  %115 = call i32 @s5k6aa_configure_gpios(%struct.s5k6aa* %113, %struct.s5k6aa_platform_data* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %177

119:                                              ; preds = %112
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %137, %119
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @S5K6AA_NUM_SUPPLIES, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load i32*, i32** @s5k6aa_supply_names, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %131 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %130, i32 0, i32 3
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 4
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %120

140:                                              ; preds = %120
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = load i32, i32* @S5K6AA_NUM_SUPPLIES, align 4
  %144 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %145 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %144, i32 0, i32 3
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = call i32 @devm_regulator_bulk_get(%struct.TYPE_12__* %142, i32 %143, %struct.TYPE_13__* %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %140
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = call i32 @dev_err(%struct.TYPE_12__* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %177

154:                                              ; preds = %140
  %155 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %156 = call i32 @s5k6aa_initialize_ctrls(%struct.s5k6aa* %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %177

160:                                              ; preds = %154
  %161 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %162 = call i32 @s5k6aa_presets_data_init(%struct.s5k6aa* %161)
  %163 = load i32, i32* @S5K6AA_WIN_WIDTH_MAX, align 4
  %164 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %165 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 3
  store i32 %163, i32* %166, align 4
  %167 = load i32, i32* @S5K6AA_WIN_HEIGHT_MAX, align 4
  %168 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %169 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 8
  %171 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %172 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  store i64 0, i64* %173, align 8
  %174 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %175 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  store i32 0, i32* %3, align 4
  br label %183

177:                                              ; preds = %159, %150, %118
  %178 = load %struct.s5k6aa*, %struct.s5k6aa** %8, align 8
  %179 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %179, i32 0, i32 0
  %181 = call i32 @media_entity_cleanup(%struct.TYPE_10__* %180)
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %177, %160, %110, %41, %28, %17
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.s5k6aa* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @s5k6aa_configure_gpios(%struct.s5k6aa*, %struct.s5k6aa_platform_data*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_12__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @s5k6aa_initialize_ctrls(%struct.s5k6aa*) #1

declare dso_local i32 @s5k6aa_presets_data_init(%struct.s5k6aa*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
