; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath_usb_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath_usb_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i64 }
%struct.ath_hw = type { i32 }

@AR5416_EEPROM_OFFSET = common dso_local global i64 0, align 8
@AR5416_EEPROM_S = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA = common dso_local global i64 0, align 8
@AR_EEPROM_STATUS_DATA_BUSY = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA_PROT_ACCESS = common dso_local global i32 0, align 4
@AH_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@AR_EEPROM_STATUS_DATA_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, i32, i32*)* @ath_usb_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_usb_eeprom_read(%struct.ath_common* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath_hw*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ath_hw*
  store %struct.ath_hw* %12, %struct.ath_hw** %8, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %14 = load i64, i64* @AR5416_EEPROM_OFFSET, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AR5416_EEPROM_S, align 4
  %17 = shl i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = call i32 @REG_READ(%struct.ath_hw* %13, i64 %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %22 = load i64, i64* @AR_EEPROM_STATUS_DATA, align 8
  %23 = load i32, i32* @AR_EEPROM_STATUS_DATA_BUSY, align 4
  %24 = load i32, i32* @AR_EEPROM_STATUS_DATA_PROT_ACCESS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AH_WAIT_TIMEOUT, align 4
  %27 = call i32 @ath9k_hw_wait(%struct.ath_hw* %21, i64 %22, i32 %25, i32 0, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

30:                                               ; preds = %3
  %31 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %32 = load i64, i64* @AR_EEPROM_STATUS_DATA, align 8
  %33 = call i32 @REG_READ(%struct.ath_hw* %31, i64 %32)
  %34 = load i32, i32* @AR_EEPROM_STATUS_DATA_VAL, align 4
  %35 = call i32 @MS(i32 %33, i32 %34)
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %29
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i64, i32, i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
