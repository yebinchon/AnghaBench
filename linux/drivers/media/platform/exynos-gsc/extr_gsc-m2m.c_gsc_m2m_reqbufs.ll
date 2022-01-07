; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64, i64 }
%struct.gsc_ctx = type { i32, %struct.gsc_dev* }
%struct.gsc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @gsc_m2m_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_m2m_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.gsc_ctx*, align 8
  %9 = alloca %struct.gsc_dev*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.gsc_ctx* @fh_to_ctx(i8* %11)
  store %struct.gsc_ctx* %12, %struct.gsc_ctx** %8, align 8
  %13 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %13, i32 0, i32 1
  %15 = load %struct.gsc_dev*, %struct.gsc_dev** %14, align 8
  store %struct.gsc_dev* %15, %struct.gsc_dev** %9, align 8
  %16 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.gsc_dev*, %struct.gsc_dev** %9, align 8
  %23 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  br label %33

27:                                               ; preds = %3
  %28 = load %struct.gsc_dev*, %struct.gsc_dev** %9, align 8
  %29 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i64 [ %26, %21 ], [ %32, %27 ]
  store i64 %34, i64* %10, align 8
  %35 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %50

43:                                               ; preds = %33
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = load %struct.gsc_ctx*, %struct.gsc_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %49 = call i32 @v4l2_m2m_reqbufs(%struct.file* %44, i32 %47, %struct.v4l2_requestbuffers* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.gsc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @v4l2_m2m_reqbufs(%struct.file*, i32, %struct.v4l2_requestbuffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
