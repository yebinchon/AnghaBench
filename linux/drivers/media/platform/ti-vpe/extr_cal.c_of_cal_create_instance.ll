; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_of_cal_create_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_of_cal_create_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { %struct.TYPE_17__, i32, i32, %struct.v4l2_fwnode_endpoint, %struct.v4l2_async_subdev, %struct.TYPE_11__* }
%struct.TYPE_17__ = type { i32* }
%struct.v4l2_fwnode_endpoint = type { i64, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.v4l2_async_subdev = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Scanning Port node for csi2 port: %d\0A\00", align 1
@CAL_NUM_CSI2_PORTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"No port node found for csi2 port:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"port:%d inst:%d <reg>:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"No port node matches csi2 port:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Scanning sub-device for csi2 port: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"can't get next endpoint\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"can't get remote parent\0A\00", align 1
@V4L2_ASYNC_MATCH_FWNODE = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [47 x i8] c"Port:%d sub-device %pOFn is not a CSI2 device\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Port:%d v4l2-endpoint: CSI2\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Virtual Channel=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"flags=0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"clock_lane=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"num_data_lanes=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"data_lanes= <\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\09%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"\09>\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Port: %d found sub-device %pOFn\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Error adding asd\0A\00", align 1
@cal_async_ops = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [34 x i8] c"Error registering async notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cal_ctx*, i32)* @of_cal_create_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_cal_create_instance(%struct.cal_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.cal_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %11 = alloca %struct.v4l2_async_subdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cal_ctx* %0, %struct.cal_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %17, i32 0, i32 5
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.platform_device*, %struct.platform_device** %20, align 8
  store %struct.platform_device* %21, %struct.platform_device** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  store %struct.device_node* %25, %struct.device_node** %9, align 8
  %26 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %26, i32 0, i32 4
  store %struct.v4l2_async_subdev* %27, %struct.v4l2_async_subdev** %11, align 8
  %28 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %28, i32 0, i32 3
  store %struct.v4l2_fwnode_endpoint* %29, %struct.v4l2_fwnode_endpoint** %10, align 8
  store %struct.device_node* null, %struct.device_node** %6, align 8
  store %struct.device_node* null, %struct.device_node** %7, align 8
  store %struct.device_node* null, %struct.device_node** %8, align 8
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %13, align 4
  %32 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %66, %2
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @CAL_NUM_CSI2_PORTS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load %struct.device_node*, %struct.device_node** %9, align 8
  %41 = load %struct.device_node*, %struct.device_node** %7, align 8
  %42 = call %struct.device_node* @of_get_next_port(%struct.device_node* %40, %struct.device_node* %41)
  store %struct.device_node* %42, %struct.device_node** %7, align 8
  %43 = load %struct.device_node*, %struct.device_node** %7, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 1, %struct.cal_ctx* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %219

49:                                               ; preds = %39
  %50 = load %struct.device_node*, %struct.device_node** %7, align 8
  %51 = call i32 @of_property_read_u32(%struct.device_node* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  %52 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, i32* %15, align 4
  br label %69

65:                                               ; preds = %60, %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %35

69:                                               ; preds = %64, %35
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 1, %struct.cal_ctx* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %219

76:                                               ; preds = %69
  %77 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = load %struct.device_node*, %struct.device_node** %7, align 8
  %81 = load %struct.device_node*, %struct.device_node** %6, align 8
  %82 = call %struct.device_node* @of_get_next_endpoint(%struct.device_node* %80, %struct.device_node* %81)
  store %struct.device_node* %82, %struct.device_node** %6, align 8
  %83 = load %struct.device_node*, %struct.device_node** %6, align 8
  %84 = icmp ne %struct.device_node* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %87 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %219

88:                                               ; preds = %76
  %89 = load %struct.device_node*, %struct.device_node** %6, align 8
  %90 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %89)
  store %struct.device_node* %90, %struct.device_node** %8, align 8
  %91 = load %struct.device_node*, %struct.device_node** %8, align 8
  %92 = icmp ne %struct.device_node* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %95 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %219

96:                                               ; preds = %88
  %97 = load i32, i32* @V4L2_ASYNC_MATCH_FWNODE, align 4
  %98 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %11, align 8
  %99 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.device_node*, %struct.device_node** %8, align 8
  %101 = call i32 @of_fwnode_handle(%struct.device_node* %100)
  %102 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %11, align 8
  %103 = getelementptr inbounds %struct.v4l2_async_subdev, %struct.v4l2_async_subdev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load %struct.device_node*, %struct.device_node** %6, align 8
  %106 = call i32 @of_fwnode_handle(%struct.device_node* %105)
  %107 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %10, align 8
  %108 = call i32 @v4l2_fwnode_endpoint_parse(i32 %106, %struct.v4l2_fwnode_endpoint* %107)
  %109 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %10, align 8
  %110 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %96
  %115 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.device_node*, %struct.device_node** %8, align 8
  %118 = call i32 (%struct.cal_ctx*, i8*, ...) @ctx_err(%struct.cal_ctx* %115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %116, %struct.device_node* %117)
  br label %219

119:                                              ; preds = %96
  %120 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %10, align 8
  %121 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %125 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %127)
  %129 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %130 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %131 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  %134 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %135 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %10, align 8
  %136 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  %141 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %142 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %10, align 8
  %143 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %146)
  %148 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %149 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %10, align 8
  %150 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %148, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %153)
  %155 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %156 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %155, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %157

157:                                              ; preds = %177, %119
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %10, align 8
  %160 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %158, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %157
  %166 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %167 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %10, align 8
  %168 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %165
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %157

180:                                              ; preds = %157
  %181 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %182 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 3, %struct.cal_ctx* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %183 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.device_node*, %struct.device_node** %8, align 8
  %186 = call i32 (i32, %struct.cal_ctx*, i8*, ...) @ctx_dbg(i32 1, %struct.cal_ctx* %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %184, %struct.device_node* %185)
  %187 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %188 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %187, i32 0, i32 0
  %189 = call i32 @v4l2_async_notifier_init(%struct.TYPE_17__* %188)
  %190 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %191 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %190, i32 0, i32 0
  %192 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %11, align 8
  %193 = call i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_17__* %191, %struct.v4l2_async_subdev* %192)
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %180
  %197 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %198 = call i32 (%struct.cal_ctx*, i8*, ...) @ctx_err(%struct.cal_ctx* %197, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  br label %219

199:                                              ; preds = %180
  %200 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %201 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  store i32* @cal_async_ops, i32** %202, align 8
  %203 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %204 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %203, i32 0, i32 1
  %205 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %206 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %205, i32 0, i32 0
  %207 = call i32 @v4l2_async_notifier_register(i32* %204, %struct.TYPE_17__* %206)
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %199
  %211 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %212 = call i32 (%struct.cal_ctx*, i8*, ...) @ctx_err(%struct.cal_ctx* %211, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0))
  %213 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %214 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %213, i32 0, i32 0
  %215 = call i32 @v4l2_async_notifier_cleanup(%struct.TYPE_17__* %214)
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %13, align 4
  br label %218

218:                                              ; preds = %210, %199
  store %struct.device_node* null, %struct.device_node** %8, align 8
  br label %219

219:                                              ; preds = %218, %196, %114, %93, %85, %72, %45
  %220 = load %struct.device_node*, %struct.device_node** %8, align 8
  %221 = call i32 @of_node_put(%struct.device_node* %220)
  %222 = load %struct.device_node*, %struct.device_node** %6, align 8
  %223 = call i32 @of_node_put(%struct.device_node* %222)
  %224 = load %struct.device_node*, %struct.device_node** %7, align 8
  %225 = call i32 @of_node_put(%struct.device_node* %224)
  %226 = load i32, i32* %13, align 4
  ret i32 %226
}

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, ...) #1

declare dso_local %struct.device_node* @of_get_next_port(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_next_endpoint(%struct.device_node*, %struct.device_node*) #1

declare dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @ctx_err(%struct.cal_ctx*, i8*, ...) #1

declare dso_local i32 @v4l2_async_notifier_init(%struct.TYPE_17__*) #1

declare dso_local i32 @v4l2_async_notifier_add_subdev(%struct.TYPE_17__*, %struct.v4l2_async_subdev*) #1

declare dso_local i32 @v4l2_async_notifier_register(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(%struct.TYPE_17__*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
