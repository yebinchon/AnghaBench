; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_config = type { i32*, %struct.vpfe_subdev_info* }
%struct.vpfe_subdev_info = type { %struct.TYPE_8__, i32*, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.vpfe_device = type { i32, %struct.device* }
%struct.device = type { i32, %struct.vpfe_config* }
%struct.device_node = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"vpfe_get_pdata\0A\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@V4L2_IN_CAP_STD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ti,am437x-vpfe-interface\00", align 1
@VPFE_RAW_BAYER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Could not parse the endpoint\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid bus width.\0A\00", align 1
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Remote device at %pOF not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vpfe_config* (%struct.vpfe_device*)* @vpfe_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vpfe_config* @vpfe_get_pdata(%struct.vpfe_device* %0) #0 {
  %2 = alloca %struct.vpfe_config*, align 8
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.vpfe_subdev_info*, align 8
  %7 = alloca %struct.vpfe_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %12 = alloca %struct.device_node*, align 8
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  store %struct.device_node* null, %struct.device_node** %4, align 8
  %13 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %14 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %19 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %18, i32 0, i32 0
  %20 = call i32 @v4l2_async_notifier_init(i32* %19)
  %21 = load i32, i32* @CONFIG_OF, align 4
  %22 = call i32 @IS_ENABLED(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 1
  %32 = load %struct.vpfe_config*, %struct.vpfe_config** %31, align 8
  store %struct.vpfe_config* %32, %struct.vpfe_config** %2, align 8
  br label %216

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.vpfe_config* @devm_kzalloc(%struct.device* %34, i32 16, i32 %35)
  store %struct.vpfe_config* %36, %struct.vpfe_config** %7, align 8
  %37 = load %struct.vpfe_config*, %struct.vpfe_config** %7, align 8
  %38 = icmp ne %struct.vpfe_config* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store %struct.vpfe_config* null, %struct.vpfe_config** %2, align 8
  br label %216

40:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %203, %40
  %42 = bitcast %struct.v4l2_fwnode_endpoint* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 12, i1 false)
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.device_node*, %struct.device_node** %4, align 8
  %47 = call %struct.device_node* @of_graph_get_next_endpoint(i32 %45, %struct.device_node* %46)
  store %struct.device_node* %47, %struct.device_node** %4, align 8
  %48 = load %struct.device_node*, %struct.device_node** %4, align 8
  %49 = icmp ne %struct.device_node* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %206

51:                                               ; preds = %41
  %52 = load %struct.vpfe_config*, %struct.vpfe_config** %7, align 8
  %53 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %52, i32 0, i32 1
  %54 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %54, i64 %56
  store %struct.vpfe_subdev_info* %57, %struct.vpfe_subdev_info** %6, align 8
  %58 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %59 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %62 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %67 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %66, i32 0, i32 3
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strscpy(i32 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %73 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %74 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %75 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %74, i32 0, i32 3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* @V4L2_STD_ALL, align 4
  %80 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %81 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %80, i32 0, i32 3
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* @V4L2_IN_CAP_STD, align 4
  %86 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %87 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %86, i32 0, i32 3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %85, i32* %90, align 4
  %91 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %92 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %94 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %93, i32 0, i32 1
  store i32* null, i32** %94, align 8
  %95 = load %struct.device_node*, %struct.device_node** %4, align 8
  %96 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %97 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @of_property_read_u32(%struct.device_node* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %98)
  %100 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %101 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %51
  %106 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %107 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 4
  br i1 %110, label %111, label %116

111:                                              ; preds = %105, %51
  %112 = load i32, i32* @VPFE_RAW_BAYER, align 4
  %113 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %114 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  br label %116

116:                                              ; preds = %111, %105
  %117 = load %struct.device_node*, %struct.device_node** %4, align 8
  %118 = call i32 @of_fwnode_handle(%struct.device_node* %117)
  %119 = call i32 @v4l2_fwnode_endpoint_parse(i32 %118, %struct.v4l2_fwnode_endpoint* %11)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %210

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %131 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %134 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %144, label %138

138:                                              ; preds = %125
  %139 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %140 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %142, 16
  br i1 %143, label %144, label %147

144:                                              ; preds = %138, %125
  %145 = load %struct.device*, %struct.device** %5, align 8
  %146 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %210

147:                                              ; preds = %138
  %148 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %11, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %158 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %147
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %6, align 8
  %167 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %160
  %170 = load %struct.device_node*, %struct.device_node** %4, align 8
  %171 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %170)
  store %struct.device_node* %171, %struct.device_node** %12, align 8
  %172 = load %struct.device_node*, %struct.device_node** %12, align 8
  %173 = icmp ne %struct.device_node* %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load %struct.device*, %struct.device** %5, align 8
  %176 = load %struct.device_node*, %struct.device_node** %4, align 8
  %177 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %176)
  br label %210

178:                                              ; preds = %169
  %179 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %180 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %179, i32 0, i32 0
  %181 = load %struct.device_node*, %struct.device_node** %12, align 8
  %182 = call i32 @of_fwnode_handle(%struct.device_node* %181)
  %183 = call i32 @v4l2_async_notifier_add_fwnode_subdev(i32* %180, i32 %182, i32 4)
  %184 = load %struct.vpfe_config*, %struct.vpfe_config** %7, align 8
  %185 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  %190 = load %struct.device_node*, %struct.device_node** %12, align 8
  %191 = call i32 @of_node_put(%struct.device_node* %190)
  %192 = load %struct.vpfe_config*, %struct.vpfe_config** %7, align 8
  %193 = getelementptr inbounds %struct.vpfe_config, %struct.vpfe_config* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @IS_ERR(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %178
  br label %210

202:                                              ; preds = %178
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %9, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %9, align 4
  br label %41

206:                                              ; preds = %50
  %207 = load %struct.device_node*, %struct.device_node** %4, align 8
  %208 = call i32 @of_node_put(%struct.device_node* %207)
  %209 = load %struct.vpfe_config*, %struct.vpfe_config** %7, align 8
  store %struct.vpfe_config* %209, %struct.vpfe_config** %2, align 8
  br label %216

210:                                              ; preds = %201, %174, %144, %122
  %211 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %212 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %211, i32 0, i32 0
  %213 = call i32 @v4l2_async_notifier_cleanup(i32* %212)
  %214 = load %struct.device_node*, %struct.device_node** %4, align 8
  %215 = call i32 @of_node_put(%struct.device_node* %214)
  store %struct.vpfe_config* null, %struct.vpfe_config** %2, align 8
  br label %216

216:                                              ; preds = %210, %206, %39, %29
  %217 = load %struct.vpfe_config*, %struct.vpfe_config** %2, align 8
  ret %struct.vpfe_config* %217
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @v4l2_async_notifier_init(i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.vpfe_config* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.device_node* @of_graph_get_next_endpoint(i32, %struct.device_node*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @v4l2_async_notifier_add_fwnode_subdev(i32*, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
