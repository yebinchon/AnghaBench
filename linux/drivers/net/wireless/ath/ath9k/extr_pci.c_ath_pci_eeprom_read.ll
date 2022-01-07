; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.ath_hw*, i64)* }
%struct.ath_hw = type { i32 }

@AR5416_EEPROM_OFFSET = common dso_local global i64 0, align 8
@AR5416_EEPROM_S = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA = common dso_local global i64 0, align 8
@AR_EEPROM_STATUS_DATA_BUSY = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA_PROT_ACCESS = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, i32, i32*)* @ath_pci_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_pci_eeprom_read(%struct.ath_common* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath_hw*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ath_hw*
  store %struct.ath_hw* %12, %struct.ath_hw** %8, align 8
  %13 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %14 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ath_hw*, i64)*, i32 (%struct.ath_hw*, i64)** %16, align 8
  %18 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %19 = load i64, i64* @AR5416_EEPROM_OFFSET, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AR5416_EEPROM_S, align 4
  %22 = shl i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = call i32 %17(%struct.ath_hw* %18, i64 %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %27 = load i64, i64* @AR_EEPROM_STATUS_DATA, align 8
  %28 = load i32, i32* @AR_EEPROM_STATUS_DATA_BUSY, align 4
  %29 = load i32, i32* @AR_EEPROM_STATUS_DATA_PROT_ACCESS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %32 = call i32 @ath9k_hw_wait(%struct.ath_hw* %26, i64 %27, i32 %30, i32 0, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

35:                                               ; preds = %3
  %36 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %37 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.ath_hw*, i64)*, i32 (%struct.ath_hw*, i64)** %39, align 8
  %41 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %42 = load i64, i64* @AR_EEPROM_STATUS_DATA, align 8
  %43 = call i32 %40(%struct.ath_hw* %41, i64 %42)
  %44 = load i32, i32* @AR_EEPROM_STATUS_DATA_VAL, align 4
  %45 = call i32 @MS(i32 %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %35, %34
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i64, i32, i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
