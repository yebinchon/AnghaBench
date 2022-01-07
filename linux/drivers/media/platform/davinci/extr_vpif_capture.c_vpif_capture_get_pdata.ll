; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_capture_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpif_capture.c_vpif_capture_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.vpif_capture_config = type { i32*, i32, i8*, i32*, %struct.vpif_capture_chan_config*, %struct.vpif_subdev_info* }
%struct.vpif_capture_chan_config = type { %struct.TYPE_17__, %struct.TYPE_14__*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.vpif_subdev_info = type { i32 }
%struct.platform_device = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.vpif_capture_config*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.device_node = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@vpif_obj = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VPIF_CAPTURE_NUM_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Remote device at %pOF not found\0A\00", align 1
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@V4L2_IN_CAP_STD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not parse the endpoint\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Endpoint %pOF, bus_width = %d\0A\00", align 1
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Remote device %pOF found\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DA850/OMAP-L138 Video Capture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vpif_capture_config* (%struct.platform_device*)* @vpif_capture_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vpif_capture_config* @vpif_capture_get_pdata(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.vpif_capture_config*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.vpif_capture_config*, align 8
  %7 = alloca %struct.vpif_subdev_info*, align 8
  %8 = alloca %struct.vpif_capture_chan_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.device_node* null, %struct.device_node** %4, align 8
  store %struct.device_node* null, %struct.device_node** %5, align 8
  %13 = call i32 @v4l2_async_notifier_init(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @vpif_obj, i32 0, i32 0))
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  br label %37

37:                                               ; preds = %27, %19, %1
  %38 = load i32, i32* @CONFIG_OF, align 4
  %39 = call i32 @IS_ENABLED(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %50, align 8
  store %struct.vpif_capture_config* %51, %struct.vpif_capture_config** %2, align 8
  br label %255

52:                                               ; preds = %41
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.vpif_capture_config* @devm_kzalloc(%struct.TYPE_19__* %54, i32 48, i32 %55)
  store %struct.vpif_capture_config* %56, %struct.vpif_capture_config** %6, align 8
  %57 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %58 = icmp ne %struct.vpif_capture_config* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  store %struct.vpif_capture_config* null, %struct.vpif_capture_config** %2, align 8
  br label %255

60:                                               ; preds = %52
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* @VPIF_CAPTURE_NUM_CHANNELS, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i8* @devm_kcalloc(%struct.TYPE_19__* %62, i32 %63, i32 4, i32 %64)
  %66 = bitcast i8* %65 to %struct.vpif_subdev_info*
  %67 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %68 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %67, i32 0, i32 5
  store %struct.vpif_subdev_info* %66, %struct.vpif_subdev_info** %68, align 8
  %69 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %70 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %69, i32 0, i32 5
  %71 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %70, align 8
  %72 = icmp ne %struct.vpif_subdev_info* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %60
  store %struct.vpif_capture_config* null, %struct.vpif_capture_config** %2, align 8
  br label %255

74:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %231, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @VPIF_CAPTURE_NUM_CHANNELS, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %234

79:                                               ; preds = %75
  %80 = bitcast %struct.v4l2_fwnode_endpoint* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %80, i8 0, i64 12, i1 false)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.device_node*, %struct.device_node** %4, align 8
  %86 = call %struct.device_node* @of_graph_get_next_endpoint(i64 %84, %struct.device_node* %85)
  store %struct.device_node* %86, %struct.device_node** %4, align 8
  %87 = load %struct.device_node*, %struct.device_node** %4, align 8
  %88 = icmp ne %struct.device_node* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %234

90:                                               ; preds = %79
  %91 = load %struct.device_node*, %struct.device_node** %4, align 8
  %92 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %91)
  store %struct.device_node* %92, %struct.device_node** %5, align 8
  %93 = load %struct.device_node*, %struct.device_node** %5, align 8
  %94 = icmp ne %struct.device_node* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.device_node*, %struct.device_node** %4, align 8
  %99 = call i32 (%struct.TYPE_19__*, i8*, %struct.device_node*, ...) @dev_dbg(%struct.TYPE_19__* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.device_node* %98)
  br label %235

100:                                              ; preds = %90
  %101 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %102 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %101, i32 0, i32 5
  %103 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.vpif_subdev_info, %struct.vpif_subdev_info* %103, i64 %105
  store %struct.vpif_subdev_info* %106, %struct.vpif_subdev_info** %7, align 8
  %107 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %108 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %107, i32 0, i32 4
  %109 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %109, i64 %111
  store %struct.vpif_capture_chan_config* %112, %struct.vpif_capture_chan_config** %8, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load i32, i32* @VPIF_CAPTURE_NUM_CHANNELS, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i8* @devm_kcalloc(%struct.TYPE_19__* %114, i32 %115, i32 12, i32 %116)
  %118 = bitcast i8* %117 to %struct.TYPE_14__*
  %119 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %120 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %119, i32 0, i32 1
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %120, align 8
  %121 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %122 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %100
  br label %249

126:                                              ; preds = %100
  %127 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %128 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %132 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %133 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %132, i32 0, i32 1
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  store i32 %131, i32* %139, align 4
  %140 = load i32, i32* @V4L2_STD_ALL, align 4
  %141 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %142 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %141, i32 0, i32 1
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  store i32 %140, i32* %148, align 4
  %149 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %150 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %151 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %150, i32 0, i32 1
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  store i32 %149, i32* %157, align 4
  %158 = load %struct.device_node*, %struct.device_node** %4, align 8
  %159 = call i32 @of_fwnode_handle(%struct.device_node* %158)
  %160 = call i32 @v4l2_fwnode_endpoint_parse(i32 %159, %struct.v4l2_fwnode_endpoint* %10)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %126
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 @dev_err(%struct.TYPE_19__* %165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %167 = load %struct.device_node*, %struct.device_node** %5, align 8
  %168 = call i32 @of_node_put(%struct.device_node* %167)
  br label %235

169:                                              ; preds = %126
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load %struct.device_node*, %struct.device_node** %4, align 8
  %173 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %10, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (%struct.TYPE_19__*, i8*, %struct.device_node*, ...) @dev_dbg(%struct.TYPE_19__* %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %172, i32 %176)
  %178 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %10, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %169
  %187 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %188 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  br label %190

190:                                              ; preds = %186, %169
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %8, align 8
  %197 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  store i32 1, i32* %198, align 4
  br label %199

199:                                              ; preds = %195, %190
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = load %struct.device_node*, %struct.device_node** %5, align 8
  %203 = call i32 (%struct.TYPE_19__*, i8*, %struct.device_node*, ...) @dev_dbg(%struct.TYPE_19__* %201, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %202)
  %204 = load %struct.device_node*, %struct.device_node** %5, align 8
  %205 = getelementptr inbounds %struct.device_node, %struct.device_node* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.vpif_subdev_info*, %struct.vpif_subdev_info** %7, align 8
  %208 = getelementptr inbounds %struct.vpif_subdev_info, %struct.vpif_subdev_info* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  %209 = load %struct.device_node*, %struct.device_node** %5, align 8
  %210 = call i32 @of_fwnode_handle(%struct.device_node* %209)
  %211 = call i32 @v4l2_async_notifier_add_fwnode_subdev(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @vpif_obj, i32 0, i32 0), i32 %210, i32 4)
  %212 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %213 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %211, i32* %217, align 4
  %218 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %219 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @IS_ERR(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %199
  br label %249

228:                                              ; preds = %199
  %229 = load %struct.device_node*, %struct.device_node** %5, align 8
  %230 = call i32 @of_node_put(%struct.device_node* %229)
  br label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %9, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %75

234:                                              ; preds = %89, %75
  br label %235

235:                                              ; preds = %234, %163, %95
  %236 = load %struct.device_node*, %struct.device_node** %4, align 8
  %237 = call i32 @of_node_put(%struct.device_node* %236)
  %238 = load i32, i32* %9, align 4
  %239 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %240 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 %238, i32* %242, align 4
  %243 = load i32, i32* %9, align 4
  %244 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %245 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 8
  %246 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  %247 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %246, i32 0, i32 2
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %247, align 8
  %248 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %6, align 8
  store %struct.vpif_capture_config* %248, %struct.vpif_capture_config** %2, align 8
  br label %255

249:                                              ; preds = %227, %125
  %250 = load %struct.device_node*, %struct.device_node** %5, align 8
  %251 = call i32 @of_node_put(%struct.device_node* %250)
  %252 = load %struct.device_node*, %struct.device_node** %4, align 8
  %253 = call i32 @of_node_put(%struct.device_node* %252)
  %254 = call i32 @v4l2_async_notifier_cleanup(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @vpif_obj, i32 0, i32 0))
  store %struct.vpif_capture_config* null, %struct.vpif_capture_config** %2, align 8
  br label %255

255:                                              ; preds = %249, %235, %73, %59, %47
  %256 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %2, align 8
  ret %struct.vpif_capture_config* %256
}

declare dso_local i32 @v4l2_async_notifier_init(i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.vpif_capture_config* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_19__*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(i64, %struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_19__*, i8*, %struct.device_node*, ...) #1

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @v4l2_async_notifier_add_fwnode_subdev(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
