; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_set_fec_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_set_fec_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_eth_table_port = type { i32 }
%struct.ethtool_link_ksettings = type { i32 }

@supported = common dso_local global i32 0, align 4
@FEC_NONE = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@NFP_FEC_BASER = common dso_local global i32 0, align 4
@FEC_BASER = common dso_local global i32 0, align 4
@NFP_FEC_REED_SOLOMON = common dso_local global i32 0, align 4
@FEC_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_eth_table_port*, %struct.ethtool_link_ksettings*)* @nfp_net_set_fec_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_set_fec_link_mode(%struct.nfp_eth_table_port* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.nfp_eth_table_port*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_eth_table_port* %0, %struct.nfp_eth_table_port** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %6 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %7 = load i32, i32* @supported, align 4
  %8 = load i32, i32* @FEC_NONE, align 4
  %9 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %6, i32 %7, i32 %8)
  %10 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %3, align 8
  %11 = call i32 @nfp_eth_can_support_fec(%struct.nfp_eth_table_port* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %15 = load i32, i32* @advertising, align 4
  %16 = load i32, i32* @FEC_NONE, align 4
  %17 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %14, i32 %15, i32 %16)
  br label %48

18:                                               ; preds = %2
  %19 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %3, align 8
  %20 = call i32 @nfp_eth_supported_fec_modes(%struct.nfp_eth_table_port* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NFP_FEC_BASER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %27 = load i32, i32* @supported, align 4
  %28 = load i32, i32* @FEC_BASER, align 4
  %29 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %26, i32 %27, i32 %28)
  %30 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %31 = load i32, i32* @advertising, align 4
  %32 = load i32, i32* @FEC_BASER, align 4
  %33 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %18
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @NFP_FEC_REED_SOLOMON, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %41 = load i32, i32* @supported, align 4
  %42 = load i32, i32* @FEC_RS, align 4
  %43 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %40, i32 %41, i32 %42)
  %44 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %45 = load i32, i32* @advertising, align 4
  %46 = load i32, i32* @FEC_RS, align 4
  %47 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %13, %39, %34
  ret void
}

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

declare dso_local i32 @nfp_eth_can_support_fec(%struct.nfp_eth_table_port*) #1

declare dso_local i32 @nfp_eth_supported_fec_modes(%struct.nfp_eth_table_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
