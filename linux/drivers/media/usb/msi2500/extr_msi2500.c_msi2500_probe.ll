; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_board_info = type { i8*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32*, i32, i32*, i32*, %struct.msi2500_dev*, i32 }
%struct.msi2500_dev = type { i32, %struct.TYPE_18__, %struct.spi_master*, %struct.TYPE_19__, i32*, %struct.TYPE_16__, i32, %struct.v4l2_subdev*, i32, %struct.TYPE_17__, i32, i32, i32, i32, i32, i32 }
%struct.spi_master = type { i32, i32, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }

@msi2500_probe.board_info = internal global %struct.spi_board_info { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 12000000, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [7 x i8] c"msi001\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_15__* null, align 8
@formats = common dso_local global %struct.TYPE_14__* null, align 8
@NUM_FORMATS = common dso_local global i32 0, align 4
@msi2500_emulated_fmt = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_SDR_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@msi2500_vb2_ops = common dso_local global i32 0, align 4
@vb2_vmalloc_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not initialize vb2 queue\0A\00", align 1
@msi2500_template = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@msi2500_video_release = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to register v4l2-device (%d)\0A\00", align 1
@msi2500_transfer_one_message = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot get v4l2 subdevice\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@V4L2_CAP_SDR_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@VFL_TYPE_SDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to register as video device (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Registered as %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"SDR API is still slightly experimental and functionality changes may follow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @msi2500_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi2500_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.msi2500_dev*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.spi_master*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.msi2500_dev* @kzalloc(i32 184, i32 %10)
  store %struct.msi2500_dev* %11, %struct.msi2500_dev** %6, align 8
  %12 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %13 = icmp ne %struct.msi2500_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %281

17:                                               ; preds = %2
  %18 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %19 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %18, i32 0, i32 6
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %22 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %21, i32 0, i32 8
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %25 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %24, i32 0, i32 15
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %28 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %27, i32 0, i32 14
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 0
  %32 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %33 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = call i32 @interface_to_usbdev(%struct.usb_interface* %34)
  %36 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %37 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bands, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %43 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @formats, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %49 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** @formats, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %55 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @NUM_FORMATS, align 4
  %57 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %58 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @msi2500_emulated_fmt, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %17
  %62 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %63 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 2
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %61, %17
  %67 = load i32, i32* @V4L2_BUF_TYPE_SDR_CAPTURE, align 4
  %68 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %69 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %68, i32 0, i32 9
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 7
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @VB2_MMAP, align 4
  %72 = load i32, i32* @VB2_USERPTR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @VB2_READ, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %77 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %80 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %81 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 6
  store %struct.msi2500_dev* %79, %struct.msi2500_dev** %82, align 8
  %83 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %84 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  store i32 4, i32* %85, align 4
  %86 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %87 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 5
  store i32* @msi2500_vb2_ops, i32** %88, align 8
  %89 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %90 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %89, i32 0, i32 9
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 4
  store i32* @vb2_vmalloc_memops, i32** %91, align 8
  %92 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %93 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %94 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 8
  %96 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %97 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %96, i32 0, i32 9
  %98 = call i32 @vb2_queue_init(%struct.TYPE_17__* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %66
  %102 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %103 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 (i32*, i8*, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %278

106:                                              ; preds = %66
  %107 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %108 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %107, i32 0, i32 5
  %109 = bitcast %struct.TYPE_16__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 bitcast (%struct.TYPE_16__* @msi2500_template to i8*), i64 32, i1 false)
  %110 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %111 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %110, i32 0, i32 9
  %112 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %113 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  store %struct.TYPE_17__* %111, %struct.TYPE_17__** %114, align 8
  %115 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %116 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %115, i32 0, i32 8
  %117 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %118 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  store i32* %116, i32** %121, align 8
  %122 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %123 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %122, i32 0, i32 5
  %124 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %125 = call i32 @video_set_drvdata(%struct.TYPE_16__* %123, %struct.msi2500_dev* %124)
  %126 = load i32, i32* @msi2500_video_release, align 4
  %127 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %128 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %131 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %130, i32 0, i32 0
  %132 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %133 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %132, i32 0, i32 1
  %134 = call i32 @v4l2_device_register(i32* %131, %struct.TYPE_18__* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %106
  %138 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %139 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 (i32*, i8*, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %278

143:                                              ; preds = %106
  %144 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %145 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %144, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = call %struct.spi_master* @spi_alloc_master(i32* %146, i32 0)
  store %struct.spi_master* %147, %struct.spi_master** %8, align 8
  %148 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %149 = icmp eq %struct.spi_master* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %9, align 4
  br label %274

153:                                              ; preds = %143
  %154 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %155 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %156 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %155, i32 0, i32 2
  store %struct.spi_master* %154, %struct.spi_master** %156, align 8
  %157 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %158 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %157, i32 0, i32 2
  store i64 0, i64* %158, align 8
  %159 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %160 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load i32, i32* @msi2500_transfer_one_message, align 4
  %162 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %163 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %165 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %166 = call i32 @spi_master_set_devdata(%struct.spi_master* %164, %struct.msi2500_dev* %165)
  %167 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %168 = call i32 @spi_register_master(%struct.spi_master* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %153
  %172 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %173 = call i32 @spi_master_put(%struct.spi_master* %172)
  br label %274

174:                                              ; preds = %153
  %175 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %176 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %175, i32 0, i32 1
  %177 = load %struct.spi_master*, %struct.spi_master** %8, align 8
  %178 = call %struct.v4l2_subdev* @v4l2_spi_new_subdev(%struct.TYPE_18__* %176, %struct.spi_master* %177, %struct.spi_board_info* @msi2500_probe.board_info)
  store %struct.v4l2_subdev* %178, %struct.v4l2_subdev** %7, align 8
  %179 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %180 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %181 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %180, i32 0, i32 7
  store %struct.v4l2_subdev* %179, %struct.v4l2_subdev** %181, align 8
  %182 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %183 = icmp eq %struct.v4l2_subdev* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %174
  %185 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %186 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 (i32*, i8*, ...) @dev_err(i32* %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %189 = load i32, i32* @ENODEV, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %9, align 4
  br label %269

191:                                              ; preds = %174
  %192 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %193 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %192, i32 0, i32 3
  %194 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_19__* %193, i32 0)
  %195 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %196 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %191
  %201 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %202 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %9, align 4
  %205 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %206 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = call i32 (i32*, i8*, ...) @dev_err(i32* %207, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %265

209:                                              ; preds = %191
  %210 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %211 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %210, i32 0, i32 3
  %212 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %213 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @v4l2_ctrl_add_handler(%struct.TYPE_19__* %211, i32 %214, i32* null, i32 1)
  %216 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %217 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %216, i32 0, i32 3
  %218 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %219 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  store %struct.TYPE_19__* %217, %struct.TYPE_19__** %220, align 8
  %221 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %222 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %221, i32 0, i32 1
  %223 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %224 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %223, i32 0, i32 5
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 2
  store %struct.TYPE_18__* %222, %struct.TYPE_18__** %225, align 8
  %226 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %227 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %226, i32 0, i32 6
  %228 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %229 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  store i32* %227, i32** %230, align 8
  %231 = load i32, i32* @V4L2_CAP_SDR_CAPTURE, align 4
  %232 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %237 = or i32 %235, %236
  %238 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %239 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  %241 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %242 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %241, i32 0, i32 5
  %243 = load i32, i32* @VFL_TYPE_SDR, align 4
  %244 = call i32 @video_register_device(%struct.TYPE_16__* %242, i32 %243, i32 -1)
  store i32 %244, i32* %9, align 4
  %245 = load i32, i32* %9, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %209
  %248 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %249 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = call i32 (i32*, i8*, ...) @dev_err(i32* %250, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %251)
  br label %274

253:                                              ; preds = %209
  %254 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %255 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %258 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %257, i32 0, i32 5
  %259 = call i32 @video_device_node_name(%struct.TYPE_16__* %258)
  %260 = call i32 @dev_info(i32* %256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %259)
  %261 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %262 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %261, i32 0, i32 4
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @dev_notice(i32* %263, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %283

265:                                              ; preds = %200
  %266 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %267 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %266, i32 0, i32 3
  %268 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_19__* %267)
  br label %269

269:                                              ; preds = %265, %184
  %270 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %271 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %270, i32 0, i32 2
  %272 = load %struct.spi_master*, %struct.spi_master** %271, align 8
  %273 = call i32 @spi_unregister_master(%struct.spi_master* %272)
  br label %274

274:                                              ; preds = %269, %247, %171, %150
  %275 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %276 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %275, i32 0, i32 1
  %277 = call i32 @v4l2_device_unregister(%struct.TYPE_18__* %276)
  br label %278

278:                                              ; preds = %274, %137, %101
  %279 = load %struct.msi2500_dev*, %struct.msi2500_dev** %6, align 8
  %280 = call i32 @kfree(%struct.msi2500_dev* %279)
  br label %281

281:                                              ; preds = %278, %14
  %282 = load i32, i32* %9, align 4
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %281, %253
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local %struct.msi2500_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @vb2_queue_init(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_16__*, %struct.msi2500_dev*) #1

declare dso_local i32 @v4l2_device_register(i32*, %struct.TYPE_18__*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(i32*, i32) #1

declare dso_local i32 @spi_master_set_devdata(%struct.spi_master*, %struct.msi2500_dev*) #1

declare dso_local i32 @spi_register_master(%struct.spi_master*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

declare dso_local %struct.v4l2_subdev* @v4l2_spi_new_subdev(%struct.TYPE_18__*, %struct.spi_master*, %struct.spi_board_info*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @v4l2_ctrl_add_handler(%struct.TYPE_19__*, i32, i32*, i32) #1

declare dso_local i32 @video_register_device(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @video_device_node_name(%struct.TYPE_16__*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_19__*) #1

declare dso_local i32 @spi_unregister_master(%struct.spi_master*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.TYPE_18__*) #1

declare dso_local i32 @kfree(%struct.msi2500_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
