; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { %struct.TYPE_6__, %struct.mmc_data* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_mci*)* @atmci_dma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_dma_cleanup(%struct.atmel_mci* %0) #0 {
  %2 = alloca %struct.atmel_mci*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  store %struct.atmel_mci* %0, %struct.atmel_mci** %2, align 8
  %4 = load %struct.atmel_mci*, %struct.atmel_mci** %2, align 8
  %5 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %4, i32 0, i32 1
  %6 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  store %struct.mmc_data* %6, %struct.mmc_data** %3, align 8
  %7 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %8 = icmp ne %struct.mmc_data* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.atmel_mci*, %struct.atmel_mci** %2, align 8
  %11 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %25 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %24)
  %26 = call i32 @dma_unmap_sg(i32 %17, i32 %20, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
