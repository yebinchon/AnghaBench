; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_dbdma_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_dbdma_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, i32, i32 }

@HOST_F_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*)* @au1xmmc_dbdma_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_dbdma_shutdown(%struct.au1xmmc_host* %0) #0 {
  %2 = alloca %struct.au1xmmc_host*, align 8
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %2, align 8
  %3 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %4 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @HOST_F_DMA, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @HOST_F_DMA, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @au1xxx_dbdma_chan_free(i32 %18)
  %20 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %21 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @au1xxx_dbdma_chan_free(i32 %22)
  br label %24

24:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @au1xxx_dbdma_chan_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
