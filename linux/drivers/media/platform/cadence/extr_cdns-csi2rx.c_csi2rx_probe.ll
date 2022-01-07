; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.csi2rx_priv = type { i32, i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@csi2rx_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@KBUILD_MODNAME = common dso_local global i8* null, align 8
@MEDIA_ENT_F_VID_IF_BRIDGE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@CSI2RX_PAD_SINK = common dso_local global i64 0, align 8
@CSI2RX_PAD_SOURCE_STREAM0 = common dso_local global i32 0, align 4
@CSI2RX_PAD_MAX = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Probed CSI2RX with %u/%u lanes, %u streams, %s D-PHY\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @csi2rx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2rx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.csi2rx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.csi2rx_priv* @kzalloc(i32 80, i32 %7)
  store %struct.csi2rx_priv* %8, %struct.csi2rx_priv** %4, align 8
  %9 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %10 = icmp ne %struct.csi2rx_priv* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %140

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %17 = call i32 @platform_set_drvdata(%struct.platform_device* %15, %struct.csi2rx_priv* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %21 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %20, i32 0, i32 8
  store i32* %19, i32** %21, align 8
  %22 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %23 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %22, i32 0, i32 7
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i32 @csi2rx_get_resources(%struct.csi2rx_priv* %25, %struct.platform_device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %136

31:                                               ; preds = %14
  %32 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %33 = call i32 @csi2rx_parse_dt(%struct.csi2rx_priv* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %136

37:                                               ; preds = %31
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %40 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %45 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32* %43, i32** %46, align 8
  %47 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %48 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %47, i32 0, i32 5
  %49 = call i32 @v4l2_subdev_init(%struct.TYPE_6__* %48, i32* @csi2rx_subdev_ops)
  %50 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %51 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %50, i32 0, i32 5
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @v4l2_set_subdevdata(%struct.TYPE_6__* %51, i32* %53)
  %55 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %56 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @V4L2_SUBDEV_NAME_SIZE, align 4
  %60 = load i8*, i8** @KBUILD_MODNAME, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i8* @dev_name(i32* %62)
  %64 = call i32 @snprintf(i32 %58, i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %63)
  %65 = load i32, i32* @MEDIA_ENT_F_VID_IF_BRIDGE, align 4
  %66 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %67 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %71 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %72 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %71, i32 0, i32 6
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = load i64, i64* @CSI2RX_PAD_SINK, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* @CSI2RX_PAD_SOURCE_STREAM0, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %91, %37
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @CSI2RX_PAD_MAX, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %84 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %85 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %84, i32 0, i32 6
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 %83, i32* %90, align 4
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %78

94:                                               ; preds = %78
  %95 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %96 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* @CSI2RX_PAD_MAX, align 4
  %99 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %100 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %99, i32 0, i32 6
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = call i32 @media_entity_pads_init(%struct.TYPE_7__* %97, i32 %98, %struct.TYPE_8__* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %132

106:                                              ; preds = %94
  %107 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %108 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %107, i32 0, i32 5
  %109 = call i32 @v4l2_async_register_subdev(%struct.TYPE_6__* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %132

113:                                              ; preds = %106
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %117 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %120 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %123 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %126 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %131 = call i32 @dev_info(i32* %115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %121, i32 %124, i8* %130)
  store i32 0, i32* %2, align 4
  br label %140

132:                                              ; preds = %112, %105
  %133 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %134 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %133, i32 0, i32 0
  %135 = call i32 @v4l2_async_notifier_cleanup(i32* %134)
  br label %136

136:                                              ; preds = %132, %36, %30
  %137 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %4, align 8
  %138 = call i32 @kfree(%struct.csi2rx_priv* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %136, %113, %11
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.csi2rx_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.csi2rx_priv*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @csi2rx_get_resources(%struct.csi2rx_priv*, %struct.platform_device*) #1

declare dso_local i32 @csi2rx_parse_dt(%struct.csi2rx_priv*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @kfree(%struct.csi2rx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
