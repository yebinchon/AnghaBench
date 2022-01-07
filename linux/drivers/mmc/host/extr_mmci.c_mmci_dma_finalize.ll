; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_dma_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_dma_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mmci_host*, %struct.mmc_data*)* }
%struct.mmc_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmci_dma_finalize(%struct.mmci_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.mmci_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.mmci_host* %0, %struct.mmci_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %5 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %6 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %31

10:                                               ; preds = %2
  %11 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %12 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.mmci_host*, %struct.mmc_data*)*, i32 (%struct.mmci_host*, %struct.mmc_data*)** %19, align 8
  %21 = icmp ne i32 (%struct.mmci_host*, %struct.mmc_data*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mmci_host*, %struct.mmc_data*)*, i32 (%struct.mmci_host*, %struct.mmc_data*)** %26, align 8
  %28 = load %struct.mmci_host*, %struct.mmci_host** %3, align 8
  %29 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %30 = call i32 %27(%struct.mmci_host* %28, %struct.mmc_data* %29)
  br label %31

31:                                               ; preds = %9, %22, %15, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
