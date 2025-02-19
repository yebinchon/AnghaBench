; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_set_ram_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_set_ram_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@SOC_CORE_BASE_ADDRESS = common dso_local global i64 0, align 8
@FW_RAM_CONFIG_ADDRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to set RAM config from 0x%x to 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_pci_set_ram_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_set_ram_config(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %8 = load i64, i64* @SOC_CORE_BASE_ADDRESS, align 8
  %9 = load i64, i64* @FW_RAM_CONFIG_ADDRESS, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ath10k_pci_write32(%struct.ath10k* %7, i64 %10, i32 %11)
  %13 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %14 = load i64, i64* @SOC_CORE_BASE_ADDRESS, align 8
  %15 = load i64, i64* @FW_RAM_CONFIG_ADDRESS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ath10k_pci_read32(%struct.ath10k* %13, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ath10k_warn(%struct.ath10k* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ath10k_pci_write32(%struct.ath10k*, i64, i32) #1

declare dso_local i32 @ath10k_pci_read32(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
