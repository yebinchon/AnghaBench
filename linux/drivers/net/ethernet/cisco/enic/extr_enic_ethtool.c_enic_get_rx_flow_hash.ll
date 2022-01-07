; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_rx_flow_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_ethtool.c_enic_get_rx_flow_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_UDP_IPV6 = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_UDP_IPV4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*, %struct.ethtool_rxnfc*)* @enic_get_rx_flow_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_get_rx_flow_hash(%struct.enic* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enic*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.enic*, %struct.enic** %4, align 8
  %10 = getelementptr inbounds %struct.enic, %struct.enic* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.enic*, %struct.enic** %4, align 8
  %13 = getelementptr inbounds %struct.enic, %struct.enic* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vnic_dev_capable_rss_hash_type(i32 %14, i32* %6)
  %16 = load %struct.enic*, %struct.enic** %4, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock_bh(i32* %17)
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %84 [
    i32 130, label %22
    i32 131, label %22
    i32 128, label %34
    i32 129, label %55
    i32 133, label %76
    i32 141, label %76
    i32 139, label %76
    i32 137, label %76
    i32 132, label %76
    i32 140, label %76
    i32 138, label %76
    i32 136, label %76
    i32 135, label %76
    i32 134, label %76
  ]

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @RXH_L4_B_0_1, align 4
  %24 = load i32, i32* @RXH_L4_B_2_3, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RXH_IP_SRC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RXH_IP_DST, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %87

34:                                               ; preds = %2
  %35 = load i32, i32* @RXH_IP_SRC, align 4
  %36 = load i32, i32* @RXH_IP_DST, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_UDP_IPV6, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load i32, i32* @RXH_L4_B_0_1, align 4
  %48 = load i32, i32* @RXH_L4_B_2_3, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %34
  br label %87

55:                                               ; preds = %2
  %56 = load i32, i32* @RXH_IP_SRC, align 4
  %57 = load i32, i32* @RXH_IP_DST, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_UDP_IPV4, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %55
  %68 = load i32, i32* @RXH_L4_B_0_1, align 4
  %69 = load i32, i32* @RXH_L4_B_2_3, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %67, %55
  br label %87

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %77 = load i32, i32* @RXH_IP_SRC, align 4
  %78 = load i32, i32* @RXH_IP_DST, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %87

84:                                               ; preds = %2
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %76, %75, %54, %22
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @vnic_dev_capable_rss_hash_type(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
