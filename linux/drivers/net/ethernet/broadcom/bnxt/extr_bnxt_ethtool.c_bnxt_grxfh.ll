; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_grxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_grxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4 = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6 = common dso_local global i32 0, align 4
@VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.ethtool_rxnfc*)* @bnxt_grxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_grxfh(%struct.bnxt* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %5 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %116 [
    i32 131, label %10
    i32 129, label %36
    i32 133, label %56
    i32 141, label %56
    i32 139, label %56
    i32 137, label %56
    i32 135, label %56
    i32 130, label %63
    i32 128, label %89
    i32 132, label %109
    i32 140, label %109
    i32 138, label %109
    i32 136, label %109
    i32 134, label %109
  ]

10:                                               ; preds = %2
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %10
  %18 = load i32, i32* @RXH_IP_SRC, align 4
  %19 = load i32, i32* @RXH_IP_DST, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RXH_L4_B_0_1, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RXH_L4_B_2_3, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %17, %10
  %30 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %31 = call i32 @get_ethtool_ipv4_rss(%struct.bnxt* %30)
  %32 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %116

36:                                               ; preds = %2
  %37 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %38 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load i32, i32* @RXH_IP_SRC, align 4
  %45 = load i32, i32* @RXH_IP_DST, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RXH_L4_B_0_1, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RXH_L4_B_2_3, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %43, %36
  br label %56

56:                                               ; preds = %2, %2, %2, %2, %2, %55
  %57 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %58 = call i32 @get_ethtool_ipv4_rss(%struct.bnxt* %57)
  %59 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %116

63:                                               ; preds = %2
  %64 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load i32, i32* @RXH_IP_SRC, align 4
  %72 = load i32, i32* @RXH_IP_DST, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RXH_L4_B_0_1, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RXH_L4_B_2_3, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %70, %63
  %83 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %84 = call i32 @get_ethtool_ipv6_rss(%struct.bnxt* %83)
  %85 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %86 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %116

89:                                               ; preds = %2
  %90 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %91 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %89
  %97 = load i32, i32* @RXH_IP_SRC, align 4
  %98 = load i32, i32* @RXH_IP_DST, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @RXH_L4_B_0_1, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @RXH_L4_B_2_3, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %105 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %96, %89
  br label %109

109:                                              ; preds = %2, %2, %2, %2, %2, %108
  %110 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %111 = call i32 @get_ethtool_ipv6_rss(%struct.bnxt* %110)
  %112 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %113 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %2, %109, %82, %56, %29
  ret i32 0
}

declare dso_local i32 @get_ethtool_ipv4_rss(%struct.bnxt*) #1

declare dso_local i32 @get_ethtool_ipv6_rss(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
