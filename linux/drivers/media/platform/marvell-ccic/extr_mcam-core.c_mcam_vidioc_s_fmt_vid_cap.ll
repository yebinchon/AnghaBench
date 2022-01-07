; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mcam_camera = type { i64, i64, i32, %struct.TYPE_3__, i32 }
%struct.mcam_format_struct = type { i32 }

@S_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@B_vmalloc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @mcam_vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.mcam_camera*, align 8
  %9 = alloca %struct.mcam_format_struct*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.mcam_camera* @video_drvdata(%struct.file* %11)
  store %struct.mcam_camera* %12, %struct.mcam_camera** %8, align 8
  %13 = load %struct.mcam_camera*, %struct.mcam_camera** %8, align 8
  %14 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @S_IDLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.mcam_camera*, %struct.mcam_camera** %8, align 8
  %20 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %19, i32 0, i32 4
  %21 = call i64 @vb2_is_busy(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %3
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %71

26:                                               ; preds = %18
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.mcam_format_struct* @mcam_find_format(i32 %31)
  store %struct.mcam_format_struct* %32, %struct.mcam_format_struct** %9, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = call i32 @mcam_vidioc_try_fmt_vid_cap(%struct.file* %33, i8* %34, %struct.v4l2_format* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %26
  %42 = load %struct.mcam_camera*, %struct.mcam_camera** %8, align 8
  %43 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %42, i32 0, i32 3
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = bitcast %struct.TYPE_3__* %43 to i8*
  %48 = bitcast %struct.TYPE_3__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.mcam_format_struct*, %struct.mcam_format_struct** %9, align 8
  %50 = getelementptr inbounds %struct.mcam_format_struct, %struct.mcam_format_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mcam_camera*, %struct.mcam_camera** %8, align 8
  %53 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mcam_camera*, %struct.mcam_camera** %8, align 8
  %55 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @B_vmalloc, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %41
  %60 = load %struct.mcam_camera*, %struct.mcam_camera** %8, align 8
  %61 = call i32 @mcam_check_dma_buffers(%struct.mcam_camera* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.mcam_camera*, %struct.mcam_camera** %8, align 8
  %68 = call i32 @mcam_set_config_needed(%struct.mcam_camera* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %64
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %39, %23
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.mcam_camera* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local %struct.mcam_format_struct* @mcam_find_format(i32) #1

declare dso_local i32 @mcam_vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mcam_check_dma_buffers(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_set_config_needed(%struct.mcam_camera*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
