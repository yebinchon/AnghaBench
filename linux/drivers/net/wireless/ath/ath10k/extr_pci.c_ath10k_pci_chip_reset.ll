; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32 (%struct.ath10k.0*)* }
%struct.ath10k.0 = type opaque

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_chip_reset(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %5)
  store %struct.ath10k_pci* %6, %struct.ath10k_pci** %4, align 8
  %7 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %8 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %7, i32 0, i32 0
  %9 = load i32 (%struct.ath10k.0*)*, i32 (%struct.ath10k.0*)** %8, align 8
  %10 = icmp ne i32 (%struct.ath10k.0*)* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %19, i32 0, i32 0
  %21 = load i32 (%struct.ath10k.0*)*, i32 (%struct.ath10k.0*)** %20, align 8
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = bitcast %struct.ath10k* %22 to %struct.ath10k.0*
  %24 = call i32 %21(%struct.ath10k.0* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
