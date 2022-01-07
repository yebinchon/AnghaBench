; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_ctlr_stop_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_ctlr_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32, i32, i32 }

@CF_SG_RESTART = common dso_local global i32 0, align 4
@S_IDLE = common dso_local global i32 0, align 4
@CF_DMA_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Timeout waiting for DMA to end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_camera*)* @mcam_ctlr_stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_ctlr_stop_dma(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  %3 = alloca i64, align 8
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %4 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %5 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load i32, i32* @CF_SG_RESTART, align 4
  %9 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %10 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %9, i32 0, i32 1
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %13 = call i32 @mcam_ctlr_stop(%struct.mcam_camera* %12)
  %14 = load i32, i32* @S_IDLE, align 4
  %15 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %16 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %18 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %17, i32 0, i32 0
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = call i32 @msleep(i32 150)
  %22 = load i32, i32* @CF_DMA_ACTIVE, align 4
  %23 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %24 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %29 = call i32 @cam_err(%struct.mcam_camera* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %32 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %31, i32 0, i32 0
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %36 = call i32 @mcam_ctlr_irq_disable(%struct.mcam_camera* %35)
  %37 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %38 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %37, i32 0, i32 0
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mcam_ctlr_stop(%struct.mcam_camera*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cam_err(%struct.mcam_camera*, i8*) #1

declare dso_local i32 @mcam_ctlr_irq_disable(%struct.mcam_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
