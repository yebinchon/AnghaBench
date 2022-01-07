; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_vidioc_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.omap_vout_device = type { i32, %struct.v4l2_pix_format, %struct.TYPE_2__ }
%struct.v4l2_pix_format = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.omap_vout_device*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.omap_vout_device* @video_drvdata(%struct.file* %10)
  store %struct.omap_vout_device* %11, %struct.omap_vout_device** %8, align 8
  %12 = load %struct.omap_vout_device*, %struct.omap_vout_device** %8, align 8
  %13 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %12, i32 0, i32 1
  store %struct.v4l2_pix_format* %13, %struct.v4l2_pix_format** %9, align 8
  %14 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %60

22:                                               ; preds = %3
  %23 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %56 [
    i32 130, label %26
    i32 128, label %33
    i32 129, label %41
  ]

26:                                               ; preds = %22
  %27 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %27, i32 0, i32 2
  %29 = load %struct.omap_vout_device*, %struct.omap_vout_device** %8, align 8
  %30 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %29, i32 0, i32 2
  %31 = bitcast %struct.TYPE_2__* %28 to i8*
  %32 = bitcast %struct.TYPE_2__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  br label %59

33:                                               ; preds = %22
  %34 = load %struct.omap_vout_device*, %struct.omap_vout_device** %8, align 8
  %35 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %34, i32 0, i32 1
  %36 = load %struct.omap_vout_device*, %struct.omap_vout_device** %8, align 8
  %37 = getelementptr inbounds %struct.omap_vout_device, %struct.omap_vout_device* %36, i32 0, i32 0
  %38 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %38, i32 0, i32 2
  %40 = call i32 @omap_vout_default_crop(%struct.v4l2_pix_format* %35, i32* %37, %struct.TYPE_2__* %39)
  br label %59

41:                                               ; preds = %22
  %42 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, -2
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -2
  %53 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  br label %59

56:                                               ; preds = %22
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %41, %33, %26
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %56, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.omap_vout_device* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @omap_vout_default_crop(%struct.v4l2_pix_format*, i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
