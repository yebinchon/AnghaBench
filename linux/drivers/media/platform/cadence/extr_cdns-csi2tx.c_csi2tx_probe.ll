; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.csi2tx_priv = type { i64, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_9__*, i32*, %struct.csi2tx_vops*, %struct.TYPE_10__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.csi2tx_vops = type { i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@csi2tx_of_table = common dso_local global i32 0, align 4
@csi2tx_subdev_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@KBUILD_MODNAME = common dso_local global i8* null, align 8
@MEDIA_ENT_F_VID_IF_BRIDGE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@CSI2TX_PAD_SOURCE = common dso_local global i64 0, align 8
@CSI2TX_PAD_SINK_STREAM0 = common dso_local global i32 0, align 4
@CSI2TX_PAD_MAX = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@fmt_default = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Probed CSI2TX with %u/%u lanes, %u streams, %s D-PHY\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @csi2tx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2tx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.csi2tx_priv*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.csi2tx_priv* @kzalloc(i32 96, i32 %8)
  store %struct.csi2tx_priv* %9, %struct.csi2tx_priv** %4, align 8
  %10 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %11 = icmp ne %struct.csi2tx_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %167

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.csi2tx_priv* %17)
  %19 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %20 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %19, i32 0, i32 9
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %25 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %24, i32 0, i32 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @csi2tx_get_resources(%struct.csi2tx_priv* %26, %struct.platform_device* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %163

32:                                               ; preds = %15
  %33 = load i32, i32* @csi2tx_of_table, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.of_device_id* @of_match_node(i32 %33, i32 %37)
  store %struct.of_device_id* %38, %struct.of_device_id** %5, align 8
  %39 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %40 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.csi2tx_vops*
  %43 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %44 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %43, i32 0, i32 7
  store %struct.csi2tx_vops* %42, %struct.csi2tx_vops** %44, align 8
  %45 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %46 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %45, i32 0, i32 4
  %47 = call i32 @v4l2_subdev_init(%struct.TYPE_7__* %46, i32* @csi2tx_subdev_ops)
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %50 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %55 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %56, align 8
  %57 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %58 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %59 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 8
  %63 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %64 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @V4L2_SUBDEV_NAME_SIZE, align 4
  %68 = load i8*, i8** @KBUILD_MODNAME, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i8* @dev_name(%struct.TYPE_10__* %70)
  %72 = call i32 @snprintf(i32 %66, i32 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %68, i8* %71)
  %73 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %74 = call i32 @csi2tx_check_lanes(%struct.csi2tx_priv* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %32
  br label %163

78:                                               ; preds = %32
  %79 = load i32, i32* @MEDIA_ENT_F_VID_IF_BRIDGE, align 4
  %80 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %81 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %85 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %86 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %85, i32 0, i32 5
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i64, i64* @CSI2TX_PAD_SOURCE, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 %84, i32* %90, align 4
  %91 = load i32, i32* @CSI2TX_PAD_SINK_STREAM0, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %105, %78
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @CSI2TX_PAD_MAX, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %98 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %99 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %98, i32 0, i32 5
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %96
  %106 = load i32, i32* %6, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %92

108:                                              ; preds = %92
  %109 = load i32, i32* @CSI2TX_PAD_SINK_STREAM0, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %122, %108
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @CSI2TX_PAD_MAX, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load i32, i32* @fmt_default, align 4
  %116 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %117 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  br label %122

122:                                              ; preds = %114
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %110

125:                                              ; preds = %110
  %126 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %127 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* @CSI2TX_PAD_MAX, align 4
  %130 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %131 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %130, i32 0, i32 5
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = call i32 @media_entity_pads_init(%struct.TYPE_8__* %128, i32 %129, %struct.TYPE_9__* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %163

137:                                              ; preds = %125
  %138 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %139 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %138, i32 0, i32 4
  %140 = call i32 @v4l2_async_register_subdev(%struct.TYPE_7__* %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %163

144:                                              ; preds = %137
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %148 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %151 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %154 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %157 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %162 = call i32 @dev_info(%struct.TYPE_10__* %146, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %149, i32 %152, i32 %155, i8* %161)
  store i32 0, i32* %2, align 4
  br label %167

163:                                              ; preds = %143, %136, %77, %31
  %164 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %4, align 8
  %165 = call i32 @kfree(%struct.csi2tx_priv* %164)
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %163, %144, %12
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.csi2tx_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.csi2tx_priv*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @csi2tx_get_resources(%struct.csi2tx_priv*, %struct.platform_device*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @csi2tx_check_lanes(%struct.csi2tx_priv*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.csi2tx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
