; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pci.c_peak_pci_post_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_peak_pci.c_peak_pci_post_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { %struct.peak_pci_chan* }
%struct.peak_pci_chan = type { i32, i64 }

@PITA_ICR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sja1000_priv*)* @peak_pci_post_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peak_pci_post_irq(%struct.sja1000_priv* %0) #0 {
  %2 = alloca %struct.sja1000_priv*, align 8
  %3 = alloca %struct.peak_pci_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %2, align 8
  %5 = load %struct.sja1000_priv*, %struct.sja1000_priv** %2, align 8
  %6 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %5, i32 0, i32 0
  %7 = load %struct.peak_pci_chan*, %struct.peak_pci_chan** %6, align 8
  store %struct.peak_pci_chan* %7, %struct.peak_pci_chan** %3, align 8
  %8 = load %struct.peak_pci_chan*, %struct.peak_pci_chan** %3, align 8
  %9 = getelementptr inbounds %struct.peak_pci_chan, %struct.peak_pci_chan* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PITA_ICR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readw(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.peak_pci_chan*, %struct.peak_pci_chan** %3, align 8
  %16 = getelementptr inbounds %struct.peak_pci_chan, %struct.peak_pci_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.peak_pci_chan*, %struct.peak_pci_chan** %3, align 8
  %22 = getelementptr inbounds %struct.peak_pci_chan, %struct.peak_pci_chan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.peak_pci_chan*, %struct.peak_pci_chan** %3, align 8
  %25 = getelementptr inbounds %struct.peak_pci_chan, %struct.peak_pci_chan* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PITA_ICR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writew(i32 %23, i64 %28)
  br label %30

30:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
