; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_sdmmc_idma_prep_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_sdmmc_idma_prep_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i64 }
%struct.mmc_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmci_host*, %struct.mmc_data*, i32)* @sdmmc_idma_prep_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdmmc_idma_prep_data(%struct.mmci_host* %0, %struct.mmc_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmci_host*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.mmci_host* %0, %struct.mmci_host** %5, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %12 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %15 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %23

19:                                               ; preds = %10, %3
  %20 = load %struct.mmci_host*, %struct.mmci_host** %5, align 8
  %21 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %22 = call i32 @_sdmmc_idma_prep_data(%struct.mmci_host* %20, %struct.mmc_data* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @_sdmmc_idma_prep_data(%struct.mmci_host*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
