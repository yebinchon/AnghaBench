; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_link_chg_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_link_chg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@SPEED_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_link_chg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_link_chg_event(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %6 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %12, i32 0, i32 3
  %14 = load i32, i32* @MII_BMSR, align 4
  %15 = call i32 @atl1e_read_phy_reg(i32* %13, i32 %14, i32* %4)
  %16 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %16, i32 0, i32 3
  %18 = load i32, i32* @MII_BMSR, align 4
  %19 = call i32 @atl1e_read_phy_reg(i32* %17, i32 %18, i32* %4)
  %20 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %20, i32 0, i32 2
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BMSR_LSTATUS, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i64 @netif_carrier_ok(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netdev_info(%struct.net_device* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @SPEED_0, align 4
  %36 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @netif_stop_queue(%struct.net_device* %38)
  br label %40

40:                                               ; preds = %32, %28
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %42, i32 0, i32 0
  %44 = call i32 @schedule_work(i32* %43)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atl1e_read_phy_reg(i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
