; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ptp.c_dpaa2_ptp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ptp.c_dpaa2_ptp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.ptp_qoriq = type { i32 }

@dpaa2_phc_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @dpaa2_ptp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_ptp_remove(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca %struct.fsl_mc_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ptp_qoriq*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %2, align 8
  %5 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %6 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %5, i32 0, i32 2
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ptp_qoriq* @dev_get_drvdata(%struct.device* %7)
  store %struct.ptp_qoriq* %8, %struct.ptp_qoriq** %4, align 8
  store i32 -1, i32* @dpaa2_phc_index, align 4
  %9 = load %struct.ptp_qoriq*, %struct.ptp_qoriq** %4, align 8
  %10 = call i32 @ptp_qoriq_free(%struct.ptp_qoriq* %9)
  %11 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %12 = call i32 @fsl_mc_free_irqs(%struct.fsl_mc_device* %11)
  %13 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %14 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dprtc_close(i32 %15, i32 0, i32 %18)
  %20 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fsl_mc_portal_free(i32 %22)
  ret i32 0
}

declare dso_local %struct.ptp_qoriq* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ptp_qoriq_free(%struct.ptp_qoriq*) #1

declare dso_local i32 @fsl_mc_free_irqs(%struct.fsl_mc_device*) #1

declare dso_local i32 @dprtc_close(i32, i32, i32) #1

declare dso_local i32 @fsl_mc_portal_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
