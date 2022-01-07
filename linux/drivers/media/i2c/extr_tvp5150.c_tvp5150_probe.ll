; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tvp5150 = type { i32, %struct.TYPE_9__, i64, i32, i32, i32, i32, %struct.TYPE_11__*, i32, %struct.v4l2_subdev, %struct.regmap* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.v4l2_subdev = type { %struct.TYPE_9__*, %struct.TYPE_10__, i32, i32*, i32 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.regmap = type { i32 }

@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tvp5150_config = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DT parsing error: %d\0A\00", align 1
@V4L2_MBUS_BT656 = common dso_local global i32 0, align 4
@tvp5150_ops = common dso_local global i32 0, align 4
@tvp5150_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@TVP5150_COMPOSITE1 = common dso_local global i32 0, align 4
@tvp5150_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@tvp5150_test_patterns = common dso_local global i32 0, align 4
@tvp5150_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tvp5150\00", align 1
@debug = common dso_local global i32 0, align 4
@MEDIA_ENT_F_ATV_DECODER = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@PAD_SIGNAL_ANALOG = common dso_local global i32 0, align 4
@PAD_SIGNAL_DV = common dso_local global i32 0, align 4
@TVP5150_NUM_PADS = common dso_local global i32 0, align 4
@TVP5150_PAD_IF_INPUT = common dso_local global i64 0, align 8
@TVP5150_PAD_VID_OUT = common dso_local global i64 0, align 8
@tvp5150_sd_media_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tvp5150_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tvp5150*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %17 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @i2c_check_functionality(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %205

24:                                               ; preds = %1
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = call i32 @tvp5150_init(%struct.i2c_client* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %205

31:                                               ; preds = %24
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.tvp5150* @devm_kzalloc(%struct.TYPE_12__* %33, i32 104, i32 %34)
  store %struct.tvp5150* %35, %struct.tvp5150** %4, align 8
  %36 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %37 = icmp ne %struct.tvp5150* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %205

41:                                               ; preds = %31
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %42, i32* @tvp5150_config)
  store %struct.regmap* %43, %struct.regmap** %7, align 8
  %44 = load %struct.regmap*, %struct.regmap** %7, align 8
  %45 = call i64 @IS_ERR(%struct.regmap* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.regmap*, %struct.regmap** %7, align 8
  %49 = call i32 @PTR_ERR(%struct.regmap* %48)
  store i32 %49, i32* %2, align 4
  br label %205

50:                                               ; preds = %41
  %51 = load %struct.regmap*, %struct.regmap** %7, align 8
  %52 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %53 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %52, i32 0, i32 10
  store %struct.regmap* %51, %struct.regmap** %53, align 8
  %54 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %55 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %54, i32 0, i32 9
  store %struct.v4l2_subdev* %55, %struct.v4l2_subdev** %5, align 8
  %56 = load i32, i32* @CONFIG_OF, align 4
  %57 = call i64 @IS_ENABLED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %50
  %60 = load %struct.device_node*, %struct.device_node** %6, align 8
  %61 = icmp ne %struct.device_node* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = call i32 @tvp5150_parse_dt(%struct.tvp5150* %63, %struct.device_node* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %205

75:                                               ; preds = %62
  br label %80

76:                                               ; preds = %59, %50
  %77 = load i32, i32* @V4L2_MBUS_BT656, align 4
  %78 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %79 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %76, %75
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %81, %struct.i2c_client* %82, i32* @tvp5150_ops)
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %84, i32 0, i32 3
  store i32* @tvp5150_internal_ops, i32** %85, align 8
  %86 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %92 = call i32 @tvp5150_detect_version(%struct.tvp5150* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %80
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %205

97:                                               ; preds = %80
  %98 = load i32, i32* @V4L2_STD_ALL, align 4
  %99 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %100 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  %102 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %103 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @TVP5150_COMPOSITE1, align 4
  %105 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %106 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %108 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %110 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %109, i32 0, i32 1
  %111 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__* %110, i32 5)
  %112 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %113 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %112, i32 0, i32 1
  %114 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %115 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %113, i32* @tvp5150_ctrl_ops, i32 %114, i32 0, i32 255, i32 1, i32 128)
  %116 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %117 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %116, i32 0, i32 1
  %118 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %119 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %117, i32* @tvp5150_ctrl_ops, i32 %118, i32 0, i32 255, i32 1, i32 128)
  %120 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %121 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %120, i32 0, i32 1
  %122 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %123 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %121, i32* @tvp5150_ctrl_ops, i32 %122, i32 0, i32 255, i32 1, i32 128)
  %124 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %125 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %124, i32 0, i32 1
  %126 = load i32, i32* @V4L2_CID_HUE, align 4
  %127 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %125, i32* @tvp5150_ctrl_ops, i32 %126, i32 -128, i32 127, i32 1, i32 0)
  %128 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %129 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %128, i32 0, i32 1
  %130 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %131 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %129, i32* @tvp5150_ctrl_ops, i32 %130, i32 27000000, i32 27000000, i32 1, i32 27000000)
  %132 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %133 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %132, i32 0, i32 1
  %134 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %135 = load i32, i32* @tvp5150_test_patterns, align 4
  %136 = call i64 @ARRAY_SIZE(i32 %135)
  %137 = sub nsw i64 %136, 1
  %138 = load i32, i32* @tvp5150_test_patterns, align 4
  %139 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_9__* %133, i32* @tvp5150_ctrl_ops, i32 %134, i64 %137, i32 0, i32 0, i32 %138)
  %140 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %141 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %140, i32 0, i32 1
  %142 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %143 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %142, i32 0, i32 0
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %143, align 8
  %144 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %145 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %97
  %150 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %151 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %8, align 4
  br label %200

154:                                              ; preds = %97
  %155 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %156 = call i32 @tvp5150_read_std(%struct.v4l2_subdev* %155)
  %157 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %158 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %157, i32 0, i32 3
  %159 = call i32 @tvp5150_set_default(i32 %156, i32* %158)
  %160 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %161 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %164 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  %165 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %166 = call i32 @tvp5150_reset(%struct.v4l2_subdev* %165, i32 0)
  %167 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %187

171:                                              ; preds = %154
  %172 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 1
  %174 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32, i32* @tvp5150_isr, align 4
  %178 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %179 = load i32, i32* @IRQF_ONESHOT, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %182 = call i32 @devm_request_threaded_irq(%struct.TYPE_12__* %173, i64 %176, i32* null, i32 %177, i32 %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.tvp5150* %181)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %171
  br label %200

186:                                              ; preds = %171
  br label %187

187:                                              ; preds = %186, %154
  %188 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %189 = call i32 @v4l2_async_register_subdev(%struct.v4l2_subdev* %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %200

193:                                              ; preds = %187
  %194 = load i32, i32* @debug, align 4
  %195 = icmp sgt i32 %194, 1
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %198 = call i32 @tvp5150_log_status(%struct.v4l2_subdev* %197)
  br label %199

199:                                              ; preds = %196, %193
  store i32 0, i32* %2, align 4
  br label %205

200:                                              ; preds = %192, %185, %149
  %201 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %202 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %201, i32 0, i32 1
  %203 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__* %202)
  %204 = load i32, i32* %8, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %200, %199, %95, %68, %47, %38, %29, %21
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @tvp5150_init(%struct.i2c_client*) #1

declare dso_local %struct.tvp5150* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @tvp5150_parse_dt(%struct.tvp5150*, %struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @tvp5150_detect_version(%struct.tvp5150*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_9__*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @tvp5150_set_default(i32, i32*) #1

declare dso_local i32 @tvp5150_read_std(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp5150_reset(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_12__*, i64, i32*, i32, i32, i8*, %struct.tvp5150*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp5150_log_status(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
