; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.cx18_open_id = type { i64, %struct.cx18* }
%struct.cx18 = type { i32, %struct.TYPE_7__, i32, %struct.cx18_stream* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.cx18_stream = type { i64, i32, i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_HM12 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cx18_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca %struct.v4l2_subdev_format, align 4
  %11 = alloca %struct.cx18_stream*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.cx18_open_id* @fh2id(i8* %15)
  store %struct.cx18_open_id* %16, %struct.cx18_open_id** %8, align 8
  %17 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %18 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %17, i32 0, i32 1
  %19 = load %struct.cx18*, %struct.cx18** %18, align 8
  store %struct.cx18* %19, %struct.cx18** %9, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %21 = bitcast %struct.TYPE_8__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 12, i1 false)
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  %23 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.cx18*, %struct.cx18** %9, align 8
  %25 = getelementptr inbounds %struct.cx18, %struct.cx18* %24, i32 0, i32 3
  %26 = load %struct.cx18_stream*, %struct.cx18_stream** %25, align 8
  %27 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %28 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %26, i64 %29
  store %struct.cx18_stream* %30, %struct.cx18_stream** %11, align 8
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = call i32 @cx18_try_fmt_vid_cap(%struct.file* %31, i8* %32, %struct.v4l2_format* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %138

39:                                               ; preds = %3
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.cx18*, %struct.cx18** %9, align 8
  %51 = getelementptr inbounds %struct.cx18, %struct.cx18* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %39
  %57 = load %struct.cx18*, %struct.cx18** %9, align 8
  %58 = getelementptr inbounds %struct.cx18, %struct.cx18* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.cx18_stream*, %struct.cx18_stream** %11, align 8
  %65 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %66, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %138

74:                                               ; preds = %63, %56, %39
  %75 = load %struct.cx18*, %struct.cx18** %9, align 8
  %76 = getelementptr inbounds %struct.cx18, %struct.cx18* %75, i32 0, i32 2
  %77 = call i64 @atomic_read(i32* %76)
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %138

82:                                               ; preds = %74
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.cx18_stream*, %struct.cx18_stream** %11, align 8
  %89 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.cx18_stream*, %struct.cx18_stream** %11, align 8
  %91 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @V4L2_PIX_FMT_HM12, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %82
  %96 = load i32, i32* %14, align 4
  %97 = mul nsw i32 %96, 720
  %98 = mul nsw i32 %97, 3
  %99 = sdiv i32 %98, 2
  %100 = load %struct.cx18_stream*, %struct.cx18_stream** %11, align 8
  %101 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.cx18_stream*, %struct.cx18_stream** %11, align 8
  %103 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %102, i32 0, i32 2
  store i32 720, i32* %103, align 4
  br label %112

104:                                              ; preds = %82
  %105 = load i32, i32* %14, align 4
  %106 = mul nsw i32 %105, 720
  %107 = mul nsw i32 %106, 2
  %108 = load %struct.cx18_stream*, %struct.cx18_stream** %11, align 8
  %109 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.cx18_stream*, %struct.cx18_stream** %11, align 8
  %111 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %110, i32 0, i32 2
  store i32 1440, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %95
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.cx18*, %struct.cx18** %9, align 8
  %115 = getelementptr inbounds %struct.cx18, %struct.cx18* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.cx18*, %struct.cx18** %9, align 8
  %121 = getelementptr inbounds %struct.cx18, %struct.cx18* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  store i32 %119, i32* %124, align 4
  %125 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %126 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.cx18*, %struct.cx18** %9, align 8
  %129 = getelementptr inbounds %struct.cx18, %struct.cx18* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @pad, align 4
  %132 = load i32, i32* @set_fmt, align 4
  %133 = call i32 @v4l2_subdev_call(i32 %130, i32 %131, i32 %132, i32* null, %struct.v4l2_subdev_format* %10)
  %134 = load %struct.file*, %struct.file** %5, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %137 = call i32 @cx18_g_fmt_vid_cap(%struct.file* %134, i8* %135, %struct.v4l2_format* %136)
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %112, %79, %73, %37
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.cx18_open_id* @fh2id(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cx18_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @cx18_g_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
