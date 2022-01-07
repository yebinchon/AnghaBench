; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_mdio.c_xge_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_mdio.c_xge_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64 }
%struct.xge_pdata = type { i64 }

@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xge_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xge_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xge_pdata*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %5)
  store %struct.xge_pdata* %6, %struct.xge_pdata** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  store %struct.phy_device* %9, %struct.phy_device** %4, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %27 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %29 = call i32 @xge_mac_set_speed(%struct.xge_pdata* %28)
  %30 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %31 = call i32 @xge_mac_enable(%struct.xge_pdata* %30)
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = call i32 @phy_print_status(%struct.phy_device* %32)
  br label %34

34:                                               ; preds = %22, %14
  br label %50

35:                                               ; preds = %1
  %36 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %37 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPEED_UNKNOWN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i64, i64* @SPEED_UNKNOWN, align 8
  %43 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %44 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %46 = call i32 @xge_mac_disable(%struct.xge_pdata* %45)
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = call i32 @phy_print_status(%struct.phy_device* %47)
  br label %49

49:                                               ; preds = %41, %35
  br label %50

50:                                               ; preds = %49, %34
  ret void
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xge_mac_set_speed(%struct.xge_pdata*) #1

declare dso_local i32 @xge_mac_enable(%struct.xge_pdata*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @xge_mac_disable(%struct.xge_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
