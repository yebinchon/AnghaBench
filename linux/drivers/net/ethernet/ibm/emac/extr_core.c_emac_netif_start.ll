; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_netif_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_netif_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_instance*)* @emac_netif_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_netif_start(%struct.emac_instance* %0) #0 {
  %2 = alloca %struct.emac_instance*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %2, align 8
  %3 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %4 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @netif_tx_lock_bh(i32 %5)
  %7 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %8 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netif_addr_lock(i32 %9)
  %11 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %12 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %14 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %19 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @netif_running(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %25 = call i32 @__emac_set_multicast_list(%struct.emac_instance* %24)
  br label %26

26:                                               ; preds = %23, %17, %1
  %27 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %28 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @netif_addr_unlock(i32 %29)
  %31 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %32 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netif_tx_unlock_bh(i32 %33)
  %35 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %36 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netif_wake_queue(i32 %37)
  %39 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %40 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %43 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %42, i32 0, i32 0
  %44 = call i32 @mal_poll_enable(i32 %41, i32* %43)
  ret void
}

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @netif_addr_lock(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @__emac_set_multicast_list(%struct.emac_instance*) #1

declare dso_local i32 @netif_addr_unlock(i32) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @mal_poll_enable(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
