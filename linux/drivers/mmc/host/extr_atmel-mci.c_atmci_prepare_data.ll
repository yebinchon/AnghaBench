; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_prepare_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_atmel-mci.c_atmci_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { i32, i64, i32*, %struct.mmc_data*, i32, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ATMCI_DATA_ERROR_FLAGS = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@ATMCI_RXRDY = common dso_local global i32 0, align 4
@ATMCI_TXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_mci*, %struct.mmc_data*)* @atmci_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmci_prepare_data(%struct.atmel_mci* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.atmel_mci*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.atmel_mci* %0, %struct.atmel_mci** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load i32, i32* @EINPROGRESS, align 4
  %7 = sub nsw i32 0, %6
  %8 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %21 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %21, i32 0, i32 3
  store %struct.mmc_data* %20, %struct.mmc_data** %22, align 8
  %23 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @ATMCI_DATA_ERROR_FLAGS, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = icmp slt i32 %32, 12
  br i1 %33, label %44, label %34

34:                                               ; preds = %2
  %35 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = and i32 %41, 3
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34, %2
  %45 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %46 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.atmel_mci*, %struct.atmel_mci** %3, align 8
  %49 = getelementptr inbounds %struct.atmel_mci, %struct.atmel_mci* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MMC_DATA_READ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @ATMCI_RXRDY, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %64

60:                                               ; preds = %47
  %61 = load i32, i32* @ATMCI_TXRDY, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
