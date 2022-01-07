; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v032.c_mt9v032_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.mt9v032_platform_data = type { i64*, i64 }
%struct.mt9v032 = type { i32, i32, i32, i32, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_18__, i32, %struct.TYPE_20__, %struct.TYPE_21__*, %struct.TYPE_19__, i32, i32, i32, i32, %struct.mt9v032_platform_data*, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_17__, i32*, i32, i32*, %struct.TYPE_24__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_19__ = type { i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt9v032_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@mt9v032_aegc_controls = common dso_local global i32* null, align 8
@mt9v032_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@MT9V032_ANALOG_GAIN_MIN = common dso_local global i32 0, align 4
@MT9V032_ANALOG_GAIN_MAX = common dso_local global i32 0, align 4
@MT9V032_ANALOG_GAIN_DEF = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@MT9V032_TOTAL_SHUTTER_WIDTH_DEF = common dso_local global i32 0, align 4
@V4L2_CID_HBLANK = common dso_local global i32 0, align 4
@MT9V032_HORIZONTAL_BLANKING_MAX = common dso_local global i32 0, align 4
@MT9V032_HORIZONTAL_BLANKING_DEF = common dso_local global i32 0, align 4
@V4L2_CID_VBLANK = common dso_local global i32 0, align 4
@MT9V032_VERTICAL_BLANKING_DEF = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@mt9v032_test_pattern_menu = common dso_local global i32* null, align 8
@mt9v032_test_pattern_color = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@V4L2_CID_LINK_FREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"control initialization error %d\0A\00", align 1
@MT9V032_COLUMN_START_DEF = common dso_local global i32 0, align 4
@MT9V032_ROW_START_DEF = common dso_local global i32 0, align 4
@MT9V032_WINDOW_WIDTH_DEF = common dso_local global i8* null, align 8
@MT9V032_WINDOW_HEIGHT_DEF = common dso_local global i8* null, align 8
@MEDIA_BUS_FMT_SGRBG10_1X10 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_Y10_1X10 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@MT9V032_AEC_ENABLE = common dso_local global i32 0, align 4
@MT9V032_AGC_ENABLE = common dso_local global i32 0, align 4
@MT9V032_SYSCLK_FREQ_DEF = common dso_local global i32 0, align 4
@mt9v032_subdev_ops = common dso_local global i32 0, align 4
@mt9v032_subdev_internal_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9v032_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v032_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mt9v032_platform_data*, align 8
  %7 = alloca %struct.mt9v032*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.mt9v032_platform_data* @mt9v032_get_pdata(%struct.i2c_client* %11)
  store %struct.mt9v032_platform_data* %12, %struct.mt9v032_platform_data** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mt9v032* @devm_kzalloc(i32* %14, i32 200, i32 %15)
  store %struct.mt9v032* %16, %struct.mt9v032** %7, align 8
  %17 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %18 = icmp ne %struct.mt9v032* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %419

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @mt9v032_regmap_config)
  %25 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %26 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %25, i32 0, i32 20
  store i8* %24, i8** %26, align 8
  %27 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %28 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %27, i32 0, i32 20
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %34 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %33, i32 0, i32 20
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  store i32 %36, i32* %3, align 4
  br label %419

37:                                               ; preds = %22
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i8* @devm_clk_get(i32* %39, i32* null)
  %41 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %42 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %41, i32 0, i32 19
  store i8* %40, i8** %42, align 8
  %43 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %44 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %43, i32 0, i32 19
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %50 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %49, i32 0, i32 19
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %3, align 4
  br label %419

53:                                               ; preds = %37
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %57 = call i8* @devm_gpiod_get_optional(i32* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %59 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %58, i32 0, i32 18
  store i8* %57, i8** %59, align 8
  %60 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %61 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %60, i32 0, i32 18
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @IS_ERR(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %53
  %66 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %67 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %66, i32 0, i32 18
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %3, align 4
  br label %419

70:                                               ; preds = %53
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %74 = call i8* @devm_gpiod_get_optional(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %76 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %75, i32 0, i32 17
  store i8* %74, i8** %76, align 8
  %77 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %78 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %77, i32 0, i32 17
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @IS_ERR(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %70
  %83 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %84 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %83, i32 0, i32 17
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %3, align 4
  br label %419

87:                                               ; preds = %70
  %88 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %89 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %88, i32 0, i32 16
  %90 = call i32 @mutex_init(i32* %89)
  %91 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %6, align 8
  %92 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %93 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %92, i32 0, i32 15
  store %struct.mt9v032_platform_data* %91, %struct.mt9v032_platform_data** %93, align 8
  %94 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %95 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = bitcast i8* %97 to %struct.TYPE_21__*
  %99 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %100 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %99, i32 0, i32 9
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %100, align 8
  %101 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %102 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %101, i32 0, i32 4
  %103 = load i32*, i32** @mt9v032_aegc_controls, align 8
  %104 = call i32 @ARRAY_SIZE(i32* %103)
  %105 = add i32 11, %104
  %106 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_24__* %102, i32 %105)
  %107 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %108 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %107, i32 0, i32 4
  %109 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %110 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_24__* %108, i32* @mt9v032_ctrl_ops, i32 %109, i32 0, i32 1, i32 1, i32 1)
  %111 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %112 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %111, i32 0, i32 4
  %113 = load i32, i32* @V4L2_CID_GAIN, align 4
  %114 = load i32, i32* @MT9V032_ANALOG_GAIN_MIN, align 4
  %115 = load i32, i32* @MT9V032_ANALOG_GAIN_MAX, align 4
  %116 = load i32, i32* @MT9V032_ANALOG_GAIN_DEF, align 4
  %117 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_24__* %112, i32* @mt9v032_ctrl_ops, i32 %113, i32 %114, i32 %115, i32 1, i32 %116)
  %118 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %119 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %118, i32 0, i32 4
  %120 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %121 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %122 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %123 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_24__* %119, i32* @mt9v032_ctrl_ops, i32 %120, i32 %121, i32 0, i32 %122)
  %124 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %125 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %124, i32 0, i32 4
  %126 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %127 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %128 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %127, i32 0, i32 9
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %135 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %134, i32 0, i32 9
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MT9V032_TOTAL_SHUTTER_WIDTH_DEF, align 4
  %142 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_24__* %125, i32* @mt9v032_ctrl_ops, i32 %126, i32 %133, i32 %140, i32 1, i32 %141)
  %143 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %144 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %143, i32 0, i32 4
  %145 = load i32, i32* @V4L2_CID_HBLANK, align 4
  %146 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %147 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %146, i32 0, i32 9
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @MT9V032_HORIZONTAL_BLANKING_MAX, align 4
  %154 = load i32, i32* @MT9V032_HORIZONTAL_BLANKING_DEF, align 4
  %155 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_24__* %144, i32* @mt9v032_ctrl_ops, i32 %145, i32 %152, i32 %153, i32 1, i32 %154)
  %156 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %157 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %156, i32 0, i32 4
  %158 = load i32, i32* @V4L2_CID_VBLANK, align 4
  %159 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %160 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %159, i32 0, i32 9
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %167 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %166, i32 0, i32 9
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @MT9V032_VERTICAL_BLANKING_DEF, align 4
  %174 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_24__* %157, i32* @mt9v032_ctrl_ops, i32 %158, i32 %165, i32 %172, i32 1, i32 %173)
  %175 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %176 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %175, i32 0, i32 4
  %177 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %178 = load i32*, i32** @mt9v032_test_pattern_menu, align 8
  %179 = call i32 @ARRAY_SIZE(i32* %178)
  %180 = sub i32 %179, 1
  %181 = load i32*, i32** @mt9v032_test_pattern_menu, align 8
  %182 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_24__* %176, i32* @mt9v032_ctrl_ops, i32 %177, i32 %180, i32 0, i32 0, i32* %181)
  %183 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %184 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %183, i32 0, i32 13
  store i32 %182, i32* %184, align 8
  %185 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %186 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %185, i32 0, i32 4
  %187 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_24__* %186, i32* @mt9v032_test_pattern_color, i32* null)
  %188 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %189 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %188, i32 0, i32 14
  store i32 %187, i32* %189, align 4
  %190 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %191 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %190, i32 0, i32 4
  %192 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %193 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %192, i32 0, i32 9
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_24__* %191, i32* %198, i32* null)
  store i32 0, i32* %8, align 4
  br label %200

200:                                              ; preds = %213, %87
  %201 = load i32, i32* %8, align 4
  %202 = load i32*, i32** @mt9v032_aegc_controls, align 8
  %203 = call i32 @ARRAY_SIZE(i32* %202)
  %204 = icmp ult i32 %201, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %200
  %206 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %207 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %206, i32 0, i32 4
  %208 = load i32*, i32** @mt9v032_aegc_controls, align 8
  %209 = load i32, i32* %8, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_24__* %207, i32* %211, i32* null)
  br label %213

213:                                              ; preds = %205
  %214 = load i32, i32* %8, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %8, align 4
  br label %200

216:                                              ; preds = %200
  %217 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %218 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %217, i32 0, i32 13
  %219 = call i32 @v4l2_ctrl_cluster(i32 2, i32* %218)
  %220 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %221 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %220, i32 0, i32 4
  %222 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %223 = load i32, i32* @INT_MAX, align 4
  %224 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_24__* %221, i32* @mt9v032_ctrl_ops, i32 %222, i32 1, i32 %223, i32 1, i32 1)
  %225 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %226 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %225, i32 0, i32 12
  store i32 %224, i32* %226, align 4
  %227 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %6, align 8
  %228 = icmp ne %struct.mt9v032_platform_data* %227, null
  br i1 %228, label %229, label %278

229:                                              ; preds = %216
  %230 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %6, align 8
  %231 = getelementptr inbounds %struct.mt9v032_platform_data, %struct.mt9v032_platform_data* %230, i32 0, i32 0
  %232 = load i64*, i64** %231, align 8
  %233 = icmp ne i64* %232, null
  br i1 %233, label %234, label %278

234:                                              ; preds = %229
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %235

235:                                              ; preds = %259, %234
  %236 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %6, align 8
  %237 = getelementptr inbounds %struct.mt9v032_platform_data, %struct.mt9v032_platform_data* %236, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %262

244:                                              ; preds = %235
  %245 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %6, align 8
  %246 = getelementptr inbounds %struct.mt9v032_platform_data, %struct.mt9v032_platform_data* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %6, align 8
  %253 = getelementptr inbounds %struct.mt9v032_platform_data, %struct.mt9v032_platform_data* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %251, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %244
  %257 = load i32, i32* %8, align 4
  store i32 %257, i32* %10, align 4
  br label %258

258:                                              ; preds = %256, %244
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %8, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %235

262:                                              ; preds = %235
  %263 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %264 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %263, i32 0, i32 4
  %265 = load i32, i32* @V4L2_CID_LINK_FREQ, align 4
  %266 = load i32, i32* %8, align 4
  %267 = sub i32 %266, 1
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.mt9v032_platform_data*, %struct.mt9v032_platform_data** %6, align 8
  %270 = getelementptr inbounds %struct.mt9v032_platform_data, %struct.mt9v032_platform_data* %269, i32 0, i32 0
  %271 = load i64*, i64** %270, align 8
  %272 = call i32 @v4l2_ctrl_new_int_menu(%struct.TYPE_24__* %264, i32* @mt9v032_ctrl_ops, i32 %265, i32 %267, i32 %268, i64* %271)
  %273 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %274 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %273, i32 0, i32 11
  store i32 %272, i32* %274, align 8
  %275 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %276 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %275, i32 0, i32 11
  %277 = call i32 @v4l2_ctrl_cluster(i32 2, i32* %276)
  br label %278

278:                                              ; preds = %262, %229, %216
  %279 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %280 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %279, i32 0, i32 4
  %281 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %282 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 4
  store %struct.TYPE_24__* %280, %struct.TYPE_24__** %283, align 8
  %284 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %285 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %301

289:                                              ; preds = %278
  %290 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %291 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %290, i32 0, i32 0
  %292 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %293 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %292, i32 0, i32 4
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @dev_err(i32* %291, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %295)
  %297 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %298 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  store i32 %300, i32* %9, align 4
  br label %410

301:                                              ; preds = %278
  %302 = load i32, i32* @MT9V032_COLUMN_START_DEF, align 4
  %303 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %304 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %303, i32 0, i32 10
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 3
  store i32 %302, i32* %305, align 4
  %306 = load i32, i32* @MT9V032_ROW_START_DEF, align 4
  %307 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %308 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %307, i32 0, i32 10
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 2
  store i32 %306, i32* %309, align 8
  %310 = load i8*, i8** @MT9V032_WINDOW_WIDTH_DEF, align 8
  %311 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %312 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %311, i32 0, i32 10
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 1
  store i8* %310, i8** %313, align 8
  %314 = load i8*, i8** @MT9V032_WINDOW_HEIGHT_DEF, align 8
  %315 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %316 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %315, i32 0, i32 10
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 0
  store i8* %314, i8** %317, align 8
  %318 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %319 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %318, i32 0, i32 9
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %301
  %325 = load i32, i32* @MEDIA_BUS_FMT_SGRBG10_1X10, align 4
  %326 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %327 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %326, i32 0, i32 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 4
  store i32 %325, i32* %328, align 8
  br label %334

329:                                              ; preds = %301
  %330 = load i32, i32* @MEDIA_BUS_FMT_Y10_1X10, align 4
  %331 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %332 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %331, i32 0, i32 8
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %332, i32 0, i32 4
  store i32 %330, i32* %333, align 8
  br label %334

334:                                              ; preds = %329, %324
  %335 = load i8*, i8** @MT9V032_WINDOW_WIDTH_DEF, align 8
  %336 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %337 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %336, i32 0, i32 8
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %337, i32 0, i32 3
  store i8* %335, i8** %338, align 8
  %339 = load i8*, i8** @MT9V032_WINDOW_HEIGHT_DEF, align 8
  %340 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %341 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %340, i32 0, i32 8
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 2
  store i8* %339, i8** %342, align 8
  %343 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %344 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %345 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %344, i32 0, i32 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 1
  store i32 %343, i32* %346, align 4
  %347 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %348 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %349 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %348, i32 0, i32 8
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 0
  store i32 %347, i32* %350, align 8
  %351 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %352 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %351, i32 0, i32 0
  store i32 1, i32* %352, align 8
  %353 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %354 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %353, i32 0, i32 1
  store i32 1, i32* %354, align 4
  %355 = load i32, i32* @MT9V032_AEC_ENABLE, align 4
  %356 = load i32, i32* @MT9V032_AGC_ENABLE, align 4
  %357 = or i32 %355, %356
  %358 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %359 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %358, i32 0, i32 2
  store i32 %357, i32* %359, align 8
  %360 = load i32, i32* @MT9V032_HORIZONTAL_BLANKING_DEF, align 4
  %361 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %362 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %361, i32 0, i32 3
  store i32 %360, i32* %362, align 4
  %363 = load i32, i32* @MT9V032_SYSCLK_FREQ_DEF, align 4
  %364 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %365 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %364, i32 0, i32 7
  store i32 %363, i32* %365, align 4
  %366 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %367 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %366, i32 0, i32 5
  %368 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %369 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_23__* %367, %struct.i2c_client* %368, i32* @mt9v032_subdev_ops)
  %370 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %371 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %370, i32 0, i32 5
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 3
  store i32* @mt9v032_subdev_internal_ops, i32** %372, align 8
  %373 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %374 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %375 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %374, i32 0, i32 5
  %376 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = or i32 %377, %373
  store i32 %378, i32* %376, align 8
  %379 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %380 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %381 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %380, i32 0, i32 5
  %382 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 0
  store i32 %379, i32* %383, align 8
  %384 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %385 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %386 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %385, i32 0, i32 6
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i32 0, i32 0
  store i32 %384, i32* %387, align 8
  %388 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %389 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %389, i32 0, i32 0
  %391 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %392 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %391, i32 0, i32 6
  %393 = call i32 @media_entity_pads_init(%struct.TYPE_17__* %390, i32 1, %struct.TYPE_18__* %392)
  store i32 %393, i32* %9, align 4
  %394 = load i32, i32* %9, align 4
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %334
  br label %410

397:                                              ; preds = %334
  %398 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %399 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %398, i32 0, i32 0
  %400 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %401 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i32 0, i32 1
  store i32* %399, i32** %402, align 8
  %403 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %404 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %403, i32 0, i32 5
  %405 = call i32 @v4l2_async_register_subdev(%struct.TYPE_23__* %404)
  store i32 %405, i32* %9, align 4
  %406 = load i32, i32* %9, align 4
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %397
  br label %410

409:                                              ; preds = %397
  store i32 0, i32* %3, align 4
  br label %419

410:                                              ; preds = %408, %396, %289
  %411 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %412 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %411, i32 0, i32 5
  %413 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i32 0, i32 0
  %414 = call i32 @media_entity_cleanup(%struct.TYPE_17__* %413)
  %415 = load %struct.mt9v032*, %struct.mt9v032** %7, align 8
  %416 = getelementptr inbounds %struct.mt9v032, %struct.mt9v032* %415, i32 0, i32 4
  %417 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_24__* %416)
  %418 = load i32, i32* %9, align 4
  store i32 %418, i32* %3, align 4
  br label %419

419:                                              ; preds = %410, %409, %82, %65, %48, %32, %19
  %420 = load i32, i32* %3, align 4
  ret i32 %420
}

declare dso_local %struct.mt9v032_platform_data* @mt9v032_get_pdata(%struct.i2c_client*) #1

declare dso_local %struct.mt9v032* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i32*) #1

declare dso_local i8* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_24__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_24__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_24__*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_new_int_menu(%struct.TYPE_24__*, i32*, i32, i32, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_23__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_17__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_23__*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_17__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
