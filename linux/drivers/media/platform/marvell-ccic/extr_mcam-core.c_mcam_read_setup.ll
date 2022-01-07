; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_read_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_read_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i64, i64, i64, i32, i32, i32 }

@B_vmalloc = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CF_DMA_ACTIVE = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@S_STREAMING = common dso_local global i32 0, align 4
@CF_SG_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcam_camera*)* @mcam_read_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcam_read_setup(%struct.mcam_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcam_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mcam_camera* %0, %struct.mcam_camera** %3, align 8
  %6 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %7 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @B_vmalloc, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %13 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %18 = call i64 @mcam_alloc_dma_bufs(%struct.mcam_camera* %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %16, %11, %1
  %24 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %25 = call i64 @mcam_needs_config(%struct.mcam_camera* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %29 = call i32 @mcam_cam_configure(%struct.mcam_camera* %28)
  %30 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %31 = call i32 @mcam_ctlr_configure(%struct.mcam_camera* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %39 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %38, i32 0, i32 3
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load i32, i32* @CF_DMA_ACTIVE, align 4
  %43 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %44 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %43, i32 0, i32 4
  %45 = call i32 @clear_bit(i32 %42, i32* %44)
  %46 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %47 = call i32 @mcam_reset_buffers(%struct.mcam_camera* %46)
  %48 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %49 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %55 = call i32 @mcam_enable_mipi(%struct.mcam_camera* %54)
  br label %59

56:                                               ; preds = %37
  %57 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %58 = call i32 @mcam_disable_mipi(%struct.mcam_camera* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %61 = call i32 @mcam_ctlr_irq_enable(%struct.mcam_camera* %60)
  %62 = load i32, i32* @S_STREAMING, align 4
  %63 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %64 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @CF_SG_RESTART, align 4
  %66 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %67 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %66, i32 0, i32 4
  %68 = call i32 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %72 = call i32 @mcam_ctlr_start(%struct.mcam_camera* %71)
  br label %73

73:                                               ; preds = %70, %59
  %74 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %75 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %74, i32 0, i32 3
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %34, %20
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @mcam_alloc_dma_bufs(%struct.mcam_camera*, i32) #1

declare dso_local i64 @mcam_needs_config(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_cam_configure(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_ctlr_configure(%struct.mcam_camera*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mcam_reset_buffers(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_enable_mipi(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_disable_mipi(%struct.mcam_camera*) #1

declare dso_local i32 @mcam_ctlr_irq_enable(%struct.mcam_camera*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mcam_ctlr_start(%struct.mcam_camera*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
