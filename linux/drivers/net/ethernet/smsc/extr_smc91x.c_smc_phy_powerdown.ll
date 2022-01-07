; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91x.c_smc_phy_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91x.c_smc_phy_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smc_local = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smc_phy_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_phy_powerdown(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smc_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.smc_local* @netdev_priv(%struct.net_device* %6)
  store %struct.smc_local* %7, %struct.smc_local** %3, align 8
  %8 = load %struct.smc_local*, %struct.smc_local** %3, align 8
  %9 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.smc_local*, %struct.smc_local** %3, align 8
  %13 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.smc_local*, %struct.smc_local** %3, align 8
  %19 = getelementptr inbounds %struct.smc_local, %struct.smc_local* %18, i32 0, i32 1
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MII_BMCR, align 4
  %24 = call i32 @smc_phy_read(%struct.net_device* %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MII_BMCR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BMCR_PDOWN, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @smc_phy_write(%struct.net_device* %25, i32 %26, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.smc_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @smc_phy_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @smc_phy_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
