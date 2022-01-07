; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_tx_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_tx_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32 }
%struct.bcm_sysport_tx_ring = type { i32, i32 }
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sysport_priv*, %struct.bcm_sysport_tx_ring*)* @bcm_sysport_tx_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_tx_reclaim(%struct.bcm_sysport_priv* %0, %struct.bcm_sysport_tx_ring* %1) #0 {
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca %struct.bcm_sysport_tx_ring*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %3, align 8
  store %struct.bcm_sysport_tx_ring* %1, %struct.bcm_sysport_tx_ring** %4, align 8
  %8 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %9 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %10, i32 %13)
  store %struct.netdev_queue* %14, %struct.netdev_queue** %5, align 8
  %15 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %20 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %21 = call i32 @__bcm_sysport_tx_reclaim(%struct.bcm_sysport_priv* %19, %struct.bcm_sysport_tx_ring* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %26 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %4, align 8
  %29 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__bcm_sysport_tx_reclaim(%struct.bcm_sysport_priv*, %struct.bcm_sysport_tx_ring*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
