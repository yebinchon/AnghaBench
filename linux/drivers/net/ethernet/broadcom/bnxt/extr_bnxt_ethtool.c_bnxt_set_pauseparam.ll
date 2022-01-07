; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.bnxt = type { i32, %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BNXT_AUTONEG_SPEED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNXT_AUTONEG_FLOW_CTRL = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE = common dso_local global i32 0, align 4
@BNXT_LINK_PAUSE_RX = common dso_local global i32 0, align 4
@BNXT_LINK_PAUSE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @bnxt_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca %struct.bnxt_link_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bnxt* @netdev_priv(%struct.net_device* %9)
  store %struct.bnxt* %10, %struct.bnxt** %7, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 1
  store %struct.bnxt_link_info* %12, %struct.bnxt_link_info** %8, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %14 = call i32 @BNXT_SINGLE_PF(%struct.bnxt* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %99

19:                                               ; preds = %2
  %20 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %26 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BNXT_AUTONEG_SPEED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %99

34:                                               ; preds = %24
  %35 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %36 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %37 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 66049
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @PORT_PHY_CFG_REQ_AUTO_PAUSE_AUTONEG_PAUSE, align 4
  %46 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %47 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %34
  br label %68

49:                                               ; preds = %19
  %50 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %51 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %58 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %63 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %67 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %66, i32 0, i32 2
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %59, %48
  %69 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @BNXT_LINK_PAUSE_RX, align 4
  %75 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %76 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @BNXT_LINK_PAUSE_TX, align 4
  %86 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %8, align 8
  %87 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i64 @netif_running(%struct.net_device* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %96 = call i32 @bnxt_hwrm_set_pause(%struct.bnxt* %95)
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %31, %16
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BNXT_SINGLE_PF(%struct.bnxt*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnxt_hwrm_set_pause(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
