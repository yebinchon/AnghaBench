; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_usb_si4713_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_usb_si4713_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32, i32 }
%struct.si4713_usb_device = type { %struct.si4713_usb_device*, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.v4l2_subdev*, %struct.i2c_adapter, %struct.usb_interface*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_9__*, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_adapter = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Si4713 development board discovered: (%04X:%04X)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"kmalloc for si4713_usb_device failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"couldn't register v4l2_device\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not register i2c device\0A\00", align 1
@si4713_board_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot get v4l2 subdevice\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@usb_si4713_video_device_release = common dso_local global i32 0, align 4
@usb_si4713_fops = common dso_local global i32 0, align 4
@usb_si4713_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@VFL_DIR_TX = common dso_local global i32 0, align 4
@V4L2_CAP_MODULATOR = common dso_local global i32 0, align 4
@V4L2_CAP_RDS_OUTPUT = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"could not register video device\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"V4L2 device registered as %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @usb_si4713_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_si4713_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.si4713_usb_device*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %18 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.si4713_usb_device* @kzalloc(i32 112, i32 %21)
  store %struct.si4713_usb_device* %22, %struct.si4713_usb_device** %6, align 8
  %23 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %24 = icmp ne %struct.si4713_usb_device* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @BUFFER_LENGTH, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.si4713_usb_device* @kmalloc(i32 %26, i32 %27)
  %29 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %30 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %29, i32 0, i32 0
  store %struct.si4713_usb_device* %28, %struct.si4713_usb_device** %30, align 8
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %33 = icmp ne %struct.si4713_usb_device* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %36 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %35, i32 0, i32 0
  %37 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %36, align 8
  %38 = icmp ne %struct.si4713_usb_device* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %44 = call i32 @kfree(%struct.si4713_usb_device* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %192

47:                                               ; preds = %34
  %48 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %49 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %48, i32 0, i32 3
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %52 = call i32 @interface_to_usbdev(%struct.usb_interface* %51)
  %53 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %54 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %57 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %56, i32 0, i32 6
  store %struct.usb_interface* %55, %struct.usb_interface** %57, align 8
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %60 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %59, i32 0, i32 1
  %61 = call i32 @usb_set_intfdata(%struct.usb_interface* %58, %struct.TYPE_9__* %60)
  %62 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %63 = call i32 @si4713_start_seq(%struct.si4713_usb_device* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  br label %184

67:                                               ; preds = %47
  %68 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %69 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %68, i32 0, i32 0
  %70 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %71 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %70, i32 0, i32 1
  %72 = call i32 @v4l2_device_register(i32* %69, %struct.TYPE_9__* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %184

79:                                               ; preds = %67
  %80 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %81 = call i32 @si4713_register_i2c_adapter(%struct.si4713_usb_device* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %86 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %85, i32 0, i32 0
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %180

88:                                               ; preds = %79
  %89 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %90 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %89, i32 0, i32 5
  store %struct.i2c_adapter* %90, %struct.i2c_adapter** %7, align 8
  %91 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %92 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %91, i32 0, i32 1
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %94 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(%struct.TYPE_9__* %92, %struct.i2c_adapter* %93, i32* @si4713_board_info, i32* null)
  store %struct.v4l2_subdev* %94, %struct.v4l2_subdev** %8, align 8
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %96 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %97 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %96, i32 0, i32 4
  store %struct.v4l2_subdev* %95, %struct.v4l2_subdev** %97, align 8
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %99 = icmp ne %struct.v4l2_subdev* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %88
  %101 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %102 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %101, i32 0, i32 0
  %103 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %9, align 4
  br label %177

106:                                              ; preds = %88
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %108 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %111 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 8
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @usb_si4713_video_device_release, align 4
  %114 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %115 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %118 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %122 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @strscpy(i32 %120, i32 %124, i32 4)
  %126 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %127 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %126, i32 0, i32 1
  %128 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %129 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 6
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %130, align 8
  %131 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %132 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  store i32* @usb_si4713_fops, i32** %133, align 8
  %134 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %135 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 4
  store i32* @usb_si4713_ioctl_ops, i32** %136, align 8
  %137 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %138 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %137, i32 0, i32 3
  %139 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %140 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  store i32* %138, i32** %141, align 8
  %142 = load i32, i32* @video_device_release_empty, align 4
  %143 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %144 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* @VFL_DIR_TX, align 4
  %147 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %148 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* @V4L2_CAP_MODULATOR, align 4
  %151 = load i32, i32* @V4L2_CAP_RDS_OUTPUT, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %154 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %157 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %156, i32 0, i32 2
  %158 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %159 = call i32 @video_set_drvdata(%struct.TYPE_8__* %157, %struct.si4713_usb_device* %158)
  %160 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %161 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %160, i32 0, i32 2
  %162 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %163 = call i32 @video_register_device(%struct.TYPE_8__* %161, i32 %162, i32 -1)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %106
  %167 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %168 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %167, i32 0, i32 0
  %169 = call i32 @dev_err(i32* %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %177

170:                                              ; preds = %106
  %171 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %172 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %171, i32 0, i32 0
  %173 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %174 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %173, i32 0, i32 2
  %175 = call i32 @video_device_node_name(%struct.TYPE_8__* %174)
  %176 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  store i32 0, i32* %3, align 4
  br label %192

177:                                              ; preds = %166, %100
  %178 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %179 = call i32 @i2c_del_adapter(%struct.i2c_adapter* %178)
  br label %180

180:                                              ; preds = %177, %84
  %181 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %182 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %181, i32 0, i32 1
  %183 = call i32 @v4l2_device_unregister(%struct.TYPE_9__* %182)
  br label %184

184:                                              ; preds = %180, %75, %66
  %185 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %186 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %185, i32 0, i32 0
  %187 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %186, align 8
  %188 = call i32 @kfree(%struct.si4713_usb_device* %187)
  %189 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %6, align 8
  %190 = call i32 @kfree(%struct.si4713_usb_device* %189)
  %191 = load i32, i32* %9, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %184, %170, %39
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local %struct.si4713_usb_device* @kzalloc(i32, i32) #1

declare dso_local %struct.si4713_usb_device* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.si4713_usb_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.TYPE_9__*) #1

declare dso_local i32 @si4713_start_seq(%struct.si4713_usb_device*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @si4713_register_i2c_adapter(%struct.si4713_usb_device*) #1

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(%struct.TYPE_9__*, %struct.i2c_adapter*, i32*, i32*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_8__*, %struct.si4713_usb_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.TYPE_8__*) #1

declare dso_local i32 @i2c_del_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
