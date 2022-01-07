; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.bnx2 = type { i32 }

@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_ALL_TSO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_KEEP_VLAN_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnx2_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnx2* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2* %8, %struct.bnx2** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NETIF_F_ALL_TSO, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @NETIF_F_ALL_TSO, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %13
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = icmp ne i32 %37, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %30
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i64 @netif_running(%struct.net_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %54 = call i32 @bnx2_netif_stop(%struct.bnx2* %53, i32 0)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @bnx2_set_rx_mode(%struct.net_device* %58)
  %60 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %61 = load i32, i32* @BNX2_DRV_MSG_CODE_KEEP_VLAN_UPDATE, align 4
  %62 = call i32 @bnx2_fw_sync(%struct.bnx2* %60, i32 %61, i32 0, i32 1)
  %63 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %64 = call i32 @bnx2_netif_start(%struct.bnx2* %63, i32 0)
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %48, %30
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2_netif_stop(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @bnx2_fw_sync(%struct.bnx2*, i32, i32, i32) #1

declare dso_local i32 @bnx2_netif_start(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
