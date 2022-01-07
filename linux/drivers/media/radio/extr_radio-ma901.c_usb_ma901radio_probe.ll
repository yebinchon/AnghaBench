; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-ma901.c_usb_ma901radio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-ma901.c_usb_ma901radio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i64, i64 }
%struct.ma901radio_device = type { double, %struct.ma901radio_device*, %struct.TYPE_10__, %struct.TYPE_11__, %struct.TYPE_9__, %struct.usb_interface*, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, i32, i32*, i32*, %struct.TYPE_10__*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"MA901\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"www.masterkit.ru\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"kzalloc for ma901radio_device failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"kmalloc for radio->buffer failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@usb_ma901radio_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@MA901_VOLUME_MIN = common dso_local global i32 0, align 4
@MA901_VOLUME_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"couldn't register control\0A\00", align 1
@usb_ma901radio_release = common dso_local global i32 0, align 4
@usb_ma901radio_fops = common dso_local global i32 0, align 4
@usb_ma901radio_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global double 0.000000e+00, align 8
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@radio_nr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"could not register video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_ma901radio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_ma901radio_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.ma901radio_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = call i8* @interface_to_usbdev(%struct.usb_interface* %9)
  %11 = bitcast i8* %10 to %struct.usb_device*
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @strncmp(i64 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @strncmp(i64 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %196

36:                                               ; preds = %27, %16, %2
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.ma901radio_device* @kzalloc(i32 120, i32 %37)
  store %struct.ma901radio_device* %38, %struct.ma901radio_device** %7, align 8
  %39 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %40 = icmp ne %struct.ma901radio_device* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %194

47:                                               ; preds = %36
  %48 = load i32, i32* @BUFFER_LENGTH, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.ma901radio_device* @kmalloc(i32 %48, i32 %49)
  %51 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %52 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %51, i32 0, i32 1
  store %struct.ma901radio_device* %50, %struct.ma901radio_device** %52, align 8
  %53 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %54 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %53, i32 0, i32 1
  %55 = load %struct.ma901radio_device*, %struct.ma901radio_device** %54, align 8
  %56 = icmp ne %struct.ma901radio_device* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %47
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %191

63:                                               ; preds = %47
  %64 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 0
  %66 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %67 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %66, i32 0, i32 2
  %68 = call i32 @v4l2_device_register(i32* %65, %struct.TYPE_10__* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %73 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %72, i32 0, i32 0
  %74 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %186

75:                                               ; preds = %63
  %76 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %77 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %76, i32 0, i32 3
  %78 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_11__* %77, i32 1)
  %79 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %80 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %79, i32 0, i32 3
  %81 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %82 = load i32, i32* @MA901_VOLUME_MIN, align 4
  %83 = load i32, i32* @MA901_VOLUME_MAX, align 4
  %84 = load i32, i32* @MA901_VOLUME_MAX, align 4
  %85 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_11__* %80, i32* @usb_ma901radio_ctrl_ops, i32 %81, i32 %82, i32 %83, i32 1, i32 %84)
  %86 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %87 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %75
  %92 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %93 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %8, align 4
  %96 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %96, i32 0, i32 0
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %182

99:                                               ; preds = %75
  %100 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %101 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %100, i32 0, i32 7
  %102 = call i32 @mutex_init(i32* %101)
  %103 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %104 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %103, i32 0, i32 3
  %105 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %106 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %107, align 8
  %108 = load i32, i32* @usb_ma901radio_release, align 4
  %109 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %110 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %113 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %117 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @strscpy(i32 %115, i32 %119, i32 4)
  %121 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %122 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %121, i32 0, i32 2
  %123 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %124 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %125, align 8
  %126 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %127 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 4
  store i32* @usb_ma901radio_fops, i32** %128, align 8
  %129 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %130 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  store i32* @usb_ma901radio_ioctl_ops, i32** %131, align 8
  %132 = load i32, i32* @video_device_release_empty, align 4
  %133 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %134 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 8
  %136 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %137 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %136, i32 0, i32 7
  %138 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %139 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i32* %137, i32** %140, align 8
  %141 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %142 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %145 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %148 = call i8* @interface_to_usbdev(%struct.usb_interface* %147)
  %149 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %150 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %149, i32 0, i32 6
  store i8* %148, i8** %150, align 8
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %153 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %152, i32 0, i32 5
  store %struct.usb_interface* %151, %struct.usb_interface** %153, align 8
  %154 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %155 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %156 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %155, i32 0, i32 2
  %157 = call i32 @usb_set_intfdata(%struct.usb_interface* %154, %struct.TYPE_10__* %156)
  %158 = load double, double* @FREQ_MUL, align 8
  %159 = fmul double 0x4057CD70A3D70A3D, %158
  %160 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %161 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %160, i32 0, i32 0
  store double %159, double* %161, align 8
  %162 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %163 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %162, i32 0, i32 4
  %164 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %165 = call i32 @video_set_drvdata(%struct.TYPE_9__* %163, %struct.ma901radio_device* %164)
  %166 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %167 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %166, i32 0, i32 4
  %168 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %169 = load i32, i32* @radio_nr, align 4
  %170 = call i32 @video_register_device(%struct.TYPE_9__* %167, i32 %168, i32 %169)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %99
  %174 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %175 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %174, i32 0, i32 0
  %176 = call i32 @dev_err(i32* %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %178

177:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %196

178:                                              ; preds = %173
  %179 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %180 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %179, i32 0, i32 3
  %181 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_11__* %180)
  br label %182

182:                                              ; preds = %178, %91
  %183 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %184 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %183, i32 0, i32 2
  %185 = call i32 @v4l2_device_unregister(%struct.TYPE_10__* %184)
  br label %186

186:                                              ; preds = %182, %71
  %187 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %188 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %187, i32 0, i32 1
  %189 = load %struct.ma901radio_device*, %struct.ma901radio_device** %188, align 8
  %190 = call i32 @kfree(%struct.ma901radio_device* %189)
  br label %191

191:                                              ; preds = %186, %57
  %192 = load %struct.ma901radio_device*, %struct.ma901radio_device** %7, align 8
  %193 = call i32 @kfree(%struct.ma901radio_device* %192)
  br label %194

194:                                              ; preds = %191, %41
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %194, %177, %33
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i8* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local %struct.ma901radio_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ma901radio_device* @kmalloc(i32, i32) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.TYPE_10__*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_9__*, %struct.ma901radio_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_11__*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree(%struct.ma901radio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
