; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_vb2_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_vb2_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.via_camera = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"Plane size too small (%lu < %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @viacam_vb2_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viacam_vb2_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.via_camera*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %5 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.via_camera* @vb2_get_drv_priv(i32 %7)
  store %struct.via_camera* %8, %struct.via_camera** %4, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = call i64 @vb2_plane_size(%struct.vb2_buffer* %9, i32 0)
  %11 = load %struct.via_camera*, %struct.via_camera** %4, align 8
  %12 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %10, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.via_camera*, %struct.via_camera** %4, align 8
  %18 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %19 = call i64 @vb2_plane_size(%struct.vb2_buffer* %18, i32 0)
  %20 = load %struct.via_camera*, %struct.via_camera** %4, align 8
  %21 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @cam_dbg(%struct.via_camera* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %29 = load %struct.via_camera*, %struct.via_camera** %4, align 8
  %30 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %28, i32 0, i64 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.via_camera* @vb2_get_drv_priv(i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @cam_dbg(%struct.via_camera*, i8*, i64, i64) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
