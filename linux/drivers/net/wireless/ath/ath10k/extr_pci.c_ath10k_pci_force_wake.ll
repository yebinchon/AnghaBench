; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_force_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_force_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32, i32, i64, i64 }

@PCIE_SOC_WAKE_V_MASK = common dso_local global i32 0, align 4
@PCIE_LOCAL_BASE_ADDRESS = common dso_local global i64 0, align 8
@PCIE_SOC_WAKE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_force_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_force_wake(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %7)
  store %struct.ath10k_pci* %8, %struct.ath10k_pci** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %16, i32 0, i32 1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @PCIE_SOC_WAKE_V_MASK, align 4
  %26 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %27 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCIE_LOCAL_BASE_ADDRESS, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @PCIE_SOC_WAKE_ADDRESS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite32(i32 %25, i64 %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = call i32 @ath10k_pci_wake_wait(%struct.ath10k* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %40 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %24
  br label %42

42:                                               ; preds = %41, %15
  %43 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %44 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %43, i32 0, i32 1
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ath10k_pci_wake_wait(%struct.ath10k*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
