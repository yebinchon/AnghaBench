; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_msp3400-driver.c_msp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.msp_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.v4l2_ctrl_handler, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_6__*, %struct.v4l2_subdev }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"msp3400\00", align 1
@msp_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"msp3400 not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msp_ops = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@MSP_INPUT_DEFAULT = common dso_local global i32 0, align 4
@MSP_OUTPUT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"rev1=0x%04x, rev2=0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"not an msp3400 (cannot read chip version)\0A\00", align 1
@opmode = common dso_local global i32 0, align 4
@msp_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BASS = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_TREBLE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_LOUDNESS = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"MSP%d4%02d%c-%c%d found on %s: supports %s%s%s, mode is %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"nicam\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@opmode_str = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"msp34xx\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"kernel_thread() failed\0A\00", align 1
@MEDIA_ENT_F_IF_AUD_DECODER = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@MSP3400_PAD_IF_INPUT = common dso_local global i64 0, align 8
@MSP3400_PAD_OUT = common dso_local global i64 0, align 8
@PAD_SIGNAL_AUDIO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @msp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.msp_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca i32 (i8*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 (i8*)* null, i32 (i8*)** %9, align 8
  %18 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %19 = icmp ne %struct.i2c_device_id* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strscpy(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = call i32 @msp_reset(%struct.i2c_client* %26)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* @msp_debug, align 4
  %33 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %31, i32 1, i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %453

36:                                               ; preds = %25
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.msp_state* @devm_kzalloc(i32* %38, i32 160, i32 %39)
  store %struct.msp_state* %40, %struct.msp_state** %6, align 8
  %41 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %42 = icmp ne %struct.msp_state* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %453

46:                                               ; preds = %36
  %47 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %48 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %47, i32 0, i32 31
  store %struct.v4l2_subdev* %48, %struct.v4l2_subdev** %7, align 8
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %49, %struct.i2c_client* %50, i32* @msp_ops)
  %52 = load i32, i32* @V4L2_STD_NTSC, align 4
  %53 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %54 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %53, i32 0, i32 29
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @V4L2_STD_ALL, align 4
  %56 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %57 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %56, i32 0, i32 28
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %59 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %60 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %59, i32 0, i32 27
  store i32 %58, i32* %60, align 8
  %61 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %62 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  %63 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %64 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %63, i32 0, i32 26
  store i64 0, i64* %64, align 8
  %65 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %66 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %65, i32 0, i32 25
  %67 = call i32 @init_waitqueue_head(i32* %66)
  %68 = load i32, i32* @MSP_INPUT_DEFAULT, align 4
  %69 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %70 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %69, i32 0, i32 24
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @MSP_OUTPUT_DEFAULT, align 4
  %72 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %73 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %72, i32 0, i32 23
  store i32 %71, i32* %73, align 4
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = call i8* @msp_read_dsp(%struct.i2c_client* %74, i32 30)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %78 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %80 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %89

83:                                               ; preds = %46
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = call i8* @msp_read_dsp(%struct.i2c_client* %84, i32 31)
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %88 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %83, %46
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i32, i32* @msp_debug, align 4
  %93 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %94 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %97 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %91, i32 1, i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %98)
  %100 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %101 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %114, label %104

104:                                              ; preds = %89
  %105 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %106 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %111 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109, %89
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load i32, i32* @msp_debug, align 4
  %118 = call i32 (i32*, i32, i32, i8*, ...) @dev_dbg_lvl(i32* %116, i32 1, i32 %117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %453

121:                                              ; preds = %109, %104
  %122 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %123 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 4
  %126 = and i32 %125, 15
  %127 = add nsw i32 %126, 3
  store i32 %127, i32* %11, align 4
  %128 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %129 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = ashr i32 %130, 8
  %132 = and i32 %131, 255
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = sdiv i32 %133, 10
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = srem i32 %135, 10
  store i32 %136, i32* %15, align 4
  %137 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %138 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 15
  %141 = add nsw i32 %140, 64
  store i32 %141, i32* %12, align 4
  %142 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %143 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 8
  %146 = and i32 %145, 255
  %147 = add nsw i32 %146, 64
  store i32 %147, i32* %10, align 4
  %148 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %149 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, 31
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %11, align 4
  %153 = mul nsw i32 %152, 10000
  %154 = add nsw i32 %153, 4000
  %155 = load i32, i32* %13, align 4
  %156 = mul nsw i32 %155, 10
  %157 = add nsw i32 %154, %156
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %157, %158
  %160 = sub nsw i32 %159, 64
  %161 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %162 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %168, label %165

165:                                              ; preds = %121
  %166 = load i32, i32* %14, align 4
  %167 = icmp eq i32 %166, 5
  br label %168

168:                                              ; preds = %165, %121
  %169 = phi i1 [ true, %121 ], [ %167, %165 ]
  %170 = zext i1 %169 to i32
  %171 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %172 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %12, align 4
  %174 = icmp sge i32 %173, 71
  %175 = zext i1 %174 to i32
  %176 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %177 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp slt i32 %178, 5
  %180 = zext i1 %179 to i32
  %181 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %182 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  %183 = load i32, i32* %11, align 4
  %184 = icmp sge i32 %183, 4
  br i1 %184, label %188, label %185

185:                                              ; preds = %168
  %186 = load i32, i32* %15, align 4
  %187 = icmp slt i32 %186, 7
  br label %188

188:                                              ; preds = %185, %168
  %189 = phi i1 [ true, %168 ], [ %187, %185 ]
  %190 = zext i1 %189 to i32
  %191 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %192 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %191, i32 0, i32 7
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp sge i32 %193, 4
  br i1 %194, label %198, label %195

195:                                              ; preds = %188
  %196 = load i32, i32* %15, align 4
  %197 = icmp slt i32 %196, 5
  br label %198

198:                                              ; preds = %195, %188
  %199 = phi i1 [ true, %188 ], [ %197, %195 ]
  %200 = zext i1 %199 to i32
  %201 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %202 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %201, i32 0, i32 8
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %11, align 4
  %204 = icmp sge i32 %203, 4
  br i1 %204, label %213, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %12, align 4
  %207 = icmp sge i32 %206, 68
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32, i32* %15, align 4
  %210 = icmp slt i32 %209, 5
  br label %211

211:                                              ; preds = %208, %205
  %212 = phi i1 [ false, %205 ], [ %210, %208 ]
  br label %213

213:                                              ; preds = %211, %198
  %214 = phi i1 [ true, %198 ], [ %212, %211 ]
  %215 = zext i1 %214 to i32
  %216 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %217 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %216, i32 0, i32 9
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp sge i32 %218, 4
  br i1 %219, label %223, label %220

220:                                              ; preds = %213
  %221 = load i32, i32* %15, align 4
  %222 = icmp slt i32 %221, 5
  br label %223

223:                                              ; preds = %220, %213
  %224 = phi i1 [ true, %213 ], [ %222, %220 ]
  %225 = zext i1 %224 to i32
  %226 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %227 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %226, i32 0, i32 10
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* %12, align 4
  %229 = icmp sgt i32 %228, 67
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %232 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %231, i32 0, i32 10
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br label %235

235:                                              ; preds = %230, %223
  %236 = phi i1 [ false, %223 ], [ %234, %230 ]
  %237 = zext i1 %236 to i32
  %238 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %239 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %238, i32 0, i32 11
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp sge i32 %240, 71
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load i32, i32* %15, align 4
  %244 = icmp slt i32 %243, 7
  br label %245

245:                                              ; preds = %242, %235
  %246 = phi i1 [ false, %235 ], [ %244, %242 ]
  %247 = zext i1 %246 to i32
  %248 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %249 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %248, i32 0, i32 12
  store i32 %247, i32* %249, align 8
  %250 = load i32, i32* %12, align 4
  %251 = icmp sge i32 %250, 68
  br i1 %251, label %252, label %255

252:                                              ; preds = %245
  %253 = load i32, i32* %15, align 4
  %254 = icmp slt i32 %253, 5
  br label %255

255:                                              ; preds = %252, %245
  %256 = phi i1 [ false, %245 ], [ %254, %252 ]
  %257 = zext i1 %256 to i32
  %258 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %259 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %258, i32 0, i32 13
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %15, align 4
  %261 = icmp slt i32 %260, 7
  %262 = zext i1 %261 to i32
  %263 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %264 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %263, i32 0, i32 14
  store i32 %262, i32* %264, align 8
  %265 = load i32, i32* %12, align 4
  %266 = icmp eq i32 %265, 71
  br i1 %266, label %267, label %270

267:                                              ; preds = %255
  %268 = load i32, i32* %15, align 4
  %269 = icmp eq i32 %268, 1
  br label %270

270:                                              ; preds = %267, %255
  %271 = phi i1 [ false, %255 ], [ %269, %267 ]
  %272 = zext i1 %271 to i32
  %273 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %274 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %273, i32 0, i32 15
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %12, align 4
  %276 = icmp eq i32 %275, 71
  br i1 %276, label %277, label %280

277:                                              ; preds = %270
  %278 = load i32, i32* %15, align 4
  %279 = icmp eq i32 %278, 2
  br label %280

280:                                              ; preds = %277, %270
  %281 = phi i1 [ false, %270 ], [ %279, %277 ]
  %282 = zext i1 %281 to i32
  %283 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %284 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %283, i32 0, i32 16
  store i32 %282, i32* %284, align 8
  %285 = load i32, i32* %11, align 4
  %286 = icmp eq i32 %285, 3
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load i32, i32* %12, align 4
  %289 = icmp eq i32 %288, 71
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load i32, i32* %14, align 4
  %292 = icmp eq i32 %291, 3
  br label %293

293:                                              ; preds = %290, %287, %280
  %294 = phi i1 [ false, %287 ], [ false, %280 ], [ %292, %290 ]
  %295 = zext i1 %294 to i32
  %296 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %297 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %296, i32 0, i32 17
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* @opmode, align 4
  %299 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %300 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %299, i32 0, i32 18
  store i32 %298, i32* %300, align 8
  %301 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %302 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %301, i32 0, i32 18
  %303 = load i32, i32* %302, align 8
  %304 = icmp slt i32 %303, 128
  br i1 %304, label %310, label %305

305:                                              ; preds = %293
  %306 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %307 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %306, i32 0, i32 18
  %308 = load i32, i32* %307, align 8
  %309 = icmp sgt i32 %308, 129
  br i1 %309, label %310, label %327

310:                                              ; preds = %305, %293
  %311 = load i32, i32* %12, align 4
  %312 = icmp sge i32 %311, 71
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %315 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %314, i32 0, i32 18
  store i32 129, i32* %315, align 8
  br label %326

316:                                              ; preds = %310
  %317 = load i32, i32* %12, align 4
  %318 = icmp sge i32 %317, 68
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %321 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %320, i32 0, i32 18
  store i32 130, i32* %321, align 8
  br label %325

322:                                              ; preds = %316
  %323 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %324 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %323, i32 0, i32 18
  store i32 128, i32* %324, align 8
  br label %325

325:                                              ; preds = %322, %319
  br label %326

326:                                              ; preds = %325, %313
  br label %327

327:                                              ; preds = %326, %305
  %328 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %329 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %328, i32 0, i32 22
  store %struct.v4l2_ctrl_handler* %329, %struct.v4l2_ctrl_handler** %8, align 8
  %330 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %331 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %330, i32 6)
  %332 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %333 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %332, i32 0, i32 14
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %346

336:                                              ; preds = %327
  %337 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %338 = load i32, i32* @V4L2_CID_AUDIO_BASS, align 4
  %339 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %337, i32* @msp_ctrl_ops, i32 %338, i32 0, i32 65535, i32 655, i32 32768)
  %340 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %341 = load i32, i32* @V4L2_CID_AUDIO_TREBLE, align 4
  %342 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %340, i32* @msp_ctrl_ops, i32 %341, i32 0, i32 65535, i32 655, i32 32768)
  %343 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %344 = load i32, i32* @V4L2_CID_AUDIO_LOUDNESS, align 4
  %345 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %343, i32* @msp_ctrl_ops, i32 %344, i32 0, i32 1, i32 1, i32 0)
  br label %346

346:                                              ; preds = %336, %327
  %347 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %348 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %349 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %347, i32* @msp_ctrl_ops, i32 %348, i32 0, i32 65535, i32 655, i32 58880)
  %350 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %351 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %350, i32 0, i32 20
  store i8* %349, i8** %351, align 8
  %352 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %353 = load i32, i32* @V4L2_CID_AUDIO_BALANCE, align 4
  %354 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %352, i32* @msp_ctrl_ops, i32 %353, i32 0, i32 65535, i32 655, i32 32768)
  %355 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %356 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %357 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %355, i32* @msp_ctrl_ops, i32 %356, i32 0, i32 1, i32 1, i32 0)
  %358 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %359 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %358, i32 0, i32 21
  store i8* %357, i8** %359, align 8
  %360 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %361 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %362 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %361, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %360, %struct.v4l2_ctrl_handler** %362, align 8
  %363 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %364 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %346
  %368 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %369 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %17, align 4
  %371 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %372 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %371)
  %373 = load i32, i32* %17, align 4
  store i32 %373, i32* %3, align 4
  br label %453

374:                                              ; preds = %346
  %375 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %376 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %375, i32 0, i32 20
  %377 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %376)
  %378 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %379 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %378)
  %380 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %381 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %380, i32 0, i32 0
  %382 = load i32, i32* %11, align 4
  %383 = load i32, i32* %13, align 4
  %384 = load i32, i32* %12, align 4
  %385 = load i32, i32* %10, align 4
  %386 = load i32, i32* %16, align 4
  %387 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %388 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %387, i32 0, i32 1
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %393 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  %395 = icmp ne i32 %394, 0
  %396 = zext i1 %395 to i64
  %397 = select i1 %395, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %398 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %399 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 8
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %374
  %403 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %404 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br label %407

407:                                              ; preds = %402, %374
  %408 = phi i1 [ false, %374 ], [ %406, %402 ]
  %409 = zext i1 %408 to i64
  %410 = select i1 %408, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %411 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %412 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %411, i32 0, i32 5
  %413 = load i32, i32* %412, align 4
  %414 = icmp ne i32 %413, 0
  %415 = zext i1 %414 to i64
  %416 = select i1 %414, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %417 = load i32*, i32** @opmode_str, align 8
  %418 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %419 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %418, i32 0, i32 18
  %420 = load i32, i32* %419, align 8
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %417, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = call i32 @dev_info(i32* %381, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %391, i8* %397, i8* %410, i8* %416, i32 %423)
  %425 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %426 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %425, i32 0, i32 18
  %427 = load i32, i32* %426, align 8
  switch i32 %427, label %431 [
    i32 128, label %428
    i32 130, label %429
    i32 129, label %430
  ]

428:                                              ; preds = %407
  store i32 (i8*)* @msp3400c_thread, i32 (i8*)** %9, align 8
  br label %431

429:                                              ; preds = %407
  store i32 (i8*)* @msp3410d_thread, i32 (i8*)** %9, align 8
  br label %431

430:                                              ; preds = %407
  store i32 (i8*)* @msp34xxg_thread, i32 (i8*)** %9, align 8
  br label %431

431:                                              ; preds = %407, %430, %429, %428
  %432 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %433 = icmp ne i32 (i8*)* %432, null
  br i1 %433, label %434, label %452

434:                                              ; preds = %431
  %435 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %436 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %437 = call i32 @kthread_run(i32 (i8*)* %435, %struct.i2c_client* %436, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %438 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %439 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %438, i32 0, i32 19
  store i32 %437, i32* %439, align 4
  %440 = load %struct.msp_state*, %struct.msp_state** %6, align 8
  %441 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %440, i32 0, i32 19
  %442 = load i32, i32* %441, align 4
  %443 = call i64 @IS_ERR(i32 %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %434
  %446 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %447 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %446, i32 0, i32 0
  %448 = call i32 @dev_warn(i32* %447, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %449

449:                                              ; preds = %445, %434
  %450 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %451 = call i32 @msp_wake_thread(%struct.i2c_client* %450)
  br label %452

452:                                              ; preds = %449, %431
  store i32 0, i32* %3, align 4
  br label %453

453:                                              ; preds = %452, %367, %114, %43, %29
  %454 = load i32, i32* %3, align 4
  ret i32 %454
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @msp_reset(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg_lvl(i32*, i32, i32, i8*, ...) #1

declare dso_local %struct.msp_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @msp_read_dsp(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @msp3400c_thread(i8*) #1

declare dso_local i32 @msp3410d_thread(i8*) #1

declare dso_local i32 @msp34xxg_thread(i8*) #1

declare dso_local i32 @kthread_run(i32 (i8*)*, %struct.i2c_client*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @msp_wake_thread(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
