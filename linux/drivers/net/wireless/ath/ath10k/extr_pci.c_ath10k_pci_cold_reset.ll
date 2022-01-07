; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_cold_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_cold_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"boot cold reset\0A\00", align 1
@SOC_GLOBAL_RESET_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"boot cold reset complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_cold_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_cold_reset(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %4 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %5 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %6 = call i32 @ath10k_dbg(%struct.ath10k* %4, i32 %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock_bh(i32* %16)
  %18 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %19 = load i32, i32* @SOC_GLOBAL_RESET_ADDRESS, align 4
  %20 = call i32 @ath10k_pci_reg_read32(%struct.ath10k* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %24 = load i32, i32* @SOC_GLOBAL_RESET_ADDRESS, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ath10k_pci_reg_write32(%struct.ath10k* %23, i32 %24, i32 %25)
  %27 = call i32 @msleep(i32 20)
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, -2
  store i32 %29, i32* %3, align 4
  %30 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %31 = load i32, i32* @SOC_GLOBAL_RESET_ADDRESS, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ath10k_pci_reg_write32(%struct.ath10k* %30, i32 %31, i32 %32)
  %34 = call i32 @msleep(i32 20)
  %35 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %36 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %37 = call i32 @ath10k_dbg(%struct.ath10k* %35, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_pci_reg_read32(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_pci_reg_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
