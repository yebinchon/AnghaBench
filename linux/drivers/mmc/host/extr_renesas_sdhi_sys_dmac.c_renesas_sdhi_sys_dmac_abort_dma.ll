; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_abort_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_abort_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @renesas_sdhi_sys_dmac_abort_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_sys_dmac_abort_dma(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %3 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %4 = call i32 @renesas_sdhi_sys_dmac_enable_dma(%struct.tmio_mmc_host* %3, i32 0)
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @dmaengine_terminate_all(i64 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %16 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %21 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @dmaengine_terminate_all(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %26 = call i32 @renesas_sdhi_sys_dmac_enable_dma(%struct.tmio_mmc_host* %25, i32 1)
  ret void
}

declare dso_local i32 @renesas_sdhi_sys_dmac_enable_dma(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
