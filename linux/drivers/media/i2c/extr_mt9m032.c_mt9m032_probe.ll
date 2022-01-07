; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m032.c_mt9m032_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_17__, i32, %struct.i2c_adapter* }
%struct.TYPE_17__ = type { %struct.mt9m032_platform_data* }
%struct.mt9m032_platform_data = type { i32, i64 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mt9m032 = type { i32, %struct.TYPE_22__, %struct.TYPE_21__, %struct.mt9m032_platform_data*, %struct.TYPE_16__, i8*, i8*, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_23__, %struct.TYPE_22__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt9m032_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@MT9M032_CHIP_VERSION = common dso_local global i32 0, align 4
@MT9M032_CHIP_VERSION_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"MT9M032 not detected, wrong version 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"MT9M032 detected at address 0x%02x\0A\00", align 1
@MT9M032_COLUMN_START_DEF = common dso_local global i32 0, align 4
@MT9M032_ROW_START_DEF = common dso_local global i32 0, align 4
@MT9M032_COLUMN_SIZE_DEF = common dso_local global i32 0, align 4
@MT9M032_ROW_SIZE_DEF = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_Y8_1X8 = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@mt9m032_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@MT9M032_SHUTTER_WIDTH_MIN = common dso_local global i32 0, align 4
@MT9M032_SHUTTER_WIDTH_MAX = common dso_local global i32 0, align 4
@MT9M032_SHUTTER_WIDTH_DEF = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"control initialization error %d\0A\00", align 1
@MEDIA_ENT_F_CAM_SENSOR = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MT9M032_RESET = common dso_local global i32 0, align 4
@MT9M032_PIX_CLK_CTRL = common dso_local global i32 0, align 4
@MT9M032_PIX_CLK_CTRL_INV_PIXCLK = common dso_local global i32 0, align 4
@MT9M032_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9m032_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m032_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mt9m032_platform_data*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.mt9m032*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %13, align 8
  store %struct.mt9m032_platform_data* %14, %struct.mt9m032_platform_data** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 2
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %16, align 8
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %7, align 8
  %18 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %6, align 8
  %19 = icmp eq %struct.mt9m032_platform_data* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %333

26:                                               ; preds = %2
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %28 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %29 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i32 @dev_warn(%struct.TYPE_17__* %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %333

37:                                               ; preds = %26
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %40, align 8
  %42 = icmp ne %struct.mt9m032_platform_data* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %333

46:                                               ; preds = %37
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.mt9m032* @devm_kzalloc(%struct.TYPE_17__* %48, i32 112, i32 %49)
  store %struct.mt9m032* %50, %struct.mt9m032** %8, align 8
  %51 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %52 = icmp eq %struct.mt9m032* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %333

56:                                               ; preds = %46
  %57 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %58 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %57, i32 0, i32 0
  %59 = call i32 @mutex_init(i32* %58)
  %60 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %6, align 8
  %61 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %62 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %61, i32 0, i32 3
  store %struct.mt9m032_platform_data* %60, %struct.mt9m032_platform_data** %62, align 8
  %63 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %64 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %63, i32 0, i32 2
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_21__* %64, %struct.i2c_client* %65, i32* @mt9m032_ops)
  %67 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %68 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %69 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load i32, i32* @MT9M032_CHIP_VERSION, align 4
  %75 = call i32 @mt9m032_read(%struct.i2c_client* %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @MT9M032_CHIP_VERSION_VALUE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %56
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %328

86:                                               ; preds = %56
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_info(%struct.TYPE_17__* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %94 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %97 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  store i32 30, i32* %98, align 4
  %99 = load i32, i32* @MT9M032_COLUMN_START_DEF, align 4
  %100 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %101 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @MT9M032_ROW_START_DEF, align 4
  %104 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %105 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @MT9M032_COLUMN_SIZE_DEF, align 4
  %108 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %109 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %108, i32 0, i32 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @MT9M032_ROW_SIZE_DEF, align 4
  %112 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %113 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %112, i32 0, i32 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  %115 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %116 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %115, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %120 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 4
  store i32 %118, i32* %121, align 8
  %122 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %123 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %127 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @MEDIA_BUS_FMT_Y8_1X8, align 4
  %130 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %131 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 8
  %133 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %134 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %135 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %138 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %139 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %142 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %141, i32 0, i32 1
  %143 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_22__* %142, i32 5)
  %144 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %145 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %144, i32 0, i32 1
  %146 = load i32, i32* @V4L2_CID_GAIN, align 4
  %147 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_22__* %145, i32* @mt9m032_ctrl_ops, i32 %146, i32 0, i32 127, i32 1, i32 64)
  %148 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %149 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %148, i32 0, i32 1
  %150 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %151 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_22__* %149, i32* @mt9m032_ctrl_ops, i32 %150, i32 0, i32 1, i32 1, i32 0)
  %152 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %153 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  %154 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %155 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %154, i32 0, i32 1
  %156 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %157 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_22__* %155, i32* @mt9m032_ctrl_ops, i32 %156, i32 0, i32 1, i32 1, i32 0)
  %158 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %159 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  %160 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %161 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %160, i32 0, i32 1
  %162 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %163 = load i32, i32* @MT9M032_SHUTTER_WIDTH_MIN, align 4
  %164 = load i32, i32* @MT9M032_SHUTTER_WIDTH_MAX, align 4
  %165 = load i32, i32* @MT9M032_SHUTTER_WIDTH_DEF, align 4
  %166 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_22__* %161, i32* @mt9m032_ctrl_ops, i32 %162, i32 %163, i32 %164, i32 1, i32 %165)
  %167 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %168 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %167, i32 0, i32 1
  %169 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %170 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %6, align 8
  %171 = getelementptr inbounds %struct.mt9m032_platform_data, %struct.mt9m032_platform_data* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %6, align 8
  %174 = getelementptr inbounds %struct.mt9m032_platform_data, %struct.mt9m032_platform_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %6, align 8
  %177 = getelementptr inbounds %struct.mt9m032_platform_data, %struct.mt9m032_platform_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_22__* %168, i32* @mt9m032_ctrl_ops, i32 %169, i32 %172, i32 %175, i32 1, i32 %178)
  %180 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %181 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %86
  %186 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %187 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %10, align 4
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = load i32, i32* %10, align 4
  %193 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %191, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %192)
  br label %324

194:                                              ; preds = %86
  %195 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %196 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %195, i32 0, i32 5
  %197 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %196)
  %198 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %199 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %198, i32 0, i32 1
  %200 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %201 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 1
  store %struct.TYPE_22__* %199, %struct.TYPE_22__** %202, align 8
  %203 = load i32, i32* @MEDIA_ENT_F_CAM_SENSOR, align 4
  %204 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %205 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  store i32 %203, i32* %207, align 8
  %208 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %209 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %210 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  %212 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %213 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %216 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %215, i32 0, i32 4
  %217 = call i32 @media_entity_pads_init(%struct.TYPE_23__* %214, i32 1, %struct.TYPE_16__* %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %194
  br label %324

221:                                              ; preds = %194
  %222 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %223 = load i32, i32* @MT9M032_RESET, align 4
  %224 = call i32 @mt9m032_write(%struct.i2c_client* %222, i32 %223, i32 1)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %319

228:                                              ; preds = %221
  %229 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %230 = load i32, i32* @MT9M032_RESET, align 4
  %231 = call i32 @mt9m032_write(%struct.i2c_client* %229, i32 %230, i32 0)
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  br label %319

235:                                              ; preds = %228
  %236 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %237 = call i32 @mt9m032_setup_pll(%struct.mt9m032* %236)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %319

241:                                              ; preds = %235
  %242 = call i32 @usleep_range(i32 10000, i32 11000)
  %243 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %244 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %243, i32 0, i32 1
  %245 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_22__* %244)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  br label %319

249:                                              ; preds = %241
  %250 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %251 = call i32 @mt9m032_update_geom_timing(%struct.mt9m032* %250)
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  br label %319

255:                                              ; preds = %249
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = call i32 @mt9m032_write(%struct.i2c_client* %256, i32 65, i32 0)
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  br label %319

261:                                              ; preds = %255
  %262 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %263 = call i32 @mt9m032_write(%struct.i2c_client* %262, i32 66, i32 3)
  store i32 %263, i32* %10, align 4
  %264 = load i32, i32* %10, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  br label %319

267:                                              ; preds = %261
  %268 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %269 = call i32 @mt9m032_write(%struct.i2c_client* %268, i32 67, i32 3)
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  br label %319

273:                                              ; preds = %267
  %274 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %275 = call i32 @mt9m032_write(%struct.i2c_client* %274, i32 127, i32 0)
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  br label %319

279:                                              ; preds = %273
  %280 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %281 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %280, i32 0, i32 3
  %282 = load %struct.mt9m032_platform_data*, %struct.mt9m032_platform_data** %281, align 8
  %283 = getelementptr inbounds %struct.mt9m032_platform_data, %struct.mt9m032_platform_data* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %279
  %287 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %288 = load i32, i32* @MT9M032_PIX_CLK_CTRL, align 4
  %289 = load i32, i32* @MT9M032_PIX_CLK_CTRL_INV_PIXCLK, align 4
  %290 = call i32 @mt9m032_write(%struct.i2c_client* %287, i32 %288, i32 %289)
  store i32 %290, i32* %10, align 4
  %291 = load i32, i32* %10, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %286
  br label %319

294:                                              ; preds = %286
  br label %295

295:                                              ; preds = %294, %279
  %296 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %297 = load i32, i32* @MT9M032_RESTART, align 4
  %298 = call i32 @mt9m032_write(%struct.i2c_client* %296, i32 %297, i32 1)
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %10, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  br label %319

302:                                              ; preds = %295
  %303 = call i32 @msleep(i32 100)
  %304 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %305 = load i32, i32* @MT9M032_RESTART, align 4
  %306 = call i32 @mt9m032_write(%struct.i2c_client* %304, i32 %305, i32 0)
  store i32 %306, i32* %10, align 4
  %307 = load i32, i32* %10, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %302
  br label %319

310:                                              ; preds = %302
  %311 = call i32 @msleep(i32 100)
  %312 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %313 = call i32 @update_formatter2(%struct.mt9m032* %312, i32 0)
  store i32 %313, i32* %10, align 4
  %314 = load i32, i32* %10, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %310
  br label %319

317:                                              ; preds = %310
  %318 = load i32, i32* %10, align 4
  store i32 %318, i32* %3, align 4
  br label %333

319:                                              ; preds = %316, %309, %301, %293, %278, %272, %266, %260, %254, %248, %240, %234, %227
  %320 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %321 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 0
  %323 = call i32 @media_entity_cleanup(%struct.TYPE_23__* %322)
  br label %324

324:                                              ; preds = %319, %220, %185
  %325 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %326 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %325, i32 0, i32 1
  %327 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_22__* %326)
  br label %328

328:                                              ; preds = %324, %79
  %329 = load %struct.mt9m032*, %struct.mt9m032** %8, align 8
  %330 = getelementptr inbounds %struct.mt9m032, %struct.mt9m032* %329, i32 0, i32 0
  %331 = call i32 @mutex_destroy(i32* %330)
  %332 = load i32, i32* %10, align 4
  store i32 %332, i32* %3, align 4
  br label %333

333:                                              ; preds = %328, %317, %53, %43, %31, %20
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_17__*, i8*) #1

declare dso_local %struct.mt9m032* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_21__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @mt9m032_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_22__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_22__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_23__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @mt9m032_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mt9m032_setup_pll(%struct.mt9m032*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_22__*) #1

declare dso_local i32 @mt9m032_update_geom_timing(%struct.mt9m032*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @update_formatter2(%struct.mt9m032*, i32) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_23__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_22__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
