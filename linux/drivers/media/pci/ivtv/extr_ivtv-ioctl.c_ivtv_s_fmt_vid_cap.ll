; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }
%struct.ivtv = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_FIXED = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @ivtv_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.v4l2_subdev_format, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.ivtv_open_id* @fh2id(i8* %14)
  store %struct.ivtv_open_id* %15, %struct.ivtv_open_id** %8, align 8
  %16 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %17 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %16, i32 0, i32 0
  %18 = load %struct.ivtv*, %struct.ivtv** %17, align 8
  store %struct.ivtv* %18, %struct.ivtv** %9, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %20 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  %22 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %22, i32* %21, align 4
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %26 = call i32 @ivtv_try_fmt_vid_cap(%struct.file* %23, i8* %24, %struct.v4l2_format* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %111

41:                                               ; preds = %3
  %42 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %43 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %111

56:                                               ; preds = %48, %41
  %57 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %58 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %57, i32 0, i32 2
  %59 = call i64 @atomic_read(i32* %58)
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %111

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %71 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %74 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @v4l2_ctrl_g_ctrl(i32 %76)
  %78 = load i64, i64* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %64
  %81 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 2
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %64
  %88 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %13, align 4
  %96 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @MEDIA_BUS_FMT_FIXED, align 4
  %99 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %102 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @pad, align 4
  %105 = load i32, i32* @set_fmt, align 4
  %106 = call i32 @v4l2_subdev_call(i32 %103, i32 %104, i32 %105, i32* null, %struct.v4l2_subdev_format* %10)
  %107 = load %struct.file*, %struct.file** %5, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %110 = call i32 @ivtv_g_fmt_vid_cap(%struct.file* %107, i8* %108, %struct.v4l2_format* %109)
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %87, %61, %55, %39
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.ivtv_open_id* @fh2id(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ivtv_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @ivtv_g_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
