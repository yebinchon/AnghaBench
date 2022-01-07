; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7740.c_ov7740_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ov7740 = type { %struct.v4l2_subdev, i32, i32*, i32*, i32, %struct.TYPE_6__, i32, i32 }
%struct.v4l2_subdev = type { i32, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"OV7740: I2C-Adapter doesn't support SMBUS\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"xvclk\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"OV7740: fail to get xvclk: %d\0A\00", align 1
@ov7740_regmap_config = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@I2C_CLIENT_SCCB = common dso_local global i32 0, align 4
@ov7740_subdev_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@ov7740_formats = common dso_local global i32* null, align 8
@ov7740_framesizes = common dso_local global i32* null, align 8
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@ov7740_subdev_internal_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov7740_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7740_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ov7740*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %11 = call i32 @i2c_check_functionality(%struct.TYPE_7__* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %172

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ov7740* @devm_kzalloc(i32* %21, i32 64, i32 %22)
  store %struct.ov7740* %23, %struct.ov7740** %4, align 8
  %24 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %25 = icmp ne %struct.ov7740* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %172

29:                                               ; preds = %19
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = call i32 @devm_clk_get(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %34 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %36 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %42 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %172

50:                                               ; preds = %29
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %53 = call i32 @ov7740_probe_dt(%struct.i2c_client* %51, %struct.ov7740* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %172

58:                                               ; preds = %50
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %59, i32* @ov7740_regmap_config)
  %61 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %62 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %64 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %70 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %172

78:                                               ; preds = %58
  %79 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %80 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %79, i32 0, i32 0
  store %struct.v4l2_subdev* %80, %struct.v4l2_subdev** %5, align 8
  %81 = load i32, i32* @I2C_CLIENT_SCCB, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %87 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %88 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %86, %struct.i2c_client* %87, i32* @ov7740_subdev_ops)
  %89 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %90 = call i32 @ov7740_set_power(%struct.ov7740* %89, i32 1)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %172

95:                                               ; preds = %78
  %96 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 1
  %98 = call i32 @pm_runtime_set_active(i32* %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 1
  %101 = call i32 @pm_runtime_enable(i32* %100)
  %102 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %103 = call i32 @ov7740_detect(%struct.ov7740* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %158

107:                                              ; preds = %95
  %108 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %109 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %108, i32 0, i32 4
  %110 = call i32 @mutex_init(i32* %109)
  %111 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %112 = call i32 @ov7740_init_controls(%struct.ov7740* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %155

116:                                              ; preds = %107
  %117 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %118 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = shl i32 %120, 1
  %122 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @v4l_info(%struct.i2c_client* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %126)
  %128 = load i32*, i32** @ov7740_formats, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %131 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %130, i32 0, i32 3
  store i32* %129, i32** %131, align 8
  %132 = load i32*, i32** @ov7740_framesizes, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %135 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %134, i32 0, i32 2
  store i32* %133, i32** %135, align 8
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %137 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %138 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %137, i32 0, i32 1
  %139 = call i32 @ov7740_get_default_format(%struct.v4l2_subdev* %136, i32* %138)
  %140 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %141 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %116
  br label %149

145:                                              ; preds = %116
  %146 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 1
  %148 = call i32 @pm_runtime_idle(i32* %147)
  store i32 0, i32* %2, align 4
  br label %172

149:                                              ; preds = %144
  %150 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %151 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @v4l2_ctrl_handler_free(i32 %153)
  br label %155

155:                                              ; preds = %149, %115
  %156 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %157 = call i32 @ov7740_free_controls(%struct.ov7740* %156)
  br label %158

158:                                              ; preds = %155, %106
  %159 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %160 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %159, i32 0, i32 1
  %161 = call i32 @pm_runtime_disable(i32* %160)
  %162 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 1
  %164 = call i32 @pm_runtime_set_suspended(i32* %163)
  %165 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %166 = call i32 @ov7740_set_power(%struct.ov7740* %165, i32 0)
  %167 = load %struct.ov7740*, %struct.ov7740** %4, align 8
  %168 = getelementptr inbounds %struct.ov7740, %struct.ov7740* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %168, i32 0, i32 1
  %170 = call i32 @media_entity_cleanup(%struct.TYPE_5__* %169)
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %158, %145, %93, %68, %56, %40, %26, %13
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.ov7740* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ov7740_probe_dt(%struct.i2c_client*, %struct.ov7740*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @ov7740_set_power(%struct.ov7740*, i32) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @ov7740_detect(%struct.ov7740*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ov7740_init_controls(%struct.ov7740*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @ov7740_get_default_format(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @pm_runtime_idle(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

declare dso_local i32 @ov7740_free_controls(%struct.ov7740*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
