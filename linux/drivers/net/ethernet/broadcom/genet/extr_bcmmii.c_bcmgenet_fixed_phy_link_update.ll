; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_fixed_phy_link_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_fixed_phy_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.fixed_phy_status = type { i32 }
%struct.bcmgenet_priv = type { i32 }

@UMAC_MODE = common dso_local global i32 0, align 4
@MODE_LINK_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.fixed_phy_status*)* @bcmgenet_fixed_phy_link_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_fixed_phy_link_update(%struct.net_device* %0, %struct.fixed_phy_status* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fixed_phy_status*, align 8
  %5 = alloca %struct.bcmgenet_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.fixed_phy_status* %1, %struct.fixed_phy_status** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %4, align 8
  %16 = icmp ne %struct.fixed_phy_status* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.bcmgenet_priv* %19, %struct.bcmgenet_priv** %5, align 8
  %20 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %21 = load i32, i32* @UMAC_MODE, align 4
  %22 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MODE_LINK_STATUS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %4, align 8
  %31 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %17, %14, %9, %2
  ret i32 0
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
