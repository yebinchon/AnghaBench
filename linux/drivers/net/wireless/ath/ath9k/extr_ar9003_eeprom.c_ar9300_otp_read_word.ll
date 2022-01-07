; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_otp_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9300_otp_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@AR9300_OTP_BASE = common dso_local global i64 0, align 8
@AR9300_OTP_STATUS = common dso_local global i32 0, align 4
@AR9300_OTP_STATUS_TYPE = common dso_local global i32 0, align 4
@AR9300_OTP_STATUS_VALID = common dso_local global i32 0, align 4
@AR9300_OTP_READ_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32*)* @ar9300_otp_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9300_otp_read_word(%struct.ath_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %9 = load i64, i64* @AR9300_OTP_BASE, align 8
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 4, %10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = call i32 @REG_READ(%struct.ath_hw* %8, i64 %13)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %16 = load i32, i32* @AR9300_OTP_STATUS, align 4
  %17 = load i32, i32* @AR9300_OTP_STATUS_TYPE, align 4
  %18 = load i32, i32* @AR9300_OTP_STATUS_VALID, align 4
  %19 = call i32 @ath9k_hw_wait(%struct.ath_hw* %15, i32 %16, i32 %17, i32 %18, i32 1000)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %24 = load i64, i64* @AR9300_OTP_READ_DATA, align 8
  %25 = call i32 @REG_READ(%struct.ath_hw* %23, i64 %24)
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @REG_READ(%struct.ath_hw*, i64) #1

declare dso_local i32 @ath9k_hw_wait(%struct.ath_hw*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
