; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_targ_cpu_to_ce_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_targ_cpu_to_ce_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32 (%struct.ath10k.0*, i32)* }
%struct.ath10k.0 = type opaque

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_pci_targ_cpu_to_ce_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_targ_cpu_to_ce_addr(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k_pci*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %8 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %7)
  store %struct.ath10k_pci* %8, %struct.ath10k_pci** %6, align 8
  %9 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %10 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %9, i32 0, i32 0
  %11 = load i32 (%struct.ath10k.0*, i32)*, i32 (%struct.ath10k.0*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.ath10k.0*, i32)* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.ath10k_pci*, %struct.ath10k_pci** %6, align 8
  %22 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %21, i32 0, i32 0
  %23 = load i32 (%struct.ath10k.0*, i32)*, i32 (%struct.ath10k.0*, i32)** %22, align 8
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = bitcast %struct.ath10k* %24 to %struct.ath10k.0*
  %26 = load i32, i32* %5, align 4
  %27 = call i32 %23(%struct.ath10k.0* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
