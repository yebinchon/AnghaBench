; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.via_camera = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.via_format = type { i32 }

@S_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @viacam_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viacam_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.via_camera*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_format, align 4
  %11 = alloca %struct.via_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.via_camera* @video_drvdata(%struct.file* %12)
  store %struct.via_camera* %13, %struct.via_camera** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.via_format* @via_find_format(i32 %18)
  store %struct.via_format* %19, %struct.via_format** %11, align 8
  %20 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %21 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @S_IDLE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %68

28:                                               ; preds = %3
  %29 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @viacam_do_try_fmt(%struct.via_camera* %29, %struct.TYPE_5__* %32, %struct.TYPE_5__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %68

40:                                               ; preds = %28
  %41 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %42 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %41, i32 0, i32 3
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = bitcast %struct.TYPE_5__* %42 to i8*
  %47 = bitcast %struct.TYPE_5__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %49 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = bitcast %struct.TYPE_5__* %49 to i8*
  %53 = bitcast %struct.TYPE_5__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.via_format*, %struct.via_format** %11, align 8
  %55 = getelementptr inbounds %struct.via_format, %struct.via_format* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %58 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %60 = call i32 @viacam_configure_sensor(%struct.via_camera* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %40
  %64 = load %struct.via_camera*, %struct.via_camera** %8, align 8
  %65 = call i32 @viacam_config_controller(%struct.via_camera* %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %40
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %38, %25
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.via_camera* @video_drvdata(%struct.file*) #1

declare dso_local %struct.via_format* @via_find_format(i32) #1

declare dso_local i32 @viacam_do_try_fmt(%struct.via_camera*, %struct.TYPE_5__*, %struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @viacam_configure_sensor(%struct.via_camera*) #1

declare dso_local i32 @viacam_config_controller(%struct.via_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
