; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-csi2.c_rcsi2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.soc_device_attribute = type { i32 }
%struct.rcar_csi2 = type { i32, i32, i32*, %struct.TYPE_6__, %struct.TYPE_8__*, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@r8a7795 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to get resources\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@rcar_csi2_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_NAME_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@KBUILD_MODNAME = common dso_local global i8* null, align 8
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER = common dso_local global i32 0, align 4
@rcar_csi2_entity_ops = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@RCAR_CSI2_SINK = common dso_local global i64 0, align 8
@RCAR_CSI2_SOURCE_VC0 = common dso_local global i32 0, align 4
@NR_OF_RCAR_CSI2_PAD = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%d lanes found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rcsi2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcsi2_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.soc_device_attribute*, align 8
  %5 = alloca %struct.rcar_csi2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.rcar_csi2* @devm_kzalloc(i32* %9, i32 80, i32 %10)
  store %struct.rcar_csi2* %11, %struct.rcar_csi2** %5, align 8
  %12 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %13 = icmp ne %struct.rcar_csi2* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %167

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @of_device_get_match_data(i32* %19)
  %21 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %22 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @r8a7795, align 4
  %24 = call %struct.soc_device_attribute* @soc_device_match(i32 %23)
  store %struct.soc_device_attribute* %24, %struct.soc_device_attribute** %4, align 8
  %25 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %26 = icmp ne %struct.soc_device_attribute* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %4, align 8
  %29 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %32 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %17
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %37 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %39 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %38, i32 0, i32 6
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %42 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @rcsi2_probe_resources(%struct.rcar_csi2* %43, %struct.platform_device* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %50 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %167

54:                                               ; preds = %33
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.rcar_csi2* %56)
  %58 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %59 = call i32 @rcsi2_parse_dt(%struct.rcar_csi2* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %167

64:                                               ; preds = %54
  %65 = load i32, i32* @THIS_MODULE, align 4
  %66 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %67 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %72 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32* %70, i32** %73, align 8
  %74 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %75 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %74, i32 0, i32 3
  %76 = call i32 @v4l2_subdev_init(%struct.TYPE_6__* %75, i32* @rcar_csi2_subdev_ops)
  %77 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %78 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %77, i32 0, i32 3
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @v4l2_set_subdevdata(%struct.TYPE_6__* %78, i32* %80)
  %82 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %83 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @V4L2_SUBDEV_NAME_SIZE, align 4
  %87 = load i8*, i8** @KBUILD_MODNAME, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i8* @dev_name(i32* %89)
  %91 = call i32 @snprintf(i32 %85, i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %87, i8* %90)
  %92 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %93 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %94 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER, align 4
  %97 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %98 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 8
  %101 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %102 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32* @rcar_csi2_entity_ops, i32** %104, align 8
  %105 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %106 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %107 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %106, i32 0, i32 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i64, i64* @RCAR_CSI2_SINK, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %105, i32* %111, align 4
  %112 = load i32, i32* @RCAR_CSI2_SOURCE_VC0, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %126, %64
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @NR_OF_RCAR_CSI2_PAD, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %119 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %120 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %119, i32 0, i32 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i32 %118, i32* %125, align 4
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %6, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %113

129:                                              ; preds = %113
  %130 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %131 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* @NR_OF_RCAR_CSI2_PAD, align 4
  %134 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %135 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %134, i32 0, i32 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = call i32 @media_entity_pads_init(%struct.TYPE_7__* %132, i32 %133, %struct.TYPE_8__* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %159

141:                                              ; preds = %129
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_enable(i32* %143)
  %145 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %146 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %145, i32 0, i32 3
  %147 = call i32 @v4l2_async_register_subdev(%struct.TYPE_6__* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %159

151:                                              ; preds = %141
  %152 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %153 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %156 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dev_info(i32* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  store i32 0, i32* %2, align 4
  br label %167

159:                                              ; preds = %150, %140
  %160 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %161 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %160, i32 0, i32 0
  %162 = call i32 @v4l2_async_notifier_unregister(i32* %161)
  %163 = load %struct.rcar_csi2*, %struct.rcar_csi2** %5, align 8
  %164 = getelementptr inbounds %struct.rcar_csi2, %struct.rcar_csi2* %163, i32 0, i32 0
  %165 = call i32 @v4l2_async_notifier_cleanup(i32* %164)
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %159, %151, %62, %48, %14
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.rcar_csi2* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(i32*) #1

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rcsi2_probe_resources(%struct.rcar_csi2*, %struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rcar_csi2*) #1

declare dso_local i32 @rcsi2_parse_dt(%struct.rcar_csi2*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
