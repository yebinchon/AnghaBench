; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_fecparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_fecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i32, i32 }
%struct.port_info = type { %struct.link_config }
%struct.link_config = type { i32, i32 }

@ETHTOOL_FEC_OFF = common dso_local global i32 0, align 4
@ETHTOOL_FEC_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @get_fecparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fecparam(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_fecparam*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.link_config*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.port_info* @netdev_priv(%struct.net_device* %7)
  store %struct.port_info* %8, %struct.port_info** %5, align 8
  %9 = load %struct.port_info*, %struct.port_info** %5, align 8
  %10 = getelementptr inbounds %struct.port_info, %struct.port_info* %9, i32 0, i32 0
  store %struct.link_config* %10, %struct.link_config** %6, align 8
  %11 = load %struct.link_config*, %struct.link_config** %6, align 8
  %12 = getelementptr inbounds %struct.link_config, %struct.link_config* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fwcap_to_eth_fec(i32 %13)
  %15 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETHTOOL_FEC_OFF, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @ETHTOOL_FEC_AUTO, align 4
  %24 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.link_config*, %struct.link_config** %6, align 8
  %30 = getelementptr inbounds %struct.link_config, %struct.link_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cc_to_eth_fec(i32 %31)
  %33 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  ret i32 0
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fwcap_to_eth_fec(i32) #1

declare dso_local i32 @cc_to_eth_fec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
