; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_warm_reset_clear_lf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_warm_reset_clear_lf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@RTC_SOC_BASE_ADDRESS = common dso_local global i64 0, align 8
@SOC_LF_TIMER_CONTROL0_ADDRESS = common dso_local global i64 0, align 8
@SOC_LF_TIMER_CONTROL0_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_pci_warm_reset_clear_lf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_warm_reset_clear_lf(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %4 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %5 = load i64, i64* @RTC_SOC_BASE_ADDRESS, align 8
  %6 = load i64, i64* @SOC_LF_TIMER_CONTROL0_ADDRESS, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @ath10k_pci_read32(%struct.ath10k* %4, i64 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %10 = load i64, i64* @RTC_SOC_BASE_ADDRESS, align 8
  %11 = load i64, i64* @SOC_LF_TIMER_CONTROL0_ADDRESS, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SOC_LF_TIMER_CONTROL0_ENABLE_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @ath10k_pci_write32(%struct.ath10k* %9, i64 %12, i32 %16)
  ret void
}

declare dso_local i32 @ath10k_pci_read32(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_pci_write32(%struct.ath10k*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
