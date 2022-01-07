; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_du_pipeline_frame_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_du_pipeline_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_drm_pipeline = type { i32, i32, i32, i32 (i32, i32, i32)*, %struct.vsp1_entity* }
%struct.vsp1_entity = type { i32 }

@VSP1_DU_STATUS_COMPLETE = common dso_local global i32 0, align 4
@VSP1_DU_STATUS_WRITEBACK = common dso_local global i32 0, align 4
@VSP1_DL_FRAME_END_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_pipeline*, i32)* @vsp1_du_pipeline_frame_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsp1_du_pipeline_frame_end(%struct.vsp1_pipeline* %0, i32 %1) #0 {
  %3 = alloca %struct.vsp1_pipeline*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vsp1_drm_pipeline*, align 8
  %6 = alloca %struct.vsp1_entity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vsp1_pipeline* %0, %struct.vsp1_pipeline** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %3, align 8
  %10 = call %struct.vsp1_drm_pipeline* @to_vsp1_drm_pipeline(%struct.vsp1_pipeline* %9)
  store %struct.vsp1_drm_pipeline* %10, %struct.vsp1_drm_pipeline** %5, align 8
  %11 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %5, align 8
  %12 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %11, i32 0, i32 3
  %13 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %12, align 8
  %14 = icmp ne i32 (i32, i32, i32)* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %5, align 8
  %17 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %16, i32 0, i32 4
  %18 = load %struct.vsp1_entity*, %struct.vsp1_entity** %17, align 8
  store %struct.vsp1_entity* %18, %struct.vsp1_entity** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @VSP1_DU_STATUS_COMPLETE, align 4
  %21 = load i32, i32* @VSP1_DU_STATUS_WRITEBACK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.vsp1_entity*, %struct.vsp1_entity** %6, align 8
  %25 = icmp ne %struct.vsp1_entity* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct.vsp1_entity*, %struct.vsp1_entity** %6, align 8
  %28 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %27, i32 0, i32 0
  %29 = call i32 @to_uif(i32* %28)
  %30 = call i32 @vsp1_uif_get_crc(i32 %29)
  br label %32

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32 [ %30, %26 ], [ 0, %31 ]
  store i32 %33, i32* %8, align 4
  %34 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %5, align 8
  %35 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %34, i32 0, i32 3
  %36 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %35, align 8
  %37 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %5, align 8
  %38 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 %36(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %2
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @VSP1_DL_FRAME_END_INTERNAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %5, align 8
  %50 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %5, align 8
  %52 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %51, i32 0, i32 1
  %53 = call i32 @wake_up(i32* %52)
  br label %54

54:                                               ; preds = %48, %43
  ret void
}

declare dso_local %struct.vsp1_drm_pipeline* @to_vsp1_drm_pipeline(%struct.vsp1_pipeline*) #1

declare dso_local i32 @vsp1_uif_get_crc(i32) #1

declare dso_local i32 @to_uif(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
