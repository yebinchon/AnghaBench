; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_force_link_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_force_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32, i64, i32 }

@PHY_POLL_LINK_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_instance*)* @emac_force_link_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_force_link_update(%struct.emac_instance* %0) #0 {
  %2 = alloca %struct.emac_instance*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %2, align 8
  %3 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %4 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @netif_carrier_off(i32 %5)
  %7 = call i32 (...) @smp_rmb()
  %8 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %9 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %14 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %13, i32 0, i32 0
  %15 = call i32 @cancel_delayed_work_sync(i32* %14)
  %16 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %17 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %22 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %21, i32 0, i32 0
  %23 = load i32, i32* @PHY_POLL_LINK_OFF, align 4
  %24 = call i32 @schedule_delayed_work(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %12
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
