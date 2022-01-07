; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.bnx2 = type { i32, i32, i32, i32 }

@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@AUTONEG_FLOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @bnx2_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.bnx2*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bnx2* @netdev_priv(%struct.net_device* %6)
  store %struct.bnx2* %7, %struct.bnx2** %5, align 8
  %8 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 3
  store i32 0, i32* %9, align 4
  %10 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @FLOW_CTRL_RX, align 4
  %16 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @FLOW_CTRL_TX, align 4
  %27 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @AUTONEG_FLOW_CTRL, align 4
  %38 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %49

42:                                               ; preds = %31
  %43 = load i32, i32* @AUTONEG_FLOW_CTRL, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %46 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i64 @netif_running(%struct.net_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %55 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %58 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %59 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bnx2_setup_phy(%struct.bnx2* %57, i32 %60)
  %62 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %63 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock_bh(i32* %63)
  br label %65

65:                                               ; preds = %53, %49
  ret i32 0
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bnx2_setup_phy(%struct.bnx2*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
