; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c_s5k6a3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c_s5k6a3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.s5k6a3 = type { i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.v4l2_subdev, %struct.TYPE_11__*, i32, i32, %struct.device*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@S5K6A3_CLK_NAME = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@S5K6A3_DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@S5K6A3_DEFAULT_CLK_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"using default %u Hz clock frequency\0A\00", align 1
@S5K6A3_NUM_SUPPLIES = common dso_local global i32 0, align 4
@s5k6a3_supply_names = common dso_local global i32* null, align 8
@s5k6a3_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@s5k6a3_sd_internal_ops = common dso_local global i32 0, align 4
@s5k6a3_formats = common dso_local global %struct.TYPE_8__* null, align 8
@S5K6A3_DEFAULT_WIDTH = common dso_local global i32 0, align 4
@S5K6A3_DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @s5k6a3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6a3_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s5k6a3*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.s5k6a3* @devm_kzalloc(%struct.device* %12, i32 80, i32 %13)
  store %struct.s5k6a3* %14, %struct.s5k6a3** %5, align 8
  %15 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %16 = icmp ne %struct.s5k6a3* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %190

20:                                               ; preds = %1
  %21 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %22 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %21, i32 0, i32 8
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %27 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @ERR_PTR(i32 %29)
  %31 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %32 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %35 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %34, i32 0, i32 7
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %37 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %36, i32 0, i32 7
  %38 = load %struct.device*, %struct.device** %37, align 8
  %39 = load i32, i32* @S5K6A3_CLK_NAME, align 4
  %40 = call i32 @devm_clk_get(%struct.device* %38, i32 %39)
  %41 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %42 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %44 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %20
  %49 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %50 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %190

53:                                               ; preds = %20
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @of_get_gpio_flags(i32 %56, i32 0, i32* null)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @gpio_is_valid(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %190

63:                                               ; preds = %53
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %67 = load i32, i32* @S5K6A3_DRV_NAME, align 4
  %68 = call i32 @devm_gpio_request_one(%struct.device* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %2, align 4
  br label %190

73:                                               ; preds = %63
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %76 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %81 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %80, i32 0, i32 5
  %82 = call i64 @of_property_read_u32(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %73
  %85 = load i32, i32* @S5K6A3_DEFAULT_CLK_FREQ, align 4
  %86 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %87 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %90 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_info(%struct.device* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %84, %73
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %111, %93
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @S5K6A3_NUM_SUPPLIES, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load i32*, i32** @s5k6a3_supply_names, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %105 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %104, i32 0, i32 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32 %103, i32* %110, align 4
  br label %111

111:                                              ; preds = %98
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %94

114:                                              ; preds = %94
  %115 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* @S5K6A3_NUM_SUPPLIES, align 4
  %118 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %119 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %118, i32 0, i32 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = call i32 @devm_regulator_bulk_get(%struct.device* %116, i32 %117, %struct.TYPE_11__* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %2, align 4
  br label %190

126:                                              ; preds = %114
  %127 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %128 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %127, i32 0, i32 3
  store %struct.v4l2_subdev* %128, %struct.v4l2_subdev** %6, align 8
  %129 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %130 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %131 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %129, %struct.i2c_client* %130, i32* @s5k6a3_subdev_ops)
  %132 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %133 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %134 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 8
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %139 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %138, i32 0, i32 1
  store i32* @s5k6a3_sd_internal_ops, i32** %139, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s5k6a3_formats, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %145 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  %147 = load i32, i32* @S5K6A3_DEFAULT_WIDTH, align 4
  %148 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %149 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* @S5K6A3_DEFAULT_HEIGHT, align 4
  %152 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %153 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %156 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %157 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %160 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %161 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  %163 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %164 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %163, i32 0, i32 0
  %165 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %166 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %165, i32 0, i32 1
  %167 = call i32 @media_entity_pads_init(%struct.TYPE_9__* %164, i32 1, %struct.TYPE_10__* %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %126
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %2, align 4
  br label %190

172:                                              ; preds = %126
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = call i32 @pm_runtime_no_callbacks(%struct.device* %173)
  %175 = load %struct.device*, %struct.device** %4, align 8
  %176 = call i32 @pm_runtime_enable(%struct.device* %175)
  %177 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %178 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %172
  %182 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = call i32 @pm_runtime_disable(%struct.device* %183)
  %185 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %186 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %185, i32 0, i32 0
  %187 = call i32 @media_entity_cleanup(%struct.TYPE_9__* %186)
  br label %188

188:                                              ; preds = %181, %172
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %170, %124, %71, %61, %48, %17
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.s5k6a3* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_get_gpio_flags(i32, i32, i32*) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_no_callbacks(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
