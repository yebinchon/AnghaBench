; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_g_jpegcomp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_cpia2_g_jpegcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_jpegcompression = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.camera_data = type { i64, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@V4L2_JPEG_MARKER_DQT = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DRI = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_DHT = common dso_local global i32 0, align 4
@V4L2_JPEG_MARKER_APP = common dso_local global i32 0, align 4
@JPEG_MARKER_COM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"G_JPEGCOMP APP_len:%d COM_len:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_jpegcompression*)* @cpia2_g_jpegcomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_g_jpegcomp(%struct.file* %0, i8* %1, %struct.v4l2_jpegcompression* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_jpegcompression*, align 8
  %7 = alloca %struct.camera_data*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_jpegcompression* %2, %struct.v4l2_jpegcompression** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.camera_data* @video_drvdata(%struct.file* %8)
  store %struct.camera_data* %9, %struct.camera_data** %7, align 8
  %10 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %11 = call i32 @memset(%struct.v4l2_jpegcompression* %10, i32 0, i32 40)
  %12 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %12, i32 0, i32 0
  store i32 80, i32* %13, align 8
  %14 = load i32, i32* @V4L2_JPEG_MARKER_DQT, align 4
  %15 = load i32, i32* @V4L2_JPEG_MARKER_DRI, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %20 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @V4L2_JPEG_MARKER_DHT, align 4
  %27 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %3
  %32 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %33 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %43 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %31
  %47 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %51 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %54 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @memcpy(i32 %49, i32 %52, i64 %55)
  %57 = load i32, i32* @V4L2_JPEG_MARKER_APP, align 4
  %58 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %46, %31
  %63 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %64 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %69 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %62
  %73 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %77 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.camera_data*, %struct.camera_data** %7, align 8
  %80 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @memcpy(i32 %75, i32 %78, i64 %81)
  %83 = load i32, i32* @JPEG_MARKER_COM, align 4
  %84 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %72, %62
  %89 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %94)
  ret i32 0
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @memset(%struct.v4l2_jpegcompression*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @DBG(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
