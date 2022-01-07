; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_dataend_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_dataend_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }
%struct.renesas_sdhi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @renesas_sdhi_sys_dmac_dataend_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_sys_dmac_dataend_dma(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.renesas_sdhi*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %4 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %5 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %4)
  store %struct.renesas_sdhi* %5, %struct.renesas_sdhi** %3, align 8
  %6 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %3, align 8
  %7 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @complete(i32* %8)
  ret void
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
