; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_board_info = type { i64 }

@EMAC_RX_CTL_REG = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4
@EMAC_RX_CTL_PASS_ALL_EN = common dso_local global i32 0, align 4
@EMAC_RX_CTL_PASS_LEN_OOR_EN = common dso_local global i32 0, align 4
@EMAC_RX_CTL_ACCEPT_UNICAST_EN = common dso_local global i32 0, align 4
@EMAC_RX_CTL_DA_FILTER_EN = common dso_local global i32 0, align 4
@EMAC_RX_CTL_ACCEPT_MULTICAST_EN = common dso_local global i32 0, align 4
@EMAC_RX_CTL_ACCEPT_BROADCAST_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @emac_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_board_info*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %5)
  store %struct.emac_board_info* %6, %struct.emac_board_info** %3, align 8
  %7 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %8 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EMAC_RX_CTL_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_PROMISC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @EMAC_RX_CTL_PASS_ALL_EN, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @EMAC_RX_CTL_PASS_ALL_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @EMAC_RX_CTL_PASS_LEN_OOR_EN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @EMAC_RX_CTL_ACCEPT_UNICAST_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @EMAC_RX_CTL_DA_FILTER_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @EMAC_RX_CTL_ACCEPT_MULTICAST_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @EMAC_RX_CTL_ACCEPT_BROADCAST_EN, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %41 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EMAC_RX_CTL_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  ret void
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
