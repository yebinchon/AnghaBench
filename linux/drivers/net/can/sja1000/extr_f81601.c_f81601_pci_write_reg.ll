; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_f81601.c_f81601_pci_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_f81601.c_f81601_pci_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { i64, %struct.f81601_pci_card* }
%struct.f81601_pci_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sja1000_priv*, i32, i32)* @f81601_pci_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f81601_pci_write_reg(%struct.sja1000_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sja1000_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f81601_pci_card*, align 8
  %8 = alloca i64, align 8
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %10 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %9, i32 0, i32 1
  %11 = load %struct.f81601_pci_card*, %struct.f81601_pci_card** %10, align 8
  store %struct.f81601_pci_card* %11, %struct.f81601_pci_card** %7, align 8
  %12 = load %struct.f81601_pci_card*, %struct.f81601_pci_card** %7, align 8
  %13 = getelementptr inbounds %struct.f81601_pci_card, %struct.f81601_pci_card* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %18 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writeb(i32 %16, i64 %22)
  %24 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %25 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @readb(i64 %26)
  %28 = load %struct.f81601_pci_card*, %struct.f81601_pci_card** %7, align 8
  %29 = getelementptr inbounds %struct.f81601_pci_card, %struct.f81601_pci_card* %28, i32 0, i32 0
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
