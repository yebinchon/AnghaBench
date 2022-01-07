; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.bnxt = type { %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i32, i32 }

@BNXT_AUTONEG_FLOW_CTRL = common dso_local global i32 0, align 4
@BNXT_LINK_PAUSE_RX = common dso_local global i32 0, align 4
@BNXT_LINK_PAUSE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @bnxt_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_link_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bnxt* @netdev_priv(%struct.net_device* %7)
  store %struct.bnxt* %8, %struct.bnxt** %5, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 0
  store %struct.bnxt_link_info* %10, %struct.bnxt_link_info** %6, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %12 = call i64 @BNXT_VF(%struct.bnxt* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %17 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BNXT_LINK_PAUSE_RX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %39 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BNXT_LINK_PAUSE_TX, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @BNXT_VF(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
