; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_frame_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_frame_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32, i64, i32 (%struct.mcam_camera*, i32)*, %struct.TYPE_2__, i32, i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@CF_DMA_ACTIVE = common dso_local global i32 0, align 4
@S_STREAMING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_camera*, i32)* @mcam_frame_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_frame_complete(%struct.mcam_camera* %0, i32 %1) #0 {
  %3 = alloca %struct.mcam_camera*, align 8
  %4 = alloca i32, align 4
  store %struct.mcam_camera* %0, %struct.mcam_camera** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %7 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %6, i32 0, i32 6
  %8 = call i32 @set_bit(i32 %5, i32* %7)
  %9 = load i32, i32* @CF_DMA_ACTIVE, align 4
  %10 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %11 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %10, i32 0, i32 6
  %12 = call i32 @clear_bit(i32 %9, i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %15 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %17 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = sext i32 %18 to i64
  %21 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %22 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %21, i32 0, i32 5
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64 %20, i64* %26, align 8
  %27 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %28 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %33 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @S_STREAMING, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %45

38:                                               ; preds = %2
  %39 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %40 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %39, i32 0, i32 2
  %41 = load i32 (%struct.mcam_camera*, i32)*, i32 (%struct.mcam_camera*, i32)** %40, align 8
  %42 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 %41(%struct.mcam_camera* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
