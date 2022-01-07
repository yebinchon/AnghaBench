; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad9389b.c_ad9389b_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { i32 }
%struct.i2c_client = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.ad9389b_platform_data* }
%struct.ad9389b_platform_data = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ad9389b_state = type { i32, %struct.v4l2_ctrl_handler, %struct.v4l2_dv_timings, i32, i32, %struct.TYPE_8__, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_subdev, i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_subdev = type { %struct.TYPE_7__, %struct.v4l2_ctrl_handler*, i32 }
%struct.TYPE_7__ = type { i32 }

@V4L2_DV_BT_CEA_1920X1080P60 = common dso_local global %struct.v4l2_dv_timings zeroinitializer, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"detecting ad9389b client on address 0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"No platform data!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ad9389b_ops = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@ad9389b_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_DV_TX_MODE = common dso_local global i32 0, align 4
@V4L2_DV_TX_MODE_HDMI = common dso_local global i32 0, align 4
@V4L2_DV_TX_MODE_DVI_D = common dso_local global i32 0, align 4
@V4L2_CID_DV_TX_HOTPLUG = common dso_local global i32 0, align 4
@V4L2_CID_DV_TX_RXSENSE = common dso_local global i32 0, align 4
@V4L2_CID_DV_TX_EDID_PRESENT = common dso_local global i32 0, align 4
@V4L2_CID_DV_TX_RGB_RANGE = common dso_local global i32 0, align 4
@V4L2_DV_RGB_RANGE_FULL = common dso_local global i32 0, align 4
@V4L2_DV_RGB_RANGE_AUTO = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_ENT_F_DV_ENCODER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"chip_revision %d != 2\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"reg 0x41 0x%x, chip version (reg 0x00) 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to register edid i2c client\0A\00", align 1
@ad9389b_edid_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"%s found @ 0x%x (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ad9389b_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad9389b_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.v4l2_dv_timings, align 4
  %7 = alloca %struct.ad9389b_state*, align 8
  %8 = alloca %struct.ad9389b_platform_data*, align 8
  %9 = alloca %struct.v4l2_ctrl_handler*, align 8
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = bitcast %struct.v4l2_dv_timings* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.v4l2_dv_timings* @V4L2_DV_BT_CEA_1920X1080P60 to i8*), i64 4, i1 false)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.ad9389b_platform_data*, %struct.ad9389b_platform_data** %15, align 8
  store %struct.ad9389b_platform_data* %16, %struct.ad9389b_platform_data** %8, align 8
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %23 = call i32 @i2c_check_functionality(%struct.TYPE_9__* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %209

28:                                               ; preds = %2
  %29 = load i32, i32* @debug, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %33, 1
  %35 = call i32 @v4l_dbg(i32 1, i32 %29, %struct.i2c_client* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 3
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.ad9389b_state* @devm_kzalloc(%struct.TYPE_10__* %37, i32 96, i32 %38)
  store %struct.ad9389b_state* %39, %struct.ad9389b_state** %7, align 8
  %40 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %41 = icmp ne %struct.ad9389b_state* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %28
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %209

45:                                               ; preds = %28
  %46 = load %struct.ad9389b_platform_data*, %struct.ad9389b_platform_data** %8, align 8
  %47 = icmp eq %struct.ad9389b_platform_data* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = call i32 @v4l_err(%struct.i2c_client* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %209

53:                                               ; preds = %45
  %54 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %55 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %54, i32 0, i32 12
  %56 = load %struct.ad9389b_platform_data*, %struct.ad9389b_platform_data** %8, align 8
  %57 = call i32 @memcpy(i32* %55, %struct.ad9389b_platform_data* %56, i32 4)
  %58 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %59 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %58, i32 0, i32 11
  store %struct.v4l2_subdev* %59, %struct.v4l2_subdev** %10, align 8
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %60, %struct.i2c_client* %61, i32* @ad9389b_ops)
  %63 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %69 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %68, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %69, %struct.v4l2_ctrl_handler** %9, align 8
  %70 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %71 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %70, i32 5)
  %72 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %73 = load i32, i32* @V4L2_CID_DV_TX_MODE, align 4
  %74 = load i32, i32* @V4L2_DV_TX_MODE_HDMI, align 4
  %75 = load i32, i32* @V4L2_DV_TX_MODE_DVI_D, align 4
  %76 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %72, i32* @ad9389b_ctrl_ops, i32 %73, i32 %74, i32 0, i32 %75)
  %77 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %78 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %77, i32 0, i32 10
  store i8* %76, i8** %78, align 8
  %79 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %80 = load i32, i32* @V4L2_CID_DV_TX_HOTPLUG, align 4
  %81 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %79, i32* null, i32 %80, i32 0, i32 1, i32 0, i32 0)
  %82 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %83 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %82, i32 0, i32 9
  store i8* %81, i8** %83, align 8
  %84 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %85 = load i32, i32* @V4L2_CID_DV_TX_RXSENSE, align 4
  %86 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %84, i32* null, i32 %85, i32 0, i32 1, i32 0, i32 0)
  %87 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %88 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %87, i32 0, i32 8
  store i8* %86, i8** %88, align 8
  %89 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %90 = load i32, i32* @V4L2_CID_DV_TX_EDID_PRESENT, align 4
  %91 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %89, i32* null, i32 %90, i32 0, i32 1, i32 0, i32 0)
  %92 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %93 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  %94 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %95 = load i32, i32* @V4L2_CID_DV_TX_RGB_RANGE, align 4
  %96 = load i32, i32* @V4L2_DV_RGB_RANGE_FULL, align 4
  %97 = load i32, i32* @V4L2_DV_RGB_RANGE_AUTO, align 4
  %98 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %94, i32* @ad9389b_ctrl_ops, i32 %95, i32 %96, i32 0, i32 %97)
  %99 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %100 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %102 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %103 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %102, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %101, %struct.v4l2_ctrl_handler** %103, align 8
  %104 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %105 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %53
  %109 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %9, align 8
  %110 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %11, align 4
  br label %204

112:                                              ; preds = %53
  %113 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %114 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %115 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @MEDIA_ENT_F_DV_ENCODER, align 4
  %118 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %119 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %122 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %121, i32 0, i32 0
  %123 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %124 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %123, i32 0, i32 5
  %125 = call i32 @media_entity_pads_init(%struct.TYPE_7__* %122, i32 1, %struct.TYPE_8__* %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %112
  br label %204

129:                                              ; preds = %112
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %131 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %130, i32 0)
  %132 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %133 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %135 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 2
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %140 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %141 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_err(%struct.v4l2_subdev* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %11, align 4
  br label %200

146:                                              ; preds = %129
  %147 = load i32, i32* @debug, align 4
  %148 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %149 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %150 = call i32 @ad9389b_rd(%struct.v4l2_subdev* %149, i32 65)
  %151 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %152 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @v4l2_dbg(i32 1, i32 %147, %struct.v4l2_subdev* %148, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %153)
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 1
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = call i32 @i2c_new_dummy_device(%struct.TYPE_9__* %157, i32 63)
  %159 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %160 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %162 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @IS_ERR(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %146
  %167 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %168 = call i32 (%struct.v4l2_subdev*, i8*, ...) @v4l2_err(%struct.v4l2_subdev* %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %169 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %170 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @PTR_ERR(i32 %171)
  store i32 %172, i32* %11, align 4
  br label %200

173:                                              ; preds = %146
  %174 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %175 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %174, i32 0, i32 3
  %176 = load i32, i32* @ad9389b_edid_handler, align 4
  %177 = call i32 @INIT_DELAYED_WORK(i32* %175, i32 %176)
  %178 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %179 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %178, i32 0, i32 2
  %180 = bitcast %struct.v4l2_dv_timings* %179 to i8*
  %181 = bitcast %struct.v4l2_dv_timings* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 4 %181, i64 4, i1 false)
  %182 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %183 = call i32 @ad9389b_init_setup(%struct.v4l2_subdev* %182)
  %184 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %185 = call i32 @ad9389b_set_isr(%struct.v4l2_subdev* %184, i32 1)
  %186 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = shl i32 %192, 1
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 1
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @v4l2_info(%struct.v4l2_subdev* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %189, i32 %193, i32 %198)
  store i32 0, i32* %3, align 4
  br label %209

200:                                              ; preds = %166, %138
  %201 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %202 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %201, i32 0, i32 0
  %203 = call i32 @media_entity_cleanup(%struct.TYPE_7__* %202)
  br label %204

204:                                              ; preds = %200, %128, %108
  %205 = load %struct.ad9389b_state*, %struct.ad9389b_state** %7, align 8
  %206 = getelementptr inbounds %struct.ad9389b_state, %struct.ad9389b_state* %205, i32 0, i32 1
  %207 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %206)
  %208 = load i32, i32* %11, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %204, %173, %48, %42, %25
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32) #2

declare dso_local %struct.ad9389b_state* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*) #2

declare dso_local i32 @memcpy(i32*, %struct.ad9389b_platform_data*, i32) #2

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #2

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #2

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #2

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @ad9389b_rd(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, ...) #2

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #2

declare dso_local i32 @i2c_new_dummy_device(%struct.TYPE_9__*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @ad9389b_init_setup(%struct.v4l2_subdev*) #2

declare dso_local i32 @ad9389b_set_isr(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32, i32, i32) #2

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_7__*) #2

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
