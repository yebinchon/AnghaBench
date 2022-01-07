; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_set_default_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_set_default_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32 }
%struct.hnae3_handle = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_GSO_GRE = common dso_local global i32 0, align 4
@NETIF_F_GSO_GRE_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SCTP_CRC = common dso_local global i32 0, align 4
@NETIF_F_TSO_MANGLEID = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_GRO_HW = common dso_local global i32 0, align 4
@HNAE3_SUPPORT_VF = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hns3_set_default_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_set_default_feature(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %5)
  store %struct.hnae3_handle* %6, %struct.hnae3_handle** %3, align 8
  %7 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %8 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %16 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NETIF_F_SG, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NETIF_F_GSO, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @NETIF_F_GRO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @NETIF_F_TSO, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @NETIF_F_TSO6, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NETIF_F_SCTP_CRC, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @NETIF_F_TSO_MANGLEID, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %55 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @NETIF_F_SG, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @NETIF_F_GSO, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @NETIF_F_GRO, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @NETIF_F_TSO, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @NETIF_F_TSO6, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @NETIF_F_SCTP_CRC, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %90 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @NETIF_F_SG, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @NETIF_F_GSO, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @NETIF_F_GRO, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @NETIF_F_TSO, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @NETIF_F_TSO6, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @NETIF_F_SCTP_CRC, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %119 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @NETIF_F_SG, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @NETIF_F_GSO, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @NETIF_F_GRO, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @NETIF_F_TSO, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @NETIF_F_TSO6, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @NETIF_F_SCTP_CRC, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp sge i32 %153, 33
  br i1 %154, label %155, label %184

155:                                              ; preds = %1
  %156 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %157 = load %struct.net_device*, %struct.net_device** %2, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %162 = load %struct.net_device*, %struct.net_device** %2, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %167 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @HNAE3_SUPPORT_VF, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %155
  %173 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %174 = load %struct.net_device*, %struct.net_device** %2, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %179 = load %struct.net_device*, %struct.net_device** %2, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %172, %155
  br label %184

184:                                              ; preds = %183, %1
  ret void
}

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
