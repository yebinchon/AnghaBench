; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx319.c_imx319_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx319.c_imx319_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.imx319 = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_9__, i32*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx319_subdev_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to find sensor: %d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to get hwcfg\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@link_freq_menu_items = common dso_local global i64* null, align 8
@IMX319_LINK_FREQ_INDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"link freq index %d matched\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"no link frequency supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@supported_modes = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to init controls: %d\00", align 1
@imx319_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@imx319_subdev_entity_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to init entity pads: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @imx319_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx319_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.imx319*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.imx319* @devm_kzalloc(i32* %8, i32 72, i32 %9)
  store %struct.imx319* %10, %struct.imx319** %4, align 8
  %11 = load %struct.imx319*, %struct.imx319** %4, align 8
  %12 = icmp ne %struct.imx319* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %185

16:                                               ; preds = %1
  %17 = load %struct.imx319*, %struct.imx319** %4, align 8
  %18 = getelementptr inbounds %struct.imx319, %struct.imx319* %17, i32 0, i32 1
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.imx319*, %struct.imx319** %4, align 8
  %21 = getelementptr inbounds %struct.imx319, %struct.imx319* %20, i32 0, i32 2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_7__* %21, %struct.i2c_client* %22, i32* @imx319_subdev_ops)
  %24 = load %struct.imx319*, %struct.imx319** %4, align 8
  %25 = call i32 @imx319_identify_module(%struct.imx319* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %180

33:                                               ; preds = %16
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call %struct.TYPE_10__* @imx319_get_hwcfg(i32* %35)
  %37 = load %struct.imx319*, %struct.imx319** %4, align 8
  %38 = getelementptr inbounds %struct.imx319, %struct.imx319* %37, i32 0, i32 5
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %38, align 8
  %39 = load %struct.imx319*, %struct.imx319** %4, align 8
  %40 = getelementptr inbounds %struct.imx319, %struct.imx319* %39, i32 0, i32 5
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %33
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %180

49:                                               ; preds = %33
  %50 = load i64*, i64** @link_freq_menu_items, align 8
  %51 = load i64, i64* @IMX319_LINK_FREQ_INDEX, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.imx319*, %struct.imx319** %4, align 8
  %55 = getelementptr inbounds %struct.imx319, %struct.imx319* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i64 0, i64* %6, align 8
  br label %56

56:                                               ; preds = %83, %49
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.imx319*, %struct.imx319** %4, align 8
  %59 = getelementptr inbounds %struct.imx319, %struct.imx319* %58, i32 0, i32 5
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %57, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %56
  %65 = load %struct.imx319*, %struct.imx319** %4, align 8
  %66 = getelementptr inbounds %struct.imx319, %struct.imx319* %65, i32 0, i32 5
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.imx319*, %struct.imx319** %4, align 8
  %74 = getelementptr inbounds %struct.imx319, %struct.imx319* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %64
  %78 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @dev_dbg(i32* %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  br label %86

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %56

86:                                               ; preds = %77, %56
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.imx319*, %struct.imx319** %4, align 8
  %89 = getelementptr inbounds %struct.imx319, %struct.imx319* %88, i32 0, i32 5
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %87, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %180

100:                                              ; preds = %86
  %101 = load i32*, i32** @supported_modes, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load %struct.imx319*, %struct.imx319** %4, align 8
  %104 = getelementptr inbounds %struct.imx319, %struct.imx319* %103, i32 0, i32 4
  store i32* %102, i32** %104, align 8
  %105 = load %struct.imx319*, %struct.imx319** %4, align 8
  %106 = call i32 @imx319_init_controls(%struct.imx319* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %100
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 0
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %180

114:                                              ; preds = %100
  %115 = load %struct.imx319*, %struct.imx319** %4, align 8
  %116 = getelementptr inbounds %struct.imx319, %struct.imx319* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  store i32* @imx319_internal_ops, i32** %117, align 8
  %118 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %119 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.imx319*, %struct.imx319** %4, align 8
  %122 = getelementptr inbounds %struct.imx319, %struct.imx319* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %120
  store i32 %125, i32* %123, align 8
  %126 = load %struct.imx319*, %struct.imx319** %4, align 8
  %127 = getelementptr inbounds %struct.imx319, %struct.imx319* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i32* @imx319_subdev_entity_ops, i32** %129, align 8
  %130 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %131 = load %struct.imx319*, %struct.imx319** %4, align 8
  %132 = getelementptr inbounds %struct.imx319, %struct.imx319* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 8
  %135 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %136 = load %struct.imx319*, %struct.imx319** %4, align 8
  %137 = getelementptr inbounds %struct.imx319, %struct.imx319* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.imx319*, %struct.imx319** %4, align 8
  %140 = getelementptr inbounds %struct.imx319, %struct.imx319* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load %struct.imx319*, %struct.imx319** %4, align 8
  %143 = getelementptr inbounds %struct.imx319, %struct.imx319* %142, i32 0, i32 3
  %144 = call i32 @media_entity_pads_init(%struct.TYPE_8__* %141, i32 1, %struct.TYPE_9__* %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %114
  %148 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = load i32, i32* %5, align 4
  %151 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  br label %174

152:                                              ; preds = %114
  %153 = load %struct.imx319*, %struct.imx319** %4, align 8
  %154 = getelementptr inbounds %struct.imx319, %struct.imx319* %153, i32 0, i32 2
  %155 = call i32 @v4l2_async_register_subdev_sensor_common(%struct.TYPE_7__* %154)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %169

159:                                              ; preds = %152
  %160 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 0
  %162 = call i32 @pm_runtime_set_active(i32* %161)
  %163 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = call i32 @pm_runtime_enable(i32* %164)
  %166 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = call i32 @pm_runtime_idle(i32* %167)
  store i32 0, i32* %2, align 4
  br label %185

169:                                              ; preds = %158
  %170 = load %struct.imx319*, %struct.imx319** %4, align 8
  %171 = getelementptr inbounds %struct.imx319, %struct.imx319* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = call i32 @media_entity_cleanup(%struct.TYPE_8__* %172)
  br label %174

174:                                              ; preds = %169, %147
  %175 = load %struct.imx319*, %struct.imx319** %4, align 8
  %176 = getelementptr inbounds %struct.imx319, %struct.imx319* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @v4l2_ctrl_handler_free(i32 %178)
  br label %180

180:                                              ; preds = %174, %109, %94, %43, %28
  %181 = load %struct.imx319*, %struct.imx319** %4, align 8
  %182 = getelementptr inbounds %struct.imx319, %struct.imx319* %181, i32 0, i32 1
  %183 = call i32 @mutex_destroy(i32* %182)
  %184 = load i32, i32* %5, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %180, %159, %13
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.imx319* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_7__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @imx319_identify_module(%struct.imx319*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @imx319_get_hwcfg(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @imx319_init_controls(%struct.imx319*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_async_register_subdev_sensor_common(%struct.TYPE_7__*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_idle(i32*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
