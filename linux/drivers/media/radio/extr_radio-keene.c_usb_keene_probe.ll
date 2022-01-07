; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-keene.c_usb_keene_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-keene.c_usb_keene_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i64 }
%struct.keene_device = type { i32, i32, i32, %struct.keene_device*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.usb_interface*, i8*, i32, %struct.v4l2_ctrl_handler }
%struct.TYPE_8__ = type { i32, i32, %struct.v4l2_ctrl_handler* }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_8__*, i32 }
%struct.v4l2_ctrl_handler = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"B-LINK USB Audio  \00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"kmalloc for keene_device failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@keene_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_PREEMPHASIS = common dso_local global i32 0, align 4
@V4L2_PREEMPHASIS_75_uS = common dso_local global i32 0, align 4
@V4L2_PREEMPHASIS_50_uS = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_POWER_LEVEL = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_GAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@usb_keene_video_device_release = common dso_local global i32 0, align 4
@usb_keene_fops = common dso_local global i32 0, align 4
@usb_keene_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@VFL_DIR_TX = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_MODULATOR = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global double 0.000000e+00, align 8
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"could not register video device\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"V4L2 device registered as %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_keene_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_keene_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.keene_device*, align 8
  %8 = alloca %struct.v4l2_ctrl_handler*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call i8* @interface_to_usbdev(%struct.usb_interface* %10)
  %12 = bitcast i8* %11 to %struct.usb_device*
  store %struct.usb_device* %12, %struct.usb_device** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @strcmp(i64 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %203

26:                                               ; preds = %17, %2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.keene_device* @kzalloc(i32 120, i32 %27)
  store %struct.keene_device* %28, %struct.keene_device** %7, align 8
  %29 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %30 = icmp ne %struct.keene_device* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @BUFFER_LENGTH, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.keene_device* @kmalloc(i32 %32, i32 %33)
  %35 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %36 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %35, i32 0, i32 3
  store %struct.keene_device* %34, %struct.keene_device** %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %39 = icmp ne %struct.keene_device* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %42 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %41, i32 0, i32 3
  %43 = load %struct.keene_device*, %struct.keene_device** %42, align 8
  %44 = icmp ne %struct.keene_device* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %47 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %50 = call i32 @kfree(%struct.keene_device* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %201

53:                                               ; preds = %40
  %54 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %55 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %54, i32 0, i32 9
  store %struct.v4l2_ctrl_handler* %55, %struct.v4l2_ctrl_handler** %8, align 8
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %57 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %56, i32 4)
  %58 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %59 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %60 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %58, i32* @keene_ctrl_ops, i32 %59, i32 0, i32 1, i32 1, i32 0)
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %62 = load i32, i32* @V4L2_CID_TUNE_PREEMPHASIS, align 4
  %63 = load i32, i32* @V4L2_PREEMPHASIS_75_uS, align 4
  %64 = load i32, i32* @V4L2_PREEMPHASIS_50_uS, align 4
  %65 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %61, i32* @keene_ctrl_ops, i32 %62, i32 %63, i32 1, i32 %64)
  %66 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %67 = load i32, i32* @V4L2_CID_TUNE_POWER_LEVEL, align 4
  %68 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %66, i32* @keene_ctrl_ops, i32 %67, i32 84, i32 118, i32 1, i32 118)
  %69 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %70 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_GAIN, align 4
  %71 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %69, i32* @keene_ctrl_ops, i32 %70, i32 -15, i32 18, i32 3, i32 0)
  %72 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %73 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %72, i32 0, i32 0
  store i32 118, i32* %73, align 8
  %74 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %75 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %74, i32 0, i32 1
  store i32 50, i32* %75, align 4
  %76 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %77 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %79 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %53
  %83 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %84 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %87 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %86)
  br label %194

88:                                               ; preds = %53
  %89 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %90 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %89, i32 0, i32 0
  %91 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %92 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %91, i32 0, i32 4
  %93 = call i32 @v4l2_device_register(i32* %90, %struct.TYPE_8__* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %98 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %194

100:                                              ; preds = %88
  %101 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %102 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %101, i32 0, i32 8
  %103 = call i32 @mutex_init(i32* %102)
  %104 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %105 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %106 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store %struct.v4l2_ctrl_handler* %104, %struct.v4l2_ctrl_handler** %107, align 8
  %108 = load i32, i32* @usb_keene_video_device_release, align 4
  %109 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %110 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %113 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %117 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @strscpy(i32 %115, i32 %119, i32 4)
  %121 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %122 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %121, i32 0, i32 4
  %123 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %124 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 6
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %125, align 8
  %126 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %127 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 5
  store i32* @usb_keene_fops, i32** %128, align 8
  %129 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %130 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  store i32* @usb_keene_ioctl_ops, i32** %131, align 8
  %132 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %133 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %132, i32 0, i32 8
  %134 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %135 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  store i32* %133, i32** %136, align 8
  %137 = load i32, i32* @video_device_release_empty, align 4
  %138 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %139 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* @VFL_DIR_TX, align 4
  %142 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %143 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %146 = load i32, i32* @V4L2_CAP_MODULATOR, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %149 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = call i8* @interface_to_usbdev(%struct.usb_interface* %151)
  %153 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %154 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %153, i32 0, i32 7
  store i8* %152, i8** %154, align 8
  %155 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %156 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %157 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %156, i32 0, i32 6
  store %struct.usb_interface* %155, %struct.usb_interface** %157, align 8
  %158 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %159 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %160 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %159, i32 0, i32 4
  %161 = call i32 @usb_set_intfdata(%struct.usb_interface* %158, %struct.TYPE_8__* %160)
  %162 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %163 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %162, i32 0, i32 5
  %164 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %165 = call i32 @video_set_drvdata(%struct.TYPE_7__* %163, %struct.keene_device* %164)
  %166 = call i32 @msleep(i32 20)
  %167 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %168 = load double, double* @FREQ_MUL, align 8
  %169 = fmul double 0x4057CA3D70A3D70A, %168
  %170 = call i32 @keene_cmd_main(%struct.keene_device* %167, double %169, i32 0)
  %171 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %172 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %171, i32 0, i32 5
  %173 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %174 = call i32 @video_register_device(%struct.TYPE_7__* %172, i32 %173, i32 -1)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %100
  %178 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %179 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %178, i32 0, i32 0
  %180 = call i32 @dev_err(i32* %179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %190

181:                                              ; preds = %100
  %182 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %8, align 8
  %183 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %182)
  %184 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %185 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %184, i32 0, i32 0
  %186 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %187 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %186, i32 0, i32 5
  %188 = call i32 @video_device_node_name(%struct.TYPE_7__* %187)
  %189 = call i32 @dev_info(i32* %185, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  store i32 0, i32* %3, align 4
  br label %203

190:                                              ; preds = %177
  %191 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %192 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %191, i32 0, i32 4
  %193 = call i32 @v4l2_device_unregister(%struct.TYPE_8__* %192)
  br label %194

194:                                              ; preds = %190, %96, %82
  %195 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %196 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %195, i32 0, i32 3
  %197 = load %struct.keene_device*, %struct.keene_device** %196, align 8
  %198 = call i32 @kfree(%struct.keene_device* %197)
  %199 = load %struct.keene_device*, %struct.keene_device** %7, align 8
  %200 = call i32 @kfree(%struct.keene_device* %199)
  br label %201

201:                                              ; preds = %194, %45
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %201, %181, %23
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i8* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local %struct.keene_device* @kzalloc(i32, i32) #1

declare dso_local %struct.keene_device* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.keene_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.TYPE_8__*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_7__*, %struct.keene_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @keene_cmd_main(%struct.keene_device*, double, i32) #1

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
