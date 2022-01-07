; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_dma_tx_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_dma_tx_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_dma_tx_suspend(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %3 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %4 = call i32 @b43legacy_power_saving_ctl_bits(%struct.b43legacy_wldev* %3, i32 -1, i32 1)
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @b43legacy_dma_tx_suspend_ring(i32 %8)
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @b43legacy_dma_tx_suspend_ring(i32 %13)
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @b43legacy_dma_tx_suspend_ring(i32 %18)
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @b43legacy_dma_tx_suspend_ring(i32 %23)
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %26 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @b43legacy_dma_tx_suspend_ring(i32 %28)
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %31 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @b43legacy_dma_tx_suspend_ring(i32 %33)
  ret void
}

declare dso_local i32 @b43legacy_power_saving_ctl_bits(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_dma_tx_suspend_ring(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
