; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_try_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_try_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.dvb_usb_device = type { %struct.cxusb_medion_dev* }
%struct.cxusb_medion_dev = type { i32, i32, i32, i8*, i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i8* null, align 8
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.v4l2_format*, i32)* @cxusb_medion_try_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_try_s_fmt_vid_cap(%struct.file* %0, %struct.v4l2_format* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.cxusb_medion_dev*, align 8
  %10 = alloca %struct.v4l2_subdev_format, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.dvb_usb_device* @video_drvdata(%struct.file* %13)
  store %struct.dvb_usb_device* %14, %struct.dvb_usb_device** %8, align 8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 0
  %17 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %16, align 8
  store %struct.cxusb_medion_dev* %17, %struct.cxusb_medion_dev** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %22 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %21, i32 0, i32 4
  %23 = call i64 @vb2_is_busy(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %160

28:                                               ; preds = %20, %3
  %29 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %30 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %29, i32 0, i32 4
  %31 = call i64 @vb2_start_streaming_called(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %35 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %39 = call i8* @cxusb_medion_field_order(%struct.cxusb_medion_dev* %38)
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i8* [ %36, %33 ], [ %39, %37 ]
  store i8* %41, i8** %11, align 8
  %42 = call i32 @memset(%struct.v4l2_subdev_format* %10, i32 0, i32 40)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, -2
  %58 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %61 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, -2
  %66 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @V4L2_COLORSPACE_SMPTE170M, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %78 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @pad, align 4
  %81 = load i32, i32* @set_fmt, align 4
  %82 = call i32 @v4l2_subdev_call(i32 %79, i32 %80, i32 %81, i32* null, %struct.v4l2_subdev_format* %10)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %49
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %4, align 4
  br label %160

87:                                               ; preds = %49
  %88 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %92 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 8
  %95 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @V4L2_PIX_FMT_UYVY, align 4
  %103 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %104 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 6
  store i32 %102, i32* %106, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %109 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  store i8* %107, i8** %111, align 8
  %112 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 2
  %118 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %119 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i32 %117, i32* %121, align 8
  %122 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %123 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %128 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %126, %131
  %133 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %134 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  store i32 %132, i32* %136, align 4
  %137 = load i8*, i8** @V4L2_COLORSPACE_SMPTE170M, align 8
  %138 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %139 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 4
  store i8* %137, i8** %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %87
  %145 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %146 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %151 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %153 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %158 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %144, %87
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %85, %25
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.dvb_usb_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i64 @vb2_start_streaming_called(i32*) #1

declare dso_local i8* @cxusb_medion_field_order(%struct.cxusb_medion_dev*) #1

declare dso_local i32 @memset(%struct.v4l2_subdev_format*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
