; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_fman_defconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_fman_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEFAULT_CATASTROPHIC_ERR = common dso_local global i32 0, align 4
@DEFAULT_DMA_ERR = common dso_local global i32 0, align 4
@DEFAULT_AID_MODE = common dso_local global i32 0, align 4
@DEFAULT_DMA_COMM_Q_LOW = common dso_local global i32 0, align 4
@DEFAULT_DMA_COMM_Q_HIGH = common dso_local global i32 0, align 4
@DEFAULT_CACHE_OVERRIDE = common dso_local global i32 0, align 4
@DEFAULT_DMA_CAM_NUM_OF_ENTRIES = common dso_local global i32 0, align 4
@DEFAULT_DMA_DBG_CNT_MODE = common dso_local global i32 0, align 4
@DEFAULT_DMA_SOS_EMERGENCY = common dso_local global i32 0, align 4
@DEFAULT_DMA_WATCHDOG = common dso_local global i32 0, align 4
@DEFAULT_DISP_LIMIT = common dso_local global i32 0, align 4
@DEFAULT_PRS_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_PLCR_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_KG_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_BMI_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_QMI_ENQ_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_QMI_DEQ_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_FM_CTL1_DISP_TH = common dso_local global i32 0, align 4
@DEFAULT_FM_CTL2_DISP_TH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fman_cfg*)* @fman_defconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fman_defconfig(%struct.fman_cfg* %0) #0 {
  %2 = alloca %struct.fman_cfg*, align 8
  store %struct.fman_cfg* %0, %struct.fman_cfg** %2, align 8
  %3 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %4 = call i32 @memset(%struct.fman_cfg* %3, i32 0, i32 76)
  %5 = load i32, i32* @DEFAULT_CATASTROPHIC_ERR, align 4
  %6 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %7 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %6, i32 0, i32 18
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @DEFAULT_DMA_ERR, align 4
  %9 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %10 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %9, i32 0, i32 17
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @DEFAULT_AID_MODE, align 4
  %12 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %13 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %12, i32 0, i32 16
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @DEFAULT_DMA_COMM_Q_LOW, align 4
  %15 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %16 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %15, i32 0, i32 15
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @DEFAULT_DMA_COMM_Q_HIGH, align 4
  %18 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %19 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %18, i32 0, i32 14
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @DEFAULT_CACHE_OVERRIDE, align 4
  %21 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %22 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %21, i32 0, i32 13
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @DEFAULT_DMA_CAM_NUM_OF_ENTRIES, align 4
  %24 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %25 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DEFAULT_DMA_DBG_CNT_MODE, align 4
  %27 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %28 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %27, i32 0, i32 11
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DEFAULT_DMA_SOS_EMERGENCY, align 4
  %30 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %31 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @DEFAULT_DMA_WATCHDOG, align 4
  %33 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %34 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DEFAULT_DISP_LIMIT, align 4
  %36 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %37 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @DEFAULT_PRS_DISP_TH, align 4
  %39 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %40 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @DEFAULT_PLCR_DISP_TH, align 4
  %42 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %43 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @DEFAULT_KG_DISP_TH, align 4
  %45 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %46 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @DEFAULT_BMI_DISP_TH, align 4
  %48 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %49 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @DEFAULT_QMI_ENQ_DISP_TH, align 4
  %51 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %52 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @DEFAULT_QMI_DEQ_DISP_TH, align 4
  %54 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %55 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @DEFAULT_FM_CTL1_DISP_TH, align 4
  %57 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %58 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @DEFAULT_FM_CTL2_DISP_TH, align 4
  %60 = load %struct.fman_cfg*, %struct.fman_cfg** %2, align 8
  %61 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  ret void
}

declare dso_local i32 @memset(%struct.fman_cfg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
