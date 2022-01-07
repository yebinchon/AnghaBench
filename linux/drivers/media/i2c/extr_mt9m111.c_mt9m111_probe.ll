; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.mt9m111 = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_19__, i32, i32*, %struct.TYPE_18__, i32, i32, %struct.TYPE_14__*, %struct.TYPE_17__, %struct.TYPE_16__, i32, i32*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__, i32*, %struct.TYPE_20__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"regulator not found: %ld\0A\00", align 1
@context_b = common dso_local global i32 0, align 4
@mt9m111_subdev_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@mt9m111_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_TEST_PATTERN = common dso_local global i32 0, align 4
@mt9m111_test_pattern_menu = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@V4L2_COLORFX_SOLARIZATION = common dso_local global i32 0, align 4
@V4L2_COLORFX_NONE = common dso_local global i32 0, align 4
@V4L2_COLORFX_BW = common dso_local global i32 0, align 4
@V4L2_COLORFX_SEPIA = common dso_local global i32 0, align 4
@V4L2_COLORFX_NEGATIVE = common dso_local global i32 0, align 4
@mt9m111_mode_data = common dso_local global %struct.TYPE_14__* null, align 8
@MT9M111_MODE_SXGA_15FPS = common dso_local global i64 0, align 8
@MT9M111_MIN_DARK_COLS = common dso_local global i32 0, align 4
@MT9M111_MIN_DARK_ROWS = common dso_local global i32 0, align 4
@MT9M111_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9M111_MAX_HEIGHT = common dso_local global i32 0, align 4
@mt9m111_colour_fmts = common dso_local global i32* null, align 8
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9m111_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mt9m111*, align 8
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
  br label %250

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mt9m111* @devm_kzalloc(i32* %22, i32 120, i32 %23)
  store %struct.mt9m111* %24, %struct.mt9m111** %4, align 8
  %25 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %26 = icmp ne %struct.mt9m111* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %250

30:                                               ; preds = %20
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i64 @dev_fwnode(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %38 = call i32 @mt9m111_probe_fw(%struct.i2c_client* %36, %struct.mt9m111* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %250

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @v4l2_clk_get(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %49 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %51 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %57 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %250

60:                                               ; preds = %44
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @devm_regulator_get(i32* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %65 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %64, i32 0, i32 14
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %67 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %60
  %72 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %75 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %74, i32 0, i32 14
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @PTR_ERR(i32 %76)
  %78 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %80 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %79, i32 0, i32 14
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %250

83:                                               ; preds = %60
  %84 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %85 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %84, i32 0, i32 13
  store i32* @context_b, i32** %85, align 8
  %86 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %87 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %86, i32 0, i32 3
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_19__* %87, %struct.i2c_client* %88, i32* @mt9m111_subdev_ops)
  %90 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %91 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %94 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %99 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %98, i32 0, i32 2
  %100 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_20__* %99, i32 7)
  %101 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %102 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %101, i32 0, i32 2
  %103 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %104 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_20__* %102, i32* @mt9m111_ctrl_ops, i32 %103, i32 0, i32 1, i32 1, i32 0)
  %105 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %106 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %105, i32 0, i32 2
  %107 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %108 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_20__* %106, i32* @mt9m111_ctrl_ops, i32 %107, i32 0, i32 1, i32 1, i32 0)
  %109 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %110 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %109, i32 0, i32 2
  %111 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %112 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_20__* %110, i32* @mt9m111_ctrl_ops, i32 %111, i32 0, i32 1, i32 1, i32 1)
  %113 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %114 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %113, i32 0, i32 2
  %115 = load i32, i32* @V4L2_CID_GAIN, align 4
  %116 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_20__* %114, i32* @mt9m111_ctrl_ops, i32 %115, i32 0, i32 252, i32 1, i32 32)
  %117 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %118 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %117, i32 0, i32 12
  store i32 %116, i32* %118, align 4
  %119 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %120 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %119, i32 0, i32 2
  %121 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %122 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %123 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_20__* %120, i32* @mt9m111_ctrl_ops, i32 %121, i32 1, i32 0, i32 %122)
  %124 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %125 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %124, i32 0, i32 2
  %126 = load i32, i32* @V4L2_CID_TEST_PATTERN, align 4
  %127 = load i32, i32* @mt9m111_test_pattern_menu, align 4
  %128 = call i64 @ARRAY_SIZE(i32 %127)
  %129 = sub nsw i64 %128, 1
  %130 = load i32, i32* @mt9m111_test_pattern_menu, align 4
  %131 = call i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_20__* %125, i32* @mt9m111_ctrl_ops, i32 %126, i64 %129, i32 0, i32 0, i32 %130)
  %132 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %133 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %132, i32 0, i32 2
  %134 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %135 = load i32, i32* @V4L2_COLORFX_SOLARIZATION, align 4
  %136 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %137 = call i32 @BIT(i32 %136)
  %138 = load i32, i32* @V4L2_COLORFX_BW, align 4
  %139 = call i32 @BIT(i32 %138)
  %140 = or i32 %137, %139
  %141 = load i32, i32* @V4L2_COLORFX_SEPIA, align 4
  %142 = call i32 @BIT(i32 %141)
  %143 = or i32 %140, %142
  %144 = load i32, i32* @V4L2_COLORFX_NEGATIVE, align 4
  %145 = call i32 @BIT(i32 %144)
  %146 = or i32 %143, %145
  %147 = load i32, i32* @V4L2_COLORFX_SOLARIZATION, align 4
  %148 = call i32 @BIT(i32 %147)
  %149 = or i32 %146, %148
  %150 = xor i32 %149, -1
  %151 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %152 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_20__* %133, i32* @mt9m111_ctrl_ops, i32 %134, i32 %135, i32 %150, i32 %151)
  %153 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %154 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %153, i32 0, i32 2
  %155 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %156 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 3
  store %struct.TYPE_20__* %154, %struct.TYPE_20__** %157, align 8
  %158 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %159 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %83
  %164 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %165 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %6, align 4
  br label %244

168:                                              ; preds = %83
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mt9m111_mode_data, align 8
  %170 = load i64, i64* @MT9M111_MODE_SXGA_15FPS, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i64 %170
  %172 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %173 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %172, i32 0, i32 9
  store %struct.TYPE_14__* %171, %struct.TYPE_14__** %173, align 8
  %174 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %175 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %174, i32 0, i32 10
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %178 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %177, i32 0, i32 9
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %183 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %182, i32 0, i32 10
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 4
  %185 = load i32, i32* @MT9M111_MIN_DARK_COLS, align 4
  %186 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %187 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 3
  store i32 %185, i32* %188, align 4
  %189 = load i32, i32* @MT9M111_MIN_DARK_ROWS, align 4
  %190 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %191 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %190, i32 0, i32 6
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 8
  %193 = load i32, i32* @MT9M111_MAX_WIDTH, align 4
  %194 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %195 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  store i32 %193, i32* %196, align 4
  %197 = load i32, i32* @MT9M111_MAX_HEIGHT, align 4
  %198 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %199 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %198, i32 0, i32 6
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %202 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %206 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %205, i32 0, i32 8
  store i32 %204, i32* %206, align 4
  %207 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %208 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %212 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %211, i32 0, i32 7
  store i32 %210, i32* %212, align 8
  %213 = load i32*, i32** @mt9m111_colour_fmts, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %216 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %215, i32 0, i32 5
  store i32* %214, i32** %216, align 8
  %217 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %218 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %217, i32 0, i32 0
  store i32 -1, i32* %218, align 8
  %219 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %220 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %219, i32 0, i32 4
  %221 = call i32 @mutex_init(i32* %220)
  %222 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %223 = call i32 @mt9m111_video_probe(%struct.i2c_client* %222)
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %168
  br label %240

227:                                              ; preds = %168
  %228 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %229 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %228, i32 0, i32 0
  %230 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %231 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 2
  store i32* %229, i32** %232, align 8
  %233 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %234 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %233, i32 0, i32 3
  %235 = call i32 @v4l2_async_register_subdev(%struct.TYPE_19__* %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  br label %240

239:                                              ; preds = %227
  store i32 0, i32* %2, align 4
  br label %250

240:                                              ; preds = %238, %226
  %241 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %242 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %241, i32 0, i32 2
  %243 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_20__* %242)
  br label %244

244:                                              ; preds = %240, %163
  %245 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %246 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @v4l2_clk_put(i32 %247)
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %244, %239, %71, %55, %41, %27, %14
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.mt9m111* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @dev_fwnode(i32*) #1

declare dso_local i32 @mt9m111_probe_fw(%struct.i2c_client*, %struct.mt9m111*) #1

declare dso_local i32 @v4l2_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_19__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_20__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_20__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu_items(%struct.TYPE_20__*, i32*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mt9m111_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_19__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_20__*) #1

declare dso_local i32 @v4l2_clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
