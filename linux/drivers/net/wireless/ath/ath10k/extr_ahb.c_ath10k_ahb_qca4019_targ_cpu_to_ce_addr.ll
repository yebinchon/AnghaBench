; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_qca4019_targ_cpu_to_ce_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_qca4019_targ_cpu_to_ce_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@PCIE_BAR_REG_ADDRESS = common dso_local global i32 0, align 4
@QCA4019_SRAM_ADDR = common dso_local global i32 0, align 4
@QCA4019_SRAM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_ahb_qca4019_targ_cpu_to_ce_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ahb_qca4019_targ_cpu_to_ce_addr(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 1048575
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load i32, i32* @PCIE_BAR_REG_ADDRESS, align 4
  %11 = call i32 @ath10k_pci_read32(%struct.ath10k* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @QCA4019_SRAM_ADDR, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @QCA4019_SRAM_ADDR, align 4
  %18 = load i32, i32* @QCA4019_SRAM_LEN, align 4
  %19 = add nsw i32 %17, %18
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %30

25:                                               ; preds = %15, %2
  %26 = load i32, i32* %6, align 4
  %27 = or i32 1048576, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @ath10k_pci_read32(%struct.ath10k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
