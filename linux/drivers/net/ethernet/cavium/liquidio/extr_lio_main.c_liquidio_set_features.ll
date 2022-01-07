; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { i32, i32 }

@NETIF_F_LRO = common dso_local global i32 0, align 4
@OCTNET_CMD_LRO_ENABLE = common dso_local global i32 0, align 4
@OCTNIC_LROIPV4 = common dso_local global i32 0, align 4
@OCTNIC_LROIPV6 = common dso_local global i32 0, align 4
@OCTNET_CMD_LRO_DISABLE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@OCTNET_CMD_TNL_RX_CSUM_CTL = common dso_local global i32 0, align 4
@OCTNET_CMD_RXCSUM_ENABLE = common dso_local global i32 0, align 4
@OCTNET_CMD_RXCSUM_DISABLE = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@OCTNET_CMD_VLAN_FILTER_CTL = common dso_local global i32 0, align 4
@OCTNET_CMD_VLAN_FILTER_ENABLE = common dso_local global i32 0, align 4
@OCTNET_CMD_VLAN_FILTER_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @liquidio_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lio*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.lio* @netdev_priv(%struct.net_device* %6)
  store %struct.lio* %7, %struct.lio** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NETIF_F_LRO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.lio*, %struct.lio** %5, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NETIF_F_LRO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NETIF_F_LRO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* @OCTNET_CMD_LRO_ENABLE, align 4
  %29 = load i32, i32* @OCTNIC_LROIPV4, align 4
  %30 = load i32, i32* @OCTNIC_LROIPV6, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @liquidio_set_feature(%struct.net_device* %27, i32 %28, i32 %31)
  br label %60

33:                                               ; preds = %19, %12, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NETIF_F_LRO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %33
  %39 = load %struct.lio*, %struct.lio** %5, align 8
  %40 = getelementptr inbounds %struct.lio, %struct.lio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NETIF_F_LRO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NETIF_F_LRO, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = load i32, i32* @OCTNET_CMD_LRO_DISABLE, align 4
  %55 = load i32, i32* @OCTNIC_LROIPV4, align 4
  %56 = load i32, i32* @OCTNIC_LROIPV6, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @liquidio_set_feature(%struct.net_device* %53, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %52, %45, %38, %33
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %60
  %68 = load %struct.lio*, %struct.lio** %5, align 8
  %69 = getelementptr inbounds %struct.lio, %struct.lio* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = load i32, i32* @OCTNET_CMD_TNL_RX_CSUM_CTL, align 4
  %82 = load i32, i32* @OCTNET_CMD_RXCSUM_ENABLE, align 4
  %83 = call i32 @liquidio_set_rxcsum_command(%struct.net_device* %80, i32 %81, i32 %82)
  br label %109

84:                                               ; preds = %74, %67, %60
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %84
  %92 = load %struct.lio*, %struct.lio** %5, align 8
  %93 = getelementptr inbounds %struct.lio, %struct.lio* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = load i32, i32* @OCTNET_CMD_TNL_RX_CSUM_CTL, align 4
  %106 = load i32, i32* @OCTNET_CMD_RXCSUM_DISABLE, align 4
  %107 = call i32 @liquidio_set_rxcsum_command(%struct.net_device* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %98, %91, %84
  br label %109

109:                                              ; preds = %108, %79
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %109
  %115 = load %struct.lio*, %struct.lio** %5, align 8
  %116 = getelementptr inbounds %struct.lio, %struct.lio* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %114
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %121
  %129 = load %struct.net_device*, %struct.net_device** %3, align 8
  %130 = load i32, i32* @OCTNET_CMD_VLAN_FILTER_CTL, align 4
  %131 = load i32, i32* @OCTNET_CMD_VLAN_FILTER_ENABLE, align 4
  %132 = call i32 @liquidio_set_feature(%struct.net_device* %129, i32 %130, i32 %131)
  br label %158

133:                                              ; preds = %121, %114, %109
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %157, label %138

138:                                              ; preds = %133
  %139 = load %struct.lio*, %struct.lio** %5, align 8
  %140 = getelementptr inbounds %struct.lio, %struct.lio* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = load %struct.net_device*, %struct.net_device** %3, align 8
  %154 = load i32, i32* @OCTNET_CMD_VLAN_FILTER_CTL, align 4
  %155 = load i32, i32* @OCTNET_CMD_VLAN_FILTER_DISABLE, align 4
  %156 = call i32 @liquidio_set_feature(%struct.net_device* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %145, %138, %133
  br label %158

158:                                              ; preds = %157, %128
  ret i32 0
}

declare dso_local %struct.lio* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @liquidio_set_feature(%struct.net_device*, i32, i32) #1

declare dso_local i32 @liquidio_set_rxcsum_command(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
