; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_dma_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_dma_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mmci_host*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmci_dma_error(%struct.mmci_host* %0) #0 {
  %2 = alloca %struct.mmci_host*, align 8
  store %struct.mmci_host* %0, %struct.mmci_host** %2, align 8
  %3 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %4 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %10 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %15 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.mmci_host*)*, i32 (%struct.mmci_host*)** %17, align 8
  %19 = icmp ne i32 (%struct.mmci_host*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %22 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.mmci_host*)*, i32 (%struct.mmci_host*)** %24, align 8
  %26 = load %struct.mmci_host*, %struct.mmci_host** %2, align 8
  %27 = call i32 %25(%struct.mmci_host* %26)
  br label %28

28:                                               ; preds = %7, %20, %13, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
