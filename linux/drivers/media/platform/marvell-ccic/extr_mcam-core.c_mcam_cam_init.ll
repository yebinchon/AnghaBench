; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_cam_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_cam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i64 }

@S_NOTREADY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Cam init with device in funky state %d\00", align 1
@S_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcam_camera*)* @mcam_cam_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_cam_init(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  %3 = alloca i32, align 4
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %4 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %5 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S_NOTREADY, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %11 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %12 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @cam_warn(%struct.mcam_camera* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %17 = call i32 @__mcam_cam_reset(%struct.mcam_camera* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i64, i64* @S_IDLE, align 8
  %19 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %20 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @cam_warn(%struct.mcam_camera*, i8*, i64) #1

declare dso_local i32 @__mcam_cam_reset(%struct.mcam_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
