; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32* }

@qlcnic_netdev_ops = common dso_local global i32 0, align 4
@QLCNIC_WATCHDOG_TIMEOUTVALUE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@qlcnic_sriov_vf_ethtool_ops = common dso_local global i32 0, align 4
@qlcnic_ethtool_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@QLCNIC_FW_CAPABILITY_HW_LRO = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@P3P_MIN_MTU = common dso_local global i32 0, align 4
@P3P_MAX_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to register net device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_setup_netdev(%struct.qlcnic_adapter* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 6
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %9, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %20 = call i32 @qlcnic_set_mac_filter_count(%struct.qlcnic_adapter* %19)
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 11
  store i32* @qlcnic_netdev_ops, i32** %22, align 8
  %23 = load i32, i32* @QLCNIC_WATCHDOG_TIMEOUTVALUE, align 4
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @qlcnic_change_mtu(%struct.net_device* %28, i32 %31)
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %34 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32* @qlcnic_sriov_vf_ethtool_ops, i32* @qlcnic_ethtool_ops
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 9
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* @NETIF_F_SG, align 4
  %41 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @NETIF_F_GRO, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @NETIF_F_SG, align 4
  %56 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %65 = call i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %3
  %68 = load i32, i32* @NETIF_F_TSO, align 4
  %69 = load i32, i32* @NETIF_F_TSO6, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @NETIF_F_TSO, align 4
  %76 = load i32, i32* @NETIF_F_TSO6, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %67, %3
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %85, %82
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %98 = call i64 @qlcnic_vlan_tx_check(%struct.qlcnic_adapter* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %96
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %108 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %106
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %118 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %117, i32 0, i32 5
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @QLCNIC_FW_CAPABILITY_HW_LRO, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load i32, i32* @NETIF_F_LRO, align 4
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %116
  %132 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %133 = call i64 @qlcnic_encap_tx_offload(%struct.qlcnic_adapter* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %137 = load %struct.net_device*, %struct.net_device** %6, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %142 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @NETIF_F_TSO, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @NETIF_F_TSO6, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.net_device*, %struct.net_device** %6, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  br label %150

150:                                              ; preds = %135, %131
  %151 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %152 = call i64 @qlcnic_encap_rx_offload(%struct.qlcnic_adapter* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %156 = load %struct.net_device*, %struct.net_device** %6, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %150
  %161 = load %struct.net_device*, %struct.net_device** %6, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.net_device*, %struct.net_device** %6, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %167 = load %struct.net_device*, %struct.net_device** %6, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %172 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %171, i32 0, i32 4
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.net_device*, %struct.net_device** %6, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 7
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @P3P_MIN_MTU, align 4
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = getelementptr inbounds %struct.net_device, %struct.net_device* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @P3P_MAX_MTU, align 4
  %183 = load %struct.net_device*, %struct.net_device** %6, align 8
  %184 = getelementptr inbounds %struct.net_device, %struct.net_device* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 4
  %185 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %186 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %187 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %190 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @qlcnic_set_real_num_queues(%struct.qlcnic_adapter* %185, i32 %188, i32 %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %160
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %4, align 4
  br label %212

197:                                              ; preds = %160
  %198 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %199 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @qlcnic_dcb_init_dcbnl_ops(i32 %200)
  %202 = load %struct.net_device*, %struct.net_device** %6, align 8
  %203 = call i32 @register_netdev(%struct.net_device* %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %197
  %207 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %208 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %207, i32 0, i32 0
  %209 = call i32 @dev_err(i32* %208, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %4, align 4
  br label %212

211:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %212

212:                                              ; preds = %211, %206, %195
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @qlcnic_set_mac_filter_count(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_change_mtu(%struct.net_device*, i32) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_vlan_tx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_encap_tx_offload(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_encap_rx_offload(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_set_real_num_queues(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_dcb_init_dcbnl_ops(i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
