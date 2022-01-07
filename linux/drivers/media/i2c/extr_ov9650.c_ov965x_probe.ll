; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32, i32 }
%struct.i2c_client = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ov9650_platform_data* }
%struct.ov9650_platform_data = type { i64 }
%struct.v4l2_subdev = type { i32, %struct.TYPE_8__, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ov965x = type { i64, i32, i32*, i32*, i32, %struct.TYPE_9__, %struct.v4l2_subdev, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@ov965x_probe.ov965x_regmap_config = internal constant %struct.regmap_config { i32 8, i32 8, i32 171 }, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate register map\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MCLK frequency not specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Neither platform data nor device property specified\0A\00", align 1
@ov965x_subdev_ops = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@ov965x_sd_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@ov965x_framesizes = common dso_local global i32* null, align 8
@ov965x_intervals = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov965x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ov9650_platform_data*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.ov965x*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.ov9650_platform_data*, %struct.ov9650_platform_data** %10, align 8
  store %struct.ov9650_platform_data* %11, %struct.ov9650_platform_data** %4, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ov965x* @devm_kzalloc(%struct.TYPE_10__* %13, i32 80, i32 %14)
  store %struct.ov965x* %15, %struct.ov965x** %6, align 8
  %16 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %17 = icmp ne %struct.ov965x* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %194

21:                                               ; preds = %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = call i32 @devm_regmap_init_sccb(%struct.i2c_client* %22, %struct.regmap_config* @ov965x_probe.ov965x_regmap_config)
  %24 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %25 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %27 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i32 @dev_err(%struct.TYPE_10__* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %36 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %194

39:                                               ; preds = %21
  %40 = load %struct.ov9650_platform_data*, %struct.ov9650_platform_data** %4, align 8
  %41 = icmp ne %struct.ov9650_platform_data* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.ov9650_platform_data*, %struct.ov9650_platform_data** %4, align 8
  %44 = getelementptr inbounds %struct.ov9650_platform_data, %struct.ov9650_platform_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i32 @dev_err(%struct.TYPE_10__* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %194

53:                                               ; preds = %42
  %54 = load %struct.ov9650_platform_data*, %struct.ov9650_platform_data** %4, align 8
  %55 = getelementptr inbounds %struct.ov9650_platform_data, %struct.ov9650_platform_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %58 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %60 = load %struct.ov9650_platform_data*, %struct.ov9650_platform_data** %4, align 8
  %61 = call i32 @ov965x_configure_gpios_pdata(%struct.ov965x* %59, %struct.ov9650_platform_data* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %194

66:                                               ; preds = %53
  br label %109

67:                                               ; preds = %39
  %68 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i64 @dev_fwnode(%struct.TYPE_10__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %67
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 @devm_clk_get(%struct.TYPE_10__* %74, i32* null)
  %76 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %77 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %79 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %85 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %194

88:                                               ; preds = %72
  %89 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %90 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @clk_get_rate(i32 %91)
  %93 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %94 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %96 = call i32 @ov965x_configure_gpios(%struct.ov965x* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %194

101:                                              ; preds = %88
  br label %108

102:                                              ; preds = %67
  %103 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = call i32 @dev_err(%struct.TYPE_10__* %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %194

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %66
  %110 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %111 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %110, i32 0, i32 1
  %112 = call i32 @mutex_init(i32* %111)
  %113 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %114 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %113, i32 0, i32 6
  store %struct.v4l2_subdev* %114, %struct.v4l2_subdev** %5, align 8
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %116 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %117 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %115, %struct.i2c_client* %116, i32* @ov965x_subdev_ops)
  %118 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %119 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @DRIVER_NAME, align 4
  %122 = call i32 @strscpy(i32 %120, i32 %121, i32 4)
  %123 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %123, i32 0, i32 3
  store i32* @ov965x_sd_internal_ops, i32** %124, align 8
  %125 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %126 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %129 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %133 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %134 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %138 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  %140 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %140, i32 0, i32 1
  %142 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %143 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %142, i32 0, i32 5
  %144 = call i32 @media_entity_pads_init(%struct.TYPE_8__* %141, i32 1, %struct.TYPE_9__* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %109
  br label %189

148:                                              ; preds = %109
  %149 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %150 = call i32 @ov965x_initialize_controls(%struct.ov965x* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %185

154:                                              ; preds = %148
  %155 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %156 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %155, i32 0, i32 4
  %157 = call i32 @ov965x_get_default_format(i32* %156)
  %158 = load i32*, i32** @ov965x_framesizes, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %161 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %160, i32 0, i32 3
  store i32* %159, i32** %161, align 8
  %162 = load i32*, i32** @ov965x_intervals, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %165 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %164, i32 0, i32 2
  store i32* %163, i32** %165, align 8
  %166 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %167 = call i32 @ov965x_detect_sensor(%struct.v4l2_subdev* %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %154
  br label %180

171:                                              ; preds = %154
  %172 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %173 = call i32 @ov965x_update_exposure_ctrl(%struct.ov965x* %172)
  %174 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %175 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %180

179:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %194

180:                                              ; preds = %178, %170
  %181 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %182 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @v4l2_ctrl_handler_free(i32 %183)
  br label %185

185:                                              ; preds = %180, %153
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %187 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %186, i32 0, i32 1
  %188 = call i32 @media_entity_cleanup(%struct.TYPE_8__* %187)
  br label %189

189:                                              ; preds = %185, %147
  %190 = load %struct.ov965x*, %struct.ov965x** %6, align 8
  %191 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %190, i32 0, i32 1
  %192 = call i32 @mutex_destroy(i32* %191)
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %189, %179, %102, %99, %83, %64, %47, %31, %18
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.ov965x* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_sccb(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ov965x_configure_gpios_pdata(%struct.ov965x*, %struct.ov9650_platform_data*) #1

declare dso_local i64 @dev_fwnode(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @ov965x_configure_gpios(%struct.ov965x*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ov965x_initialize_controls(%struct.ov965x*) #1

declare dso_local i32 @ov965x_get_default_format(i32*) #1

declare dso_local i32 @ov965x_detect_sensor(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov965x_update_exposure_ctrl(%struct.ov965x*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
