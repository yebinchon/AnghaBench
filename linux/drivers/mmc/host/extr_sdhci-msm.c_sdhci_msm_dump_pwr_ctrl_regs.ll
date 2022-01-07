; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_dump_pwr_ctrl_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_dump_pwr_ctrl_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { %struct.sdhci_msm_offset* }
%struct.sdhci_msm_offset = type { i32, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"%s: PWRCTL_STATUS: 0x%08x | PWRCTL_MASK: 0x%08x | PWRCTL_CTL: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_msm_dump_pwr_ctrl_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_msm_dump_pwr_ctrl_regs(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.sdhci_msm_host*, align 8
  %5 = alloca %struct.sdhci_msm_offset*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %7 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %6)
  store %struct.sdhci_pltfm_host* %7, %struct.sdhci_pltfm_host** %3, align 8
  %8 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %9 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %8)
  store %struct.sdhci_msm_host* %9, %struct.sdhci_msm_host** %4, align 8
  %10 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %11 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %10, i32 0, i32 0
  %12 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %11, align 8
  store %struct.sdhci_msm_offset* %12, %struct.sdhci_msm_offset** %5, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mmc_hostname(i32 %15)
  %17 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %19 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %5, align 8
  %20 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @msm_host_readl(%struct.sdhci_msm_host* %17, %struct.sdhci_host* %18, i32 %21)
  %23 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %25 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %5, align 8
  %26 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @msm_host_readl(%struct.sdhci_msm_host* %23, %struct.sdhci_host* %24, i32 %27)
  %29 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %4, align 8
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %31 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %5, align 8
  %32 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @msm_host_readl(%struct.sdhci_msm_host* %29, %struct.sdhci_host* %30, i32 %33)
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %22, i32 %28, i32 %34)
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @msm_host_readl(%struct.sdhci_msm_host*, %struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
