; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.bttv_fh* }
%struct.bttv_fh = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.video_device = type { i64 }
%struct.bttv = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.bttv_fh, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"open dev=%s\0A\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VFL_TYPE_VBI = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%d: open called (type=%s)\0A\00", align 1
@v4l2_type_names = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bttv_video_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@bttv_vbi_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@reset_crop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @bttv_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.bttv*, align 8
  %6 = alloca %struct.bttv_fh*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %4, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.bttv* @video_drvdata(%struct.file* %10)
  store %struct.bttv* %11, %struct.bttv** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.video_device*, %struct.video_device** %4, align 8
  %13 = call i32 @video_device_node_name(%struct.video_device* %12)
  %14 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.video_device*, %struct.video_device** %4, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VFL_TYPE_GRABBER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %21, i32* %7, align 4
  br label %35

22:                                               ; preds = %1
  %23 = load %struct.video_device*, %struct.video_device** %4, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VFL_TYPE_VBI, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %22
  %31 = call i32 @WARN_ON(i32 1)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %145

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.bttv*, %struct.bttv** %5, align 8
  %37 = getelementptr inbounds %struct.bttv, %struct.bttv* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** @v4l2_type_names, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %44)
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.bttv_fh* @kmalloc(i32 32, i32 %46)
  store %struct.bttv_fh* %47, %struct.bttv_fh** %6, align 8
  %48 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %49 = icmp ne %struct.bttv_fh* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %145

57:                                               ; preds = %35
  %58 = load %struct.bttv*, %struct.bttv** %5, align 8
  %59 = getelementptr inbounds %struct.bttv, %struct.bttv* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %63 = load %struct.file*, %struct.file** %3, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  store %struct.bttv_fh* %62, %struct.bttv_fh** %64, align 8
  %65 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %66 = load %struct.bttv*, %struct.bttv** %5, align 8
  %67 = getelementptr inbounds %struct.bttv, %struct.bttv* %66, i32 0, i32 6
  %68 = bitcast %struct.bttv_fh* %65 to i8*
  %69 = bitcast %struct.bttv_fh* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 32, i1 false)
  %70 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %71 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %70, i32 0, i32 2
  %72 = load %struct.video_device*, %struct.video_device** %4, align 8
  %73 = call i32 @v4l2_fh_init(i32* %71, %struct.video_device* %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %76 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %78 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %81 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %80, i32 0, i32 5
  %82 = load %struct.bttv*, %struct.bttv** %5, align 8
  %83 = getelementptr inbounds %struct.bttv, %struct.bttv* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.bttv*, %struct.bttv** %5, align 8
  %88 = getelementptr inbounds %struct.bttv, %struct.bttv* %87, i32 0, i32 4
  %89 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %90 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %91 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %92 = load %struct.bttv*, %struct.bttv** %5, align 8
  %93 = getelementptr inbounds %struct.bttv, %struct.bttv* %92, i32 0, i32 3
  %94 = call i32 @videobuf_queue_sg_init(i32* %81, i32* @bttv_video_qops, i32* %86, i32* %88, i32 %89, i32 %90, i32 4, %struct.bttv_fh* %91, i32* %93)
  %95 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %96 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %95, i32 0, i32 4
  %97 = load %struct.bttv*, %struct.bttv** %5, align 8
  %98 = getelementptr inbounds %struct.bttv, %struct.bttv* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.bttv*, %struct.bttv** %5, align 8
  %103 = getelementptr inbounds %struct.bttv, %struct.bttv* %102, i32 0, i32 4
  %104 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %105 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %106 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %107 = load %struct.bttv*, %struct.bttv** %5, align 8
  %108 = getelementptr inbounds %struct.bttv, %struct.bttv* %107, i32 0, i32 3
  %109 = call i32 @videobuf_queue_sg_init(i32* %96, i32* @bttv_vbi_qops, i32* %101, i32* %103, i32 %104, i32 %105, i32 4, %struct.bttv_fh* %106, i32* %108)
  %110 = load %struct.bttv*, %struct.bttv** %5, align 8
  %111 = load %struct.bttv*, %struct.bttv** %5, align 8
  %112 = getelementptr inbounds %struct.bttv, %struct.bttv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @set_tvnorm(%struct.bttv* %110, i32 %113)
  %115 = load %struct.bttv*, %struct.bttv** %5, align 8
  %116 = load %struct.bttv*, %struct.bttv** %5, align 8
  %117 = getelementptr inbounds %struct.bttv, %struct.bttv* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.bttv*, %struct.bttv** %5, align 8
  %120 = getelementptr inbounds %struct.bttv, %struct.bttv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @set_input(%struct.bttv* %115, i32 %118, i32 %121)
  %123 = load %struct.bttv*, %struct.bttv** %5, align 8
  %124 = load %struct.bttv*, %struct.bttv** %5, align 8
  %125 = getelementptr inbounds %struct.bttv, %struct.bttv* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @audio_mute(%struct.bttv* %123, i32 %126)
  %128 = load i32, i32* @reset_crop, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %133 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %135 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %134, i32 0, i32 3
  %136 = load %struct.bttv*, %struct.bttv** %5, align 8
  %137 = getelementptr inbounds %struct.bttv, %struct.bttv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @bttv_vbi_fmt_reset(i32* %135, i32 %138)
  %140 = load %struct.bttv*, %struct.bttv** %5, align 8
  %141 = call i32 @bttv_field_count(%struct.bttv* %140)
  %142 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  %143 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %142, i32 0, i32 2
  %144 = call i32 @v4l2_fh_add(i32* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %57, %54, %30
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.bttv* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.bttv_fh* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l2_fh_init(i32*, %struct.video_device*) #1

declare dso_local i32 @videobuf_queue_sg_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.bttv_fh*, i32*) #1

declare dso_local i32 @set_tvnorm(%struct.bttv*, i32) #1

declare dso_local i32 @set_input(%struct.bttv*, i32, i32) #1

declare dso_local i32 @audio_mute(%struct.bttv*, i32) #1

declare dso_local i32 @bttv_vbi_fmt_reset(i32*, i32) #1

declare dso_local i32 @bttv_field_count(%struct.bttv*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
