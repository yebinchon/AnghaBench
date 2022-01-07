; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.v4l2_subdev*, %struct.v4l2_fract*)*, i32* }
%struct.v4l2_subdev = type { i32, %struct.TYPE_16__, %struct.TYPE_19__*, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.i2c_client = type { i32, %struct.TYPE_18__*, %struct.TYPE_20__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.ov7670_config* }
%struct.ov7670_config = type { i32, i64, i64, i32, i32, i32 }
%struct.i2c_device_id = type { i64 }
%struct.ov7670_info = type { i32, i32, i32, %struct.TYPE_19__, %struct.v4l2_subdev, %struct.TYPE_17__, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_21__*, i64, i32, i32*, i32*, i32*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ov7670_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"chip found @ 0x%x (%s) is not an ov7670 chip.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"chip found @ 0x%02x (%s)\0A\00", align 1
@ov7670_devdata = common dso_local global %struct.TYPE_21__* null, align 8
@ov7670_formats = common dso_local global i32* null, align 8
@ov7670_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@ov7670_test_pattern_menu = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@ov7670_subdev_internal_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov7670_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.v4l2_fract, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.ov7670_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ov7670_config*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ov7670_info* @devm_kzalloc(%struct.TYPE_20__* %12, i32 160, i32 %13)
  store %struct.ov7670_info* %14, %struct.ov7670_info** %8, align 8
  %15 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %16 = icmp eq %struct.ov7670_info* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %337

20:                                               ; preds = %2
  %21 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %22 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %21, i32 0, i32 4
  store %struct.v4l2_subdev* %22, %struct.v4l2_subdev** %7, align 8
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %23, %struct.i2c_client* %24, i32* @ov7670_ops)
  %26 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %27 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %26, i32 0, i32 0
  store i32 30, i32* %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 2
  %30 = call i64 @dev_fwnode(%struct.TYPE_20__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %20
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 2
  %35 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %36 = call i32 @ov7670_parse_dt(%struct.TYPE_20__* %34, %struct.ov7670_info* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %337

41:                                               ; preds = %32
  br label %96

42:                                               ; preds = %20
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load %struct.ov7670_config*, %struct.ov7670_config** %45, align 8
  %47 = icmp ne %struct.ov7670_config* %46, null
  br i1 %47, label %48, label %95

48:                                               ; preds = %42
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load %struct.ov7670_config*, %struct.ov7670_config** %51, align 8
  store %struct.ov7670_config* %52, %struct.ov7670_config** %10, align 8
  %53 = load %struct.ov7670_config*, %struct.ov7670_config** %10, align 8
  %54 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %57 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %56, i32 0, i32 20
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ov7670_config*, %struct.ov7670_config** %10, align 8
  %59 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %62 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %61, i32 0, i32 19
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ov7670_config*, %struct.ov7670_config** %10, align 8
  %64 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %67 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %66, i32 0, i32 18
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ov7670_config*, %struct.ov7670_config** %10, align 8
  %69 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %48
  %73 = load %struct.ov7670_config*, %struct.ov7670_config** %10, align 8
  %74 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %77 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %48
  %79 = load %struct.ov7670_config*, %struct.ov7670_config** %10, align 8
  %80 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %85 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.ov7670_config*, %struct.ov7670_config** %10, align 8
  %88 = getelementptr inbounds %struct.ov7670_config, %struct.ov7670_config* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %93 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %42
  br label %96

96:                                               ; preds = %95, %41
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 2
  %99 = call i32* @devm_clk_get(%struct.TYPE_20__* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %101 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %100, i32 0, i32 17
  store i32* %99, i32** %101, align 8
  %102 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %103 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %102, i32 0, i32 17
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @IS_ERR(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %96
  %108 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %109 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %108, i32 0, i32 17
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @PTR_ERR(i32* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @ENOENT, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %107
  %117 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %118 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %117, i32 0, i32 17
  store i32* null, i32** %118, align 8
  br label %121

119:                                              ; preds = %107
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %337

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %96
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %125 = call i32 @ov7670_init_gpio(%struct.i2c_client* %123, %struct.ov7670_info* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %337

130:                                              ; preds = %122
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %132 = call i32 @ov7670_power_on(%struct.v4l2_subdev* %131)
  %133 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %134 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %133, i32 0, i32 17
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %158

137:                                              ; preds = %130
  %138 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %139 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %138, i32 0, i32 17
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @clk_get_rate(i32* %140)
  %142 = sdiv i32 %141, 1000000
  %143 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %144 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %146 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %147, 10
  br i1 %148, label %154, label %149

149:                                              ; preds = %137
  %150 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %151 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %152, 48
  br i1 %153, label %154, label %157

154:                                              ; preds = %149, %137
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %9, align 4
  br label %333

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157, %130
  %159 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %160 = call i32 @ov7670_detect(%struct.v4l2_subdev* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = load i32, i32* @debug, align 4
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = shl i32 %168, 1
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 1
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @v4l_dbg(i32 1, i32 %164, %struct.i2c_client* %165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %174)
  br label %333

176:                                              ; preds = %158
  %177 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = shl i32 %180, 1
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 1
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @v4l_info(%struct.i2c_client* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %186)
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** @ov7670_devdata, align 8
  %189 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %190 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i64 %191
  %193 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %194 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %193, i32 0, i32 12
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %194, align 8
  %195 = load i32*, i32** @ov7670_formats, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %198 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %197, i32 0, i32 16
  store i32* %196, i32** %198, align 8
  %199 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %200 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %199, i32 0, i32 12
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %206 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %205, i32 0, i32 15
  store i32* %204, i32** %206, align 8
  %207 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %208 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %209 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %208, i32 0, i32 14
  %210 = call i32 @ov7670_get_default_format(%struct.v4l2_subdev* %207, i32* %209)
  %211 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %212 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %211, i32 0, i32 13
  store i64 0, i64* %212, align 8
  %213 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %6, i32 0, i32 0
  store i32 1, i32* %213, align 4
  %214 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %6, i32 0, i32 1
  store i32 30, i32* %214, align 4
  %215 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %216 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %215, i32 0, i32 12
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i32 (%struct.v4l2_subdev*, %struct.v4l2_fract*)*, i32 (%struct.v4l2_subdev*, %struct.v4l2_fract*)** %218, align 8
  %220 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %221 = call i32 %219(%struct.v4l2_subdev* %220, %struct.v4l2_fract* %6)
  %222 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %223 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %222, i32 0, i32 3
  %224 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_19__* %223, i32 10)
  %225 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %226 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %225, i32 0, i32 3
  %227 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %228 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_19__* %226, i32* @ov7670_ctrl_ops, i32 %227, i32 0, i32 255, i32 1, i32 128)
  %229 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %230 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %229, i32 0, i32 3
  %231 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %232 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_19__* %230, i32* @ov7670_ctrl_ops, i32 %231, i32 0, i32 127, i32 1, i32 64)
  %233 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %234 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %233, i32 0, i32 3
  %235 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %236 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_19__* %234, i32* @ov7670_ctrl_ops, i32 %235, i32 0, i32 1, i32 1, i32 0)
  %237 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %238 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %237, i32 0, i32 3
  %239 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %240 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_19__* %238, i32* @ov7670_ctrl_ops, i32 %239, i32 0, i32 1, i32 1, i32 0)
  %241 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %242 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %241, i32 0, i32 3
  %243 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %244 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_19__* %242, i32* @ov7670_ctrl_ops, i32 %243, i32 0, i32 256, i32 1, i32 128)
  %245 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %246 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %245, i32 0, i32 6
  store i8* %244, i8** %246, align 8
  %247 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %248 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %247, i32 0, i32 3
  %249 = load i32, i32* @V4L2_CID_HUE, align 4
  %250 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_19__* %248, i32* @ov7670_ctrl_ops, i32 %249, i32 -180, i32 180, i32 5, i32 0)
  %251 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %252 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %251, i32 0, i32 11
  store i8* %250, i8** %252, align 8
  %253 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %254 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %253, i32 0, i32 3
  %255 = load i32, i32* @V4L2_CID_GAIN, align 4
  %256 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_19__* %254, i32* @ov7670_ctrl_ops, i32 %255, i32 0, i32 255, i32 1, i32 128)
  %257 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %258 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %257, i32 0, i32 10
  store i8* %256, i8** %258, align 8
  %259 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %260 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %259, i32 0, i32 3
  %261 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %262 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_19__* %260, i32* @ov7670_ctrl_ops, i32 %261, i32 0, i32 1, i32 1, i32 1)
  %263 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %264 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %263, i32 0, i32 8
  store i8* %262, i8** %264, align 8
  %265 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %266 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %265, i32 0, i32 3
  %267 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %268 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_19__* %266, i32* @ov7670_ctrl_ops, i32 %267, i32 0, i32 65535, i32 1, i32 500)
  %269 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %270 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %269, i32 0, i32 9
  store i8* %268, i8** %270, align 8
  %271 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %272 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %271, i32 0, i32 3
  %273 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %274 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %275 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %276 = call i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_19__* %272, i32* @ov7670_ctrl_ops, i32 %273, i32 %274, i32 0, i32 %275)
  %277 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %278 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %277, i32 0, i32 7
  store i8* %276, i8** %278, align 8
  %279 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %280 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %279, i32 0, i32 3
  %281 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %282 = load i32, i32* @ov7670_test_pattern_menu, align 4
  %283 = call i64 @ARRAY_SIZE(i32 %282)
  %284 = sub nsw i64 %283, 1
  %285 = load i32, i32* @ov7670_test_pattern_menu, align 4
  %286 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_19__* %280, i32* @ov7670_ctrl_ops, i32 %281, i64 %284, i32 0, i32 0, i32 %285)
  %287 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %288 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %287, i32 0, i32 3
  %289 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %290 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %289, i32 0, i32 2
  store %struct.TYPE_19__* %288, %struct.TYPE_19__** %290, align 8
  %291 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %292 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %176
  %297 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %298 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %9, align 4
  br label %329

301:                                              ; preds = %176
  %302 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %303 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %302, i32 0, i32 8
  %304 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %303, i32 0, i32 1)
  %305 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %306 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %305, i32 0, i32 7
  %307 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %308 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %306, i32 %307, i32 0)
  %309 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %310 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %309, i32 0, i32 6
  %311 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %310)
  %312 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %313 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %312, i32 0, i32 3
  %314 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_19__* %313)
  %315 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %316 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %315, i32 0, i32 4
  %317 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %316)
  store i32 %317, i32* %9, align 4
  %318 = load i32, i32* %9, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %301
  br label %324

321:                                              ; preds = %301
  %322 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %323 = call i32 @ov7670_power_off(%struct.v4l2_subdev* %322)
  store i32 0, i32* %3, align 4
  br label %337

324:                                              ; preds = %320
  %325 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %326 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %326, i32 0, i32 1
  %328 = call i32 @media_entity_cleanup(%struct.TYPE_16__* %327)
  br label %329

329:                                              ; preds = %324, %296
  %330 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %331 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %330, i32 0, i32 3
  %332 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_19__* %331)
  br label %333

333:                                              ; preds = %329, %163, %154
  %334 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %335 = call i32 @ov7670_power_off(%struct.v4l2_subdev* %334)
  %336 = load i32, i32* %9, align 4
  store i32 %336, i32* %3, align 4
  br label %337

337:                                              ; preds = %333, %321, %128, %119, %39, %17
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

declare dso_local %struct.ov7670_info* @devm_kzalloc(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i64 @dev_fwnode(%struct.TYPE_20__*) #1

declare dso_local i32 @ov7670_parse_dt(%struct.TYPE_20__*, %struct.ov7670_info*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ov7670_init_gpio(%struct.i2c_client*, %struct.ov7670_info*) #1

declare dso_local i32 @ov7670_power_on(%struct.v4l2_subdev*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @ov7670_detect(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @ov7670_get_default_format(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_19__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_19__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_19__*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_19__*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7670_power_off(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_16__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
