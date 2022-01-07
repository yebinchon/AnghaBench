; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.cx25840_platform_data* }
%struct.cx25840_platform_data = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.cx25840_state = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i8*, i8*, i32, i32, i32, i32, %struct.i2c_client*, %struct.TYPE_12__*, %struct.v4l2_subdev }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.v4l2_subdev = type { %struct.TYPE_10__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@cx25840_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"detecting cx25840 client on address 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"device_id = 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"likely a confused/unresponsive cx2388[578] A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"A method to reset it from the cx25840 driver software is not known at this time\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"cx25840 not found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cx25840_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"cx23885 A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"cx23887 A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"cx23888 A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"cx%d A/V decoder found @ 0x%x (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"cx25%3x-2%x found @ 0x%x (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"cx25%3x-%x found @ 0x%x (%s)\0A\00", align 1
@CX25840_COMPOSITE7 = common dso_local global i32 0, align 4
@CX25840_AUDIO8 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@cx25840_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@cx25840_audio_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BASS = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_TREBLE = common dso_local global i32 0, align 4
@CX25840_PAD_INPUT = common dso_local global i64 0, align 8
@CX25840_PAD_VID_OUT = common dso_local global i64 0, align 8
@MEDIA_ENT_F_ATV_DECODER = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@PAD_SIGNAL_ANALOG = common dso_local global i32 0, align 4
@PAD_SIGNAL_DV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cx25840_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cx25840_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %17 = call i32 @i2c_check_functionality(%struct.TYPE_13__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %361

22:                                               ; preds = %2
  %23 = load i32, i32* @cx25840_debug, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 1
  %29 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %23, %struct.i2c_client* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @cx25840_read(%struct.i2c_client* %30, i32 257)
  %32 = shl i32 %31, 8
  store i32 %32, i32* %10, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @cx25840_read(%struct.i2c_client* %33, i32 256)
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @cx25840_debug, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %37, %struct.i2c_client* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 65280
  %43 = icmp eq i32 %42, 33536
  br i1 %43, label %44, label %50

44:                                               ; preds = %22
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 15
  %48 = add nsw i32 133, %47
  %49 = sub nsw i32 %48, 6
  store i32 %49, i32* %9, align 4
  br label %101

50:                                               ; preds = %22
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 65280
  %53 = icmp eq i32 %52, 33792
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 15
  %58 = add nsw i32 131, %57
  store i32 %58, i32* %9, align 4
  br label %100

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = call i32 @get_cx2388x_ident(%struct.i2c_client* %63)
  store i32 %64, i32* %9, align 4
  br label %99

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 65520
  %68 = icmp eq i32 %67, 23088
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 137, i32* %9, align 4
  br label %98

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 255
  %73 = load i32, i32* %10, align 4
  %74 = ashr i32 %73, 8
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 1
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 2
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_err(%struct.i2c_client* %77, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_err(%struct.i2c_client* %88, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %361

92:                                               ; preds = %70
  %93 = load i32, i32* @cx25840_debug, align 4
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %93, %struct.i2c_client* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %361

98:                                               ; preds = %69
  br label %99

99:                                               ; preds = %98, %62
  br label %100

100:                                              ; preds = %99, %54
  br label %101

101:                                              ; preds = %100, %44
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 1
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.cx25840_state* @devm_kzalloc(%struct.TYPE_14__* %103, i32 96, i32 %104)
  store %struct.cx25840_state* %105, %struct.cx25840_state** %6, align 8
  %106 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %107 = icmp ne %struct.cx25840_state* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %361

111:                                              ; preds = %101
  %112 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %113 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %112, i32 0, i32 15
  store %struct.v4l2_subdev* %113, %struct.v4l2_subdev** %7, align 8
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %114, %struct.i2c_client* %115, i32* @cx25840_ops)
  %117 = load i32, i32* %9, align 4
  switch i32 %117, label %195 [
    i32 136, label %118
    i32 135, label %130
    i32 134, label %142
    i32 137, label %154
    i32 131, label %167
    i32 130, label %167
    i32 129, label %167
    i32 128, label %167
    i32 133, label %194
    i32 132, label %194
  ]

118:                                              ; preds = %111
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 1
  %124 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %125 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %124, i32 0, i32 2
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %123, i32 %128)
  br label %212

130:                                              ; preds = %111
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = shl i32 %134, 1
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 2
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %131, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %135, i32 %140)
  br label %212

142:                                              ; preds = %111
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = shl i32 %146, 1
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 2
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %147, i32 %152)
  br label %212

154:                                              ; preds = %111
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %158 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = shl i32 %159, 1
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 2
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %155, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %156, i32 %160, i32 %165)
  br label %212

167:                                              ; preds = %111, %111, %111, %111
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = load i32, i32* %10, align 4
  %170 = and i32 %169, 65520
  %171 = ashr i32 %170, 4
  %172 = load i32, i32* %10, align 4
  %173 = and i32 %172, 15
  %174 = icmp slt i32 %173, 3
  br i1 %174, label %175, label %179

175:                                              ; preds = %167
  %176 = load i32, i32* %10, align 4
  %177 = and i32 %176, 15
  %178 = add nsw i32 %177, 1
  br label %182

179:                                              ; preds = %167
  %180 = load i32, i32* %10, align 4
  %181 = and i32 %180, 15
  br label %182

182:                                              ; preds = %179, %175
  %183 = phi i32 [ %178, %175 ], [ %181, %179 ]
  %184 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = shl i32 %186, 1
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %188, i32 0, i32 2
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %171, i32 %183, i32 %187, i32 %192)
  br label %212

194:                                              ; preds = %111, %111
  br label %195

195:                                              ; preds = %111, %194
  %196 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %197 = load i32, i32* %10, align 4
  %198 = and i32 %197, 65520
  %199 = ashr i32 %198, 4
  %200 = load i32, i32* %10, align 4
  %201 = and i32 %200, 15
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = shl i32 %204, 1
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 2
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %196, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %199, i32 %201, i32 %205, i32 %210)
  br label %212

212:                                              ; preds = %195, %182, %154, %142, %130, %118
  %213 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %214 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %215 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %214, i32 0, i32 13
  store %struct.i2c_client* %213, %struct.i2c_client** %215, align 8
  %216 = load i32, i32* @CX25840_COMPOSITE7, align 4
  %217 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %218 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %217, i32 0, i32 12
  store i32 %216, i32* %218, align 4
  %219 = load i32, i32* @CX25840_AUDIO8, align 4
  %220 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %221 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %220, i32 0, i32 11
  store i32 %219, i32* %221, align 8
  %222 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %223 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %222, i32 0, i32 0
  store i32 48000, i32* %223, align 8
  %224 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %225 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %226 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %225, i32 0, i32 10
  store i32 %224, i32* %226, align 4
  %227 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %228 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %227, i32 0, i32 1
  store i32 8, i32* %228, align 4
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %231 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %234 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp eq i32 %235, 134
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 220, i32 0
  %239 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %240 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %239, i32 0, i32 4
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %242 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %243 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %242, i32 0, i32 9
  store i32 %241, i32* %243, align 8
  %244 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %245 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %244, i32 0, i32 6
  %246 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %245, i32 9)
  %247 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %248 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %247, i32 0, i32 6
  %249 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %250 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %248, i32* @cx25840_ctrl_ops, i32 %249, i32 0, i32 255, i32 1, i32 128)
  %251 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %252 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %251, i32 0, i32 6
  %253 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %254 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %252, i32* @cx25840_ctrl_ops, i32 %253, i32 0, i32 127, i32 1, i32 64)
  %255 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %256 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %255, i32 0, i32 6
  %257 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %258 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %256, i32* @cx25840_ctrl_ops, i32 %257, i32 0, i32 127, i32 1, i32 64)
  %259 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %260 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %259, i32 0, i32 6
  %261 = load i32, i32* @V4L2_CID_HUE, align 4
  %262 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %260, i32* @cx25840_ctrl_ops, i32 %261, i32 -128, i32 127, i32 1, i32 0)
  %263 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %264 = call i32 @is_cx2583x(%struct.cx25840_state* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %312, label %266

266:                                              ; preds = %212
  %267 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %268 = call i32 @cx25840_read(%struct.i2c_client* %267, i32 2260)
  store i32 %268, i32* %8, align 4
  %269 = load i32, i32* %8, align 4
  %270 = icmp sgt i32 %269, 228
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  store i32 228, i32* %8, align 4
  %272 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %273 = call i32 @cx25840_write(%struct.i2c_client* %272, i32 2260, i32 228)
  br label %281

274:                                              ; preds = %266
  %275 = load i32, i32* %8, align 4
  %276 = icmp slt i32 %275, 20
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  store i32 20, i32* %8, align 4
  %278 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %279 = call i32 @cx25840_write(%struct.i2c_client* %278, i32 2260, i32 20)
  br label %280

280:                                              ; preds = %277, %274
  br label %281

281:                                              ; preds = %280, %271
  %282 = load i32, i32* %8, align 4
  %283 = sub nsw i32 228, %282
  %284 = ashr i32 %283, 1
  %285 = add nsw i32 %284, 23
  %286 = shl i32 %285, 9
  store i32 %286, i32* %8, align 4
  %287 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %288 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %287, i32 0, i32 6
  %289 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %290 = load i32, i32* %8, align 4
  %291 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %288, i32* @cx25840_audio_ctrl_ops, i32 %289, i32 0, i32 65535, i32 655, i32 %290)
  %292 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %293 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %292, i32 0, i32 7
  store i8* %291, i8** %293, align 8
  %294 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %295 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %294, i32 0, i32 6
  %296 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %297 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %295, i32* @cx25840_audio_ctrl_ops, i32 %296, i32 0, i32 1, i32 1, i32 0)
  %298 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %299 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %298, i32 0, i32 8
  store i8* %297, i8** %299, align 8
  %300 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %301 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %300, i32 0, i32 6
  %302 = load i32, i32* @V4L2_CID_AUDIO_BALANCE, align 4
  %303 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %301, i32* @cx25840_audio_ctrl_ops, i32 %302, i32 0, i32 65535, i32 655, i32 32768)
  %304 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %305 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %304, i32 0, i32 6
  %306 = load i32, i32* @V4L2_CID_AUDIO_BASS, align 4
  %307 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %305, i32* @cx25840_audio_ctrl_ops, i32 %306, i32 0, i32 65535, i32 655, i32 32768)
  %308 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %309 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %308, i32 0, i32 6
  %310 = load i32, i32* @V4L2_CID_AUDIO_TREBLE, align 4
  %311 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_10__* %309, i32* @cx25840_audio_ctrl_ops, i32 %310, i32 0, i32 65535, i32 655, i32 32768)
  br label %312

312:                                              ; preds = %281, %212
  %313 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %314 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %313, i32 0, i32 6
  %315 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %316 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %315, i32 0, i32 0
  store %struct.TYPE_10__* %314, %struct.TYPE_10__** %316, align 8
  %317 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %318 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %317, i32 0, i32 6
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %312
  %323 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %324 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %323, i32 0, i32 6
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  store i32 %326, i32* %11, align 4
  %327 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %328 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %327, i32 0, i32 6
  %329 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__* %328)
  %330 = load i32, i32* %11, align 4
  store i32 %330, i32* %3, align 4
  br label %361

331:                                              ; preds = %312
  %332 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %333 = call i32 @is_cx2583x(%struct.cx25840_state* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %331
  %336 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %337 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %336, i32 0, i32 7
  %338 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %337)
  br label %339

339:                                              ; preds = %335, %331
  %340 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %341 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %340, i32 0, i32 6
  %342 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__* %341)
  %343 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %344 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 0
  %346 = load %struct.cx25840_platform_data*, %struct.cx25840_platform_data** %345, align 8
  %347 = icmp ne %struct.cx25840_platform_data* %346, null
  br i1 %347, label %348, label %358

348:                                              ; preds = %339
  %349 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %350 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load %struct.cx25840_platform_data*, %struct.cx25840_platform_data** %351, align 8
  store %struct.cx25840_platform_data* %352, %struct.cx25840_platform_data** %12, align 8
  %353 = load %struct.cx25840_platform_data*, %struct.cx25840_platform_data** %12, align 8
  %354 = getelementptr inbounds %struct.cx25840_platform_data, %struct.cx25840_platform_data* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %357 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %356, i32 0, i32 5
  store i32 %355, i32* %357, align 4
  br label %358

358:                                              ; preds = %348, %339
  %359 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %360 = call i32 @cx25840_ir_probe(%struct.v4l2_subdev* %359)
  store i32 0, i32* %3, align 4
  br label %361

361:                                              ; preds = %358, %322, %108, %92, %76, %19
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @get_cx2388x_ident(%struct.i2c_client*) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, ...) #1

declare dso_local %struct.cx25840_state* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__*) #1

declare dso_local i32 @cx25840_ir_probe(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
