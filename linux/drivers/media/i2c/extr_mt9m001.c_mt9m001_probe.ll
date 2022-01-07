; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m001.c_mt9m001_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.mt9m001 = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_15__, %struct.TYPE_11__, i64, i32, i32, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@mt9m001_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@mt9m001_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@MT9M001_COLUMN_SKIP = common dso_local global i32 0, align 4
@MT9M001_ROW_SKIP = common dso_local global i32 0, align 4
@MT9M001_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9M001_MAX_HEIGHT = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9m001_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m001_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9m001*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  store %struct.i2c_adapter* %9, %struct.i2c_adapter** %5, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %11 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %12 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %15, i32 0, i32 0
  %17 = call i32 @dev_warn(i32* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %234

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mt9m001* @devm_kzalloc(i32* %22, i32 104, i32 %23)
  store %struct.mt9m001* %24, %struct.mt9m001** %4, align 8
  %25 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %26 = icmp ne %struct.mt9m001* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %234

30:                                               ; preds = %20
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i8* @devm_clk_get(i32* %32, i32* null)
  %34 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %35 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %34, i32 0, i32 10
  store i8* %33, i8** %35, align 8
  %36 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %37 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %36, i32 0, i32 10
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %43 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %42, i32 0, i32 10
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %2, align 4
  br label %234

46:                                               ; preds = %30
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %50 = call i8* @devm_gpiod_get_optional(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %52 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  %53 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %54 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %53, i32 0, i32 9
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %60 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %59, i32 0, i32 9
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %2, align 4
  br label %234

63:                                               ; preds = %46
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %67 = call i8* @devm_gpiod_get_optional(i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %69 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %71 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %70, i32 0, i32 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %77 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %76, i32 0, i32 8
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @PTR_ERR(i8* %78)
  store i32 %79, i32* %2, align 4
  br label %234

80:                                               ; preds = %63
  %81 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %82 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %81, i32 0, i32 2
  %83 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %84 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_12__* %82, %struct.i2c_client* %83, i32* @mt9m001_subdev_ops)
  %85 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %86 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %89 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 8
  %93 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %94 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %93, i32 0, i32 1
  %95 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_13__* %94, i32 4)
  %96 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %97 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %96, i32 0, i32 1
  %98 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %99 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_13__* %97, i32* @mt9m001_ctrl_ops, i32 %98, i32 0, i32 1, i32 1, i32 0)
  %100 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %101 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %100, i32 0, i32 1
  %102 = load i32, i32* @V4L2_CID_GAIN, align 4
  %103 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_13__* %101, i32* @mt9m001_ctrl_ops, i32 %102, i32 0, i32 127, i32 1, i32 64)
  %104 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %105 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %104, i32 0, i32 1
  %106 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %107 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_13__* %105, i32* @mt9m001_ctrl_ops, i32 %106, i32 1, i32 255, i32 1, i32 255)
  %108 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %109 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %111 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %110, i32 0, i32 1
  %112 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %113 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %114 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_13__* %111, i32* @mt9m001_ctrl_ops, i32 %112, i32 1, i32 0, i32 %113)
  %115 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %116 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  %117 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %118 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %117, i32 0, i32 1
  %119 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %120 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %121, align 8
  %122 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %123 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %80
  %128 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %129 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %2, align 4
  br label %234

132:                                              ; preds = %80
  %133 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %134 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %133, i32 0, i32 6
  %135 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %136 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i32* %134, i32 %135, i32 1)
  %137 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %138 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %137, i32 0, i32 0
  %139 = call i32 @mutex_init(i32* %138)
  %140 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %141 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %140, i32 0, i32 0
  %142 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %143 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  store i32* %141, i32** %144, align 8
  %145 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %146 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %145, i32 0, i32 5
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* @MT9M001_COLUMN_SKIP, align 4
  %148 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %149 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* @MT9M001_ROW_SKIP, align 4
  %152 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %153 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* @MT9M001_MAX_WIDTH, align 4
  %156 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %157 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  %159 = load i32, i32* @MT9M001_MAX_HEIGHT, align 4
  %160 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %161 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  %163 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = call i32 @mt9m001_power_on(i32* %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %132
  br label %226

169:                                              ; preds = %132
  %170 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = call i32 @pm_runtime_set_active(i32* %171)
  %173 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 0
  %175 = call i32 @pm_runtime_enable(i32* %174)
  %176 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %177 = call i32 @mt9m001_video_probe(%struct.i2c_client* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  br label %216

181:                                              ; preds = %169
  %182 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %183 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %184 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  %186 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %187 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %188 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  store i32 %186, i32* %190, align 4
  %191 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %192 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %195 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %194, i32 0, i32 3
  %196 = call i32 @media_entity_pads_init(%struct.TYPE_14__* %193, i32 1, %struct.TYPE_15__* %195)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %181
  br label %216

200:                                              ; preds = %181
  %201 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %202 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %201, i32 0, i32 2
  %203 = call i32 @v4l2_async_register_subdev(%struct.TYPE_12__* %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  br label %211

207:                                              ; preds = %200
  %208 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %209 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %208, i32 0, i32 0
  %210 = call i32 @pm_runtime_idle(i32* %209)
  store i32 0, i32* %2, align 4
  br label %234

211:                                              ; preds = %206
  %212 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %213 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = call i32 @media_entity_cleanup(%struct.TYPE_14__* %214)
  br label %216

216:                                              ; preds = %211, %199, %180
  %217 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 0
  %219 = call i32 @pm_runtime_disable(i32* %218)
  %220 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %221 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %220, i32 0, i32 0
  %222 = call i32 @pm_runtime_set_suspended(i32* %221)
  %223 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %224 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %223, i32 0, i32 0
  %225 = call i32 @mt9m001_power_off(i32* %224)
  br label %226

226:                                              ; preds = %216, %168
  %227 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %228 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %227, i32 0, i32 1
  %229 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_13__* %228)
  %230 = load %struct.mt9m001*, %struct.mt9m001** %4, align 8
  %231 = getelementptr inbounds %struct.mt9m001, %struct.mt9m001* %230, i32 0, i32 0
  %232 = call i32 @mutex_destroy(i32* %231)
  %233 = load i32, i32* %6, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %226, %207, %127, %75, %58, %41, %27, %14
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.mt9m001* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_12__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_13__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_13__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mt9m001_power_on(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @mt9m001_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_14__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_12__*) #1

declare dso_local i32 @pm_runtime_idle(i32*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_14__*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @mt9m001_power_off(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
