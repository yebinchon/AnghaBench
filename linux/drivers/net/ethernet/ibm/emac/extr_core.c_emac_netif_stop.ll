; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_netif_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_netif_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_instance*)* @emac_netif_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_netif_stop(%struct.emac_instance* %0) #0 {
  %2 = alloca %struct.emac_instance*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %2, align 8
  %3 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %4 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @netif_tx_lock_bh(i32 %5)
  %7 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %8 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @netif_addr_lock(i32 %9)
  %11 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %12 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %14 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_addr_unlock(i32 %15)
  %17 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %18 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_tx_unlock_bh(i32 %19)
  %21 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %22 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_trans_update(i32 %23)
  %25 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %26 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %29 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %28, i32 0, i32 2
  %30 = call i32 @mal_poll_disable(i32 %27, i32* %29)
  %31 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %32 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_tx_disable(i32 %33)
  ret void
}

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @netif_addr_lock(i32) #1

declare dso_local i32 @netif_addr_unlock(i32) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

declare dso_local i32 @netif_trans_update(i32) #1

declare dso_local i32 @mal_poll_disable(i32, i32*) #1

declare dso_local i32 @netif_tx_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
