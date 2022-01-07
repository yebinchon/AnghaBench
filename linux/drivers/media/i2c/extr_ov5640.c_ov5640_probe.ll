; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.ov5640_dev = type { i64, i32, i32, i64, %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.TYPE_12__, i8*, i8*, i8*, i32, i32*, i32*, %struct.TYPE_8__, %struct.v4l2_mbus_framefmt, %struct.i2c_client* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_UYVY8_2X8 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@ov5640_framerates = common dso_local global i32* null, align 8
@OV5640_30_FPS = common dso_local global i64 0, align 8
@ov5640_mode_data = common dso_local global i32* null, align 8
@OV5640_MODE_VGA_640_480 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"%u degrees rotation is not supported, ignoring...\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"endpoint node not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not parse endpoint\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"xclk\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"failed to get xclk\0A\00", align 1
@OV5640_XCLK_MIN = common dso_local global i64 0, align 8
@OV5640_XCLK_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"xclk frequency out of range: %d Hz\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@ov5640_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov5640_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.ov5640_dev*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ov5640_dev* @devm_kzalloc(%struct.device* %12, i32 144, i32 %13)
  store %struct.ov5640_dev* %14, %struct.ov5640_dev** %6, align 8
  %15 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %16 = icmp ne %struct.ov5640_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %272

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %23 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %22, i32 0, i32 16
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %25 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %24, i32 0, i32 15
  store %struct.v4l2_mbus_framefmt* %25, %struct.v4l2_mbus_framefmt** %7, align 8
  %26 = load i32, i32* @MEDIA_BUS_FMT_UYVY8_2X8, align 4
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %34)
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @V4L2_QUANTIZATION_FULL_RANGE, align 4
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32 %43)
  %45 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 0
  store i32 640, i32* %48, align 4
  %49 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %49, i32 0, i32 1
  store i32 480, i32* %50, align 4
  %51 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %55 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %54, i32 0, i32 14
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32*, i32** @ov5640_framerates, align 8
  %58 = load i64, i64* @OV5640_30_FPS, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %62 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %61, i32 0, i32 14
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* @OV5640_30_FPS, align 8
  %65 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %66 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32*, i32** @ov5640_mode_data, align 8
  %68 = load i64, i64* @OV5640_MODE_VGA_640_480, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %71 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %70, i32 0, i32 12
  store i32* %69, i32** %71, align 8
  %72 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %73 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %72, i32 0, i32 12
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %76 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %75, i32 0, i32 13
  store i32* %74, i32** %76, align 8
  %77 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %78 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %77, i32 0, i32 1
  store i32 52, i32* %78, align 8
  %79 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = call i32 @dev_fwnode(%struct.device* %80)
  %82 = call i32 @fwnode_property_read_u32(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %20
  %86 = load i32, i32* %8, align 4
  switch i32 %86, label %91 [
    i32 180, label %87
    i32 0, label %90
  ]

87:                                               ; preds = %85
  %88 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %89 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %88, i32 0, i32 2
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %85, %87
  br label %95

91:                                               ; preds = %85
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @dev_warn(%struct.device* %92, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %90
  br label %96

96:                                               ; preds = %95, %20
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = call i32 @dev_fwnode(%struct.device* %98)
  %100 = call %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32 %99, i32* null)
  store %struct.fwnode_handle* %100, %struct.fwnode_handle** %5, align 8
  %101 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %102 = icmp ne %struct.fwnode_handle* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %96
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %272

108:                                              ; preds = %96
  %109 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %110 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %111 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %110, i32 0, i32 11
  %112 = call i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle* %109, i32* %111)
  store i32 %112, i32* %9, align 4
  %113 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %114 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %113)
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %272

121:                                              ; preds = %108
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i8* @devm_clk_get(%struct.device* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %124 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %125 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %124, i32 0, i32 10
  store i8* %123, i8** %125, align 8
  %126 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %127 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %126, i32 0, i32 10
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %134 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %135 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %134, i32 0, i32 10
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @PTR_ERR(i8* %136)
  store i32 %137, i32* %2, align 4
  br label %272

138:                                              ; preds = %121
  %139 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %140 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %139, i32 0, i32 10
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @clk_get_rate(i8* %141)
  %143 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %144 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %143, i32 0, i32 3
  store i64 %142, i64* %144, align 8
  %145 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %146 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @OV5640_XCLK_MIN, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %138
  %151 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %152 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @OV5640_XCLK_MAX, align 8
  %155 = icmp sgt i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150, %138
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %159 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %160)
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %272

164:                                              ; preds = %150
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %167 = call i8* @devm_gpiod_get_optional(%struct.device* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  %168 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %169 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %168, i32 0, i32 9
  store i8* %167, i8** %169, align 8
  %170 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %171 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %170, i32 0, i32 9
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @IS_ERR(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %164
  %176 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %177 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %176, i32 0, i32 9
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @PTR_ERR(i8* %178)
  store i32 %179, i32* %2, align 4
  br label %272

180:                                              ; preds = %164
  %181 = load %struct.device*, %struct.device** %4, align 8
  %182 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %183 = call i8* @devm_gpiod_get_optional(%struct.device* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %185 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %184, i32 0, i32 8
  store i8* %183, i8** %185, align 8
  %186 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %187 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %186, i32 0, i32 8
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @IS_ERR(i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %180
  %192 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %193 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %192, i32 0, i32 8
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @PTR_ERR(i8* %194)
  store i32 %195, i32* %2, align 4
  br label %272

196:                                              ; preds = %180
  %197 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %198 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %197, i32 0, i32 4
  %199 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %200 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_10__* %198, %struct.i2c_client* %199, i32* @ov5640_subdev_ops)
  %201 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %202 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %205 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %203
  store i32 %208, i32* %206, align 8
  %209 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %210 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %211 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  store i32 %209, i32* %212, align 8
  %213 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %214 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %215 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  store i32 %213, i32* %217, align 4
  %218 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %219 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %222 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %221, i32 0, i32 7
  %223 = call i32 @media_entity_pads_init(%struct.TYPE_11__* %220, i32 1, %struct.TYPE_12__* %222)
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %196
  %227 = load i32, i32* %9, align 4
  store i32 %227, i32* %2, align 4
  br label %272

228:                                              ; preds = %196
  %229 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %230 = call i32 @ov5640_get_regulators(%struct.ov5640_dev* %229)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %2, align 4
  br label %272

235:                                              ; preds = %228
  %236 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %237 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %236, i32 0, i32 5
  %238 = call i32 @mutex_init(i32* %237)
  %239 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %240 = call i32 @ov5640_check_chip_id(%struct.ov5640_dev* %239)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %263

244:                                              ; preds = %235
  %245 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %246 = call i32 @ov5640_init_controls(%struct.ov5640_dev* %245)
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %263

250:                                              ; preds = %244
  %251 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %252 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %251, i32 0, i32 4
  %253 = call i32 @v4l2_async_register_subdev_sensor_common(%struct.TYPE_10__* %252)
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  br label %258

257:                                              ; preds = %250
  store i32 0, i32* %2, align 4
  br label %272

258:                                              ; preds = %256
  %259 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %260 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = call i32 @v4l2_ctrl_handler_free(i32* %261)
  br label %263

263:                                              ; preds = %258, %249, %243
  %264 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %265 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %264, i32 0, i32 5
  %266 = call i32 @mutex_destroy(i32* %265)
  %267 = load %struct.ov5640_dev*, %struct.ov5640_dev** %6, align 8
  %268 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = call i32 @media_entity_cleanup(%struct.TYPE_11__* %269)
  %271 = load i32, i32* %9, align 4
  store i32 %271, i32* %2, align 4
  br label %272

272:                                              ; preds = %263, %257, %233, %226, %191, %175, %156, %131, %117, %103, %17
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local %struct.ov5640_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32) #1

declare dso_local i32 @fwnode_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_fwnode(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.fwnode_handle* @fwnode_graph_get_next_endpoint(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @v4l2_fwnode_endpoint_parse(%struct.fwnode_handle*, i32*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @clk_get_rate(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_10__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ov5640_get_regulators(%struct.ov5640_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ov5640_check_chip_id(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_init_controls(%struct.ov5640_dev*) #1

declare dso_local i32 @v4l2_async_register_subdev_sensor_common(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
