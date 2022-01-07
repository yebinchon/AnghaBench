; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa717x.c_saa717x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.saa717x_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_subdev = type { %struct.v4l2_ctrl_handler* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@saa717x_ops = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"saa717x not found (id=%02x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"saa7173\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"saa7174A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"saa7174HL\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"saa7171\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s found @ 0x%x (%s)\0A\00", align 1
@saa717x_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BASS = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_TREBLE = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@TUNER_AUDIO_STEREO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"writing init values\0A\00", align 1
@reg_init_initialize = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @saa717x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa717x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.saa717x_state*, align 8
  %7 = alloca %struct.v4l2_ctrl_handler*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %181

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.saa717x_state* @devm_kzalloc(i32* %23, i32 56, i32 %24)
  store %struct.saa717x_state* %25, %struct.saa717x_state** %6, align 8
  %26 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %27 = icmp eq %struct.saa717x_state* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %181

31:                                               ; preds = %21
  %32 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %33 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %32, i32 0, i32 10
  store %struct.v4l2_subdev* %33, %struct.v4l2_subdev** %8, align 8
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %34, %struct.i2c_client* %35, i32* @saa717x_ops)
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %38 = call i64 @saa717x_write(%struct.v4l2_subdev* %37, i32 1444, i32 254)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %42 = call i64 @saa717x_write(%struct.v4l2_subdev* %41, i32 1445, i32 15)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %46 = call i64 @saa717x_write(%struct.v4l2_subdev* %45, i32 1446, i32 0)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %50 = call i64 @saa717x_write(%struct.v4l2_subdev* %49, i32 1447, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %54 = call i32 @saa717x_read(%struct.v4l2_subdev* %53, i32 1440)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %48, %44, %40, %31
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 194
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 50
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 242
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 108
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* @debug, align 4
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %68, %struct.v4l2_subdev* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %181

74:                                               ; preds = %64, %61, %58, %55
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 194
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %89

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 50
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %88

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 108
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %87

86:                                               ; preds = %82
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %87

87:                                               ; preds = %86, %85
  br label %88

88:                                               ; preds = %87, %81
  br label %89

89:                                               ; preds = %88, %77
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = shl i32 %94, 1
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @v4l2_info(%struct.v4l2_subdev* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %91, i32 %95, i32 %100)
  %102 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %103 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %102, i32 0, i32 9
  store %struct.v4l2_ctrl_handler* %103, %struct.v4l2_ctrl_handler** %7, align 8
  %104 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %105 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %104, i32 9)
  %106 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %107 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %108 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %106, i32* @saa717x_ctrl_ops, i32 %107, i32 0, i32 255, i32 1, i32 128)
  %109 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %110 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %111 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %109, i32* @saa717x_ctrl_ops, i32 %110, i32 0, i32 255, i32 1, i32 68)
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %113 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %114 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %112, i32* @saa717x_ctrl_ops, i32 %113, i32 0, i32 255, i32 1, i32 64)
  %115 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %116 = load i32, i32* @V4L2_CID_HUE, align 4
  %117 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %115, i32* @saa717x_ctrl_ops, i32 %116, i32 -128, i32 127, i32 1, i32 0)
  %118 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %119 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %120 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %118, i32* @saa717x_ctrl_ops, i32 %119, i32 0, i32 65535, i32 655, i32 42000)
  %121 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %122 = load i32, i32* @V4L2_CID_AUDIO_BALANCE, align 4
  %123 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %121, i32* @saa717x_ctrl_ops, i32 %122, i32 0, i32 65535, i32 655, i32 32768)
  %124 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %125 = load i32, i32* @V4L2_CID_AUDIO_BASS, align 4
  %126 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %124, i32* @saa717x_ctrl_ops, i32 %125, i32 -16, i32 15, i32 1, i32 0)
  %127 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %128 = load i32, i32* @V4L2_CID_AUDIO_TREBLE, align 4
  %129 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %127, i32* @saa717x_ctrl_ops, i32 %128, i32 -16, i32 15, i32 1, i32 0)
  %130 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %131 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %132 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %130, i32* @saa717x_ctrl_ops, i32 %131, i32 0, i32 1, i32 1, i32 0)
  %133 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %135 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %134, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %133, %struct.v4l2_ctrl_handler** %135, align 8
  %136 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %89
  %141 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %142 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %11, align 4
  %144 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %145 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %144)
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %3, align 4
  br label %181

147:                                              ; preds = %89
  %148 = load i32, i32* @V4L2_STD_NTSC, align 4
  %149 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %150 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 8
  %151 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %152 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %151, i32 0, i32 0
  store i32 -1, i32* %152, align 8
  %153 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %154 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %156 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %155, i32 0, i32 7
  store i64 0, i64* %156, align 8
  %157 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %158 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %157, i32 0, i32 2
  store i32 1, i32* %158, align 8
  %159 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %160 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %159, i32 0, i32 3
  store i32 2, i32* %160, align 4
  %161 = load i32, i32* @TUNER_AUDIO_STEREO, align 4
  %162 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %163 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 8
  %164 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %165 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %164, i32 0, i32 4
  store i32 6, i32* %165, align 8
  %166 = load %struct.saa717x_state*, %struct.saa717x_state** %6, align 8
  %167 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %166, i32 0, i32 5
  store i32 6, i32* %167, align 4
  %168 = load i32, i32* @debug, align 4
  %169 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %170 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %168, %struct.v4l2_subdev* %169, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %171 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %172 = load i32, i32* @reg_init_initialize, align 4
  %173 = call i32 @saa717x_write_regs(%struct.v4l2_subdev* %171, i32 %172)
  %174 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %7, align 8
  %175 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %174)
  %176 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %177 = call i32 @set_current_state(i32 %176)
  %178 = load i32, i32* @HZ, align 4
  %179 = mul nsw i32 2, %178
  %180 = call i32 @schedule_timeout(i32 %179)
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %147, %140, %67, %28, %18
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #1

declare dso_local %struct.saa717x_state* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #1

declare dso_local i64 @saa717x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa717x_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @saa717x_write_regs(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
