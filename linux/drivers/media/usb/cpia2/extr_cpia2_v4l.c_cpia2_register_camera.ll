; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_register_camera.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_register_camera.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.v4l2_ctrl_handler*, i32* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.camera_data = type { %struct.TYPE_8__, i32, i32, i8*, i8*, %struct.TYPE_7__, i32, %struct.v4l2_ctrl_handler }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.v4l2_ctrl_config = type { i8*, i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"USB Alternate\00", align 1
@USBIF_ISO_6 = common dso_local global i32 0, align 4
@USBIF_ISO_1 = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER = common dso_local global i32 0, align 4
@CPIA2_CID_USB_ALT = common dso_local global i32 0, align 4
@cpia2_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@DEVICE_STV_672 = common dso_local global i64 0, align 8
@DEFAULT_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@DEFAULT_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@DEFAULT_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_ACTIVE_MARKER = common dso_local global i32 0, align 4
@V4L2_JPEG_ACTIVE_MARKER_DHT = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i32 0, align 4
@alternate = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_60HZ = common dso_local global i32 0, align 4
@V4L2_CID_ILLUMINATORS_1 = common dso_local global i32 0, align 4
@V4L2_CID_ILLUMINATORS_2 = common dso_local global i32 0, align 4
@cpia2_template = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"video_register_device failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_register_camera(%struct.camera_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camera_data*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_ctrl_config, align 8
  %6 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  %7 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %8 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %7, i32 0, i32 7
  store %struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 1
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 3
  %13 = load i32, i32* @USBIF_ISO_6, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 4
  %15 = load i32, i32* @USBIF_ISO_1, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 5
  %17 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 6
  %19 = load i32, i32* @CPIA2_CID_USB_ALT, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 7
  store i32* @cpia2_ctrl_ops, i32** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %22 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %21, i32 12)
  %23 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %24 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %25 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %26 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DEVICE_STV_672, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = load i32, i32* @DEFAULT_BRIGHTNESS, align 4
  %35 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %23, i32* @cpia2_ctrl_ops, i32 %24, i32 %33, i32 255, i32 1, i32 %34)
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %37 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %38 = load i32, i32* @DEFAULT_CONTRAST, align 4
  %39 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @cpia2_ctrl_ops, i32 %37, i32 0, i32 255, i32 1, i32 %38)
  %40 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %41 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %42 = load i32, i32* @DEFAULT_SATURATION, align 4
  %43 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %40, i32* @cpia2_ctrl_ops, i32 %41, i32 0, i32 255, i32 1, i32 %42)
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %45 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %46 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %44, i32* @cpia2_ctrl_ops, i32 %45, i32 0, i32 1, i32 1, i32 0)
  %47 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %48 = load i32, i32* @V4L2_CID_JPEG_ACTIVE_MARKER, align 4
  %49 = load i32, i32* @V4L2_JPEG_ACTIVE_MARKER_DHT, align 4
  %50 = load i32, i32* @V4L2_JPEG_ACTIVE_MARKER_DHT, align 4
  %51 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %47, i32* @cpia2_ctrl_ops, i32 %48, i32 0, i32 %49, i32 0, i32 %50)
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %53 = load i32, i32* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 4
  %54 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, i32* @cpia2_ctrl_ops, i32 %53, i32 1, i32 100, i32 1, i32 100)
  %55 = load i32, i32* @alternate, align 4
  %56 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %5, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %58 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %57, %struct.v4l2_ctrl_config* %5, i32* null)
  %59 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %60 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %62 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DEVICE_STV_672, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %1
  %69 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %70 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %71 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %69, i32* @cpia2_ctrl_ops, i32 %70, i32 0, i32 1, i32 1, i32 0)
  br label %72

72:                                               ; preds = %68, %1
  %73 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %74 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DEVICE_STV_672, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %82 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %83 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_60HZ, align 4
  %84 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %81, i32* @cpia2_ctrl_ops, i32 %82, i32 %83, i32 0, i32 0)
  br label %85

85:                                               ; preds = %80, %72
  %86 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %87 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 337
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %94 = load i32, i32* @V4L2_CID_ILLUMINATORS_1, align 4
  %95 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %93, i32* @cpia2_ctrl_ops, i32 %94, i32 0, i32 1, i32 1, i32 0)
  %96 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %97 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %99 = load i32, i32* @V4L2_CID_ILLUMINATORS_2, align 4
  %100 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %98, i32* @cpia2_ctrl_ops, i32 %99, i32 0, i32 1, i32 1, i32 0)
  %101 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %102 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %104 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %103, i32 0, i32 3
  %105 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %104)
  br label %106

106:                                              ; preds = %92, %85
  %107 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %108 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %113 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %6, align 4
  %115 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %116 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %115)
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %2, align 4
  br label %161

118:                                              ; preds = %106
  %119 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %120 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %119, i32 0, i32 0
  %121 = bitcast %struct.TYPE_8__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 bitcast (%struct.TYPE_8__* @cpia2_template to i8*), i64 32, i1 false)
  %122 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %123 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %122, i32 0, i32 0
  %124 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %125 = call i32 @video_set_drvdata(%struct.TYPE_8__* %123, %struct.camera_data* %124)
  %126 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %127 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %126, i32 0, i32 2
  %128 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %129 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  store i32* %127, i32** %130, align 8
  %131 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %132 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %133 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  store %struct.v4l2_ctrl_handler* %131, %struct.v4l2_ctrl_handler** %134, align 8
  %135 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %136 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %135, i32 0, i32 1
  %137 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %138 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i32* %136, i32** %139, align 8
  %140 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %141 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %146 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %149 = call i32 @reset_camera_struct_v4l(%struct.camera_data* %148)
  %150 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %151 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %150, i32 0, i32 0
  %152 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %153 = load i32, i32* @video_nr, align 4
  %154 = call i64 @video_register_device(%struct.TYPE_8__* %151, i32 %152, i32 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %118
  %157 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @ENODEV, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %156, %111
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_config*, i32*) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.TYPE_8__*, %struct.camera_data*) #1

declare dso_local i32 @reset_camera_struct_v4l(%struct.camera_data*) #1

declare dso_local i64 @video_register_device(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
