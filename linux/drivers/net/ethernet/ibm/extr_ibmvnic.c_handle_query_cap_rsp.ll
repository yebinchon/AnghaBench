; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_query_cap_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_query_cap_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibmvnic_crq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ibmvnic_adapter = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_4__*, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"Outstanding queries: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error %ld in QUERY_CAP_RSP\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"min_tx_queues = %lld\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"min_rx_queues = %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"min_rx_add_queues = %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"max_tx_queues = %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"max_rx_queues = %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"max_rx_add_queues = %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"min_tx_entries_per_subcrq = %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"min_rx_add_entrs_per_subcrq = %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"max_tx_entries_per_subcrq = %lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"max_rx_add_entrs_per_subcrq = %lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"tcp_ip_offload = %lld\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"promisc_supported = %lld\0A\00", align 1
@ETH_HLEN = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"min_mtu = %lld\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"max_mtu = %lld\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"max_multicast_filters = %lld\0A\00", align 1
@NETIF_F_HW_VLAN_STAG_TX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"vlan_header_insertion = %lld\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"rx_vlan_header_insertion = %lld\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"max_tx_sg_entries = %lld\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"rx_sg_supported = %lld\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"opt_tx_comp_sub_queues = %lld\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"opt_rx_comp_queues = %lld\0A\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"opt_rx_bufadd_q_per_rx_comp_q = %lld\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"opt_tx_entries_per_subcrq = %lld\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"opt_rxba_entries_per_subcrq = %lld\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"tx_rx_desc_req = %llx\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"Got invalid cap rsp %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ibmvnic_crq*, %struct.ibmvnic_adapter*)* @handle_query_cap_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_query_cap_rsp(%union.ibmvnic_crq* %0, %struct.ibmvnic_adapter* %1) #0 {
  %3 = alloca %union.ibmvnic_crq*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  store %union.ibmvnic_crq* %0, %union.ibmvnic_crq** %3, align 8
  store %struct.ibmvnic_adapter* %1, %struct.ibmvnic_adapter** %4, align 8
  %8 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %8, i32 0, i32 28
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %11, i32 0, i32 27
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %15, i32 0, i32 26
  %17 = call i32 @atomic_dec(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %19, i32 0, i32 26
  %21 = call i64 @atomic_read(i32* %20)
  %22 = call i32 @netdev_dbg(%struct.net_device* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %24 = bitcast %union.ibmvnic_crq* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %427

34:                                               ; preds = %2
  %35 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %36 = bitcast %union.ibmvnic_crq* %35 to %struct.TYPE_6__*
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @be16_to_cpu(i32 %38)
  switch i32 %39, label %419 [
    i32 139, label %40
    i32 141, label %54
    i32 142, label %68
    i32 146, label %82
    i32 148, label %96
    i32 149, label %110
    i32 140, label %124
    i32 143, label %138
    i32 147, label %152
    i32 150, label %166
    i32 130, label %180
    i32 133, label %194
    i32 144, label %208
    i32 152, label %232
    i32 151, label %256
    i32 128, label %270
    i32 131, label %295
    i32 145, label %309
    i32 132, label %323
    i32 135, label %337
    i32 136, label %351
    i32 137, label %365
    i32 134, label %379
    i32 138, label %393
    i32 129, label %407
  ]

40:                                               ; preds = %34
  %41 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %42 = bitcast %union.ibmvnic_crq* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @be64_to_cpu(i64 %44)
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @netdev_dbg(%struct.net_device* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  br label %426

54:                                               ; preds = %34
  %55 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %56 = bitcast %union.ibmvnic_crq* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @be64_to_cpu(i64 %58)
  %60 = ptrtoint i8* %59 to i64
  %61 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %62 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %65 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @netdev_dbg(%struct.net_device* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  br label %426

68:                                               ; preds = %34
  %69 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %70 = bitcast %union.ibmvnic_crq* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i8* @be64_to_cpu(i64 %72)
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @netdev_dbg(%struct.net_device* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  br label %426

82:                                               ; preds = %34
  %83 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %84 = bitcast %union.ibmvnic_crq* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @be64_to_cpu(i64 %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @netdev_dbg(%struct.net_device* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %94)
  br label %426

96:                                               ; preds = %34
  %97 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %98 = bitcast %union.ibmvnic_crq* %97 to %struct.TYPE_6__*
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @be64_to_cpu(i64 %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 8
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %107 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @netdev_dbg(%struct.net_device* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %108)
  br label %426

110:                                              ; preds = %34
  %111 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %112 = bitcast %union.ibmvnic_crq* %111 to %struct.TYPE_6__*
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @be64_to_cpu(i64 %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %121 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @netdev_dbg(%struct.net_device* %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %122)
  br label %426

124:                                              ; preds = %34
  %125 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %126 = bitcast %union.ibmvnic_crq* %125 to %struct.TYPE_6__*
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i8* @be64_to_cpu(i64 %128)
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %132 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %131, i32 0, i32 6
  store i64 %130, i64* %132, align 8
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %135 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @netdev_dbg(%struct.net_device* %133, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %136)
  br label %426

138:                                              ; preds = %34
  %139 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %140 = bitcast %union.ibmvnic_crq* %139 to %struct.TYPE_6__*
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @be64_to_cpu(i64 %142)
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %146 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %145, i32 0, i32 7
  store i64 %144, i64* %146, align 8
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @netdev_dbg(%struct.net_device* %147, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %150)
  br label %426

152:                                              ; preds = %34
  %153 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %154 = bitcast %union.ibmvnic_crq* %153 to %struct.TYPE_6__*
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i8* @be64_to_cpu(i64 %156)
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %160 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %159, i32 0, i32 8
  store i64 %158, i64* %160, align 8
  %161 = load %struct.net_device*, %struct.net_device** %5, align 8
  %162 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %163 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %162, i32 0, i32 8
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @netdev_dbg(%struct.net_device* %161, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i64 %164)
  br label %426

166:                                              ; preds = %34
  %167 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %168 = bitcast %union.ibmvnic_crq* %167 to %struct.TYPE_6__*
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i8* @be64_to_cpu(i64 %170)
  %172 = ptrtoint i8* %171 to i64
  %173 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %174 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %173, i32 0, i32 9
  store i64 %172, i64* %174, align 8
  %175 = load %struct.net_device*, %struct.net_device** %5, align 8
  %176 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %177 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %176, i32 0, i32 9
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @netdev_dbg(%struct.net_device* %175, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %178)
  br label %426

180:                                              ; preds = %34
  %181 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %182 = bitcast %union.ibmvnic_crq* %181 to %struct.TYPE_6__*
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @be64_to_cpu(i64 %184)
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %188 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %187, i32 0, i32 10
  store i64 %186, i64* %188, align 8
  %189 = load %struct.net_device*, %struct.net_device** %5, align 8
  %190 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %191 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %190, i32 0, i32 10
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @netdev_dbg(%struct.net_device* %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 %192)
  br label %426

194:                                              ; preds = %34
  %195 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %196 = bitcast %union.ibmvnic_crq* %195 to %struct.TYPE_6__*
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i8* @be64_to_cpu(i64 %198)
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %202 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %201, i32 0, i32 11
  store i64 %200, i64* %202, align 8
  %203 = load %struct.net_device*, %struct.net_device** %5, align 8
  %204 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %205 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %204, i32 0, i32 11
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @netdev_dbg(%struct.net_device* %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i64 %206)
  br label %426

208:                                              ; preds = %34
  %209 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %210 = bitcast %union.ibmvnic_crq* %209 to %struct.TYPE_6__*
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i8* @be64_to_cpu(i64 %212)
  %214 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %215 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %214, i32 0, i32 12
  store i8* %213, i8** %215, align 8
  %216 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %217 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %216, i32 0, i32 12
  %218 = load i8*, i8** %217, align 8
  %219 = load i8*, i8** @ETH_HLEN, align 8
  %220 = ptrtoint i8* %218 to i64
  %221 = ptrtoint i8* %219 to i64
  %222 = sub i64 %220, %221
  %223 = inttoptr i64 %222 to i8*
  %224 = load %struct.net_device*, %struct.net_device** %5, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 2
  store i8* %223, i8** %225, align 8
  %226 = load %struct.net_device*, %struct.net_device** %5, align 8
  %227 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %228 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %227, i32 0, i32 12
  %229 = load i8*, i8** %228, align 8
  %230 = ptrtoint i8* %229 to i64
  %231 = call i32 @netdev_dbg(%struct.net_device* %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i64 %230)
  br label %426

232:                                              ; preds = %34
  %233 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %234 = bitcast %union.ibmvnic_crq* %233 to %struct.TYPE_6__*
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i8* @be64_to_cpu(i64 %236)
  %238 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %239 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %238, i32 0, i32 13
  store i8* %237, i8** %239, align 8
  %240 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %241 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %240, i32 0, i32 13
  %242 = load i8*, i8** %241, align 8
  %243 = load i8*, i8** @ETH_HLEN, align 8
  %244 = ptrtoint i8* %242 to i64
  %245 = ptrtoint i8* %243 to i64
  %246 = sub i64 %244, %245
  %247 = inttoptr i64 %246 to i8*
  %248 = load %struct.net_device*, %struct.net_device** %5, align 8
  %249 = getelementptr inbounds %struct.net_device, %struct.net_device* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  %250 = load %struct.net_device*, %struct.net_device** %5, align 8
  %251 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %252 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %251, i32 0, i32 13
  %253 = load i8*, i8** %252, align 8
  %254 = ptrtoint i8* %253 to i64
  %255 = call i32 @netdev_dbg(%struct.net_device* %250, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i64 %254)
  br label %426

256:                                              ; preds = %34
  %257 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %258 = bitcast %union.ibmvnic_crq* %257 to %struct.TYPE_6__*
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call i8* @be64_to_cpu(i64 %260)
  %262 = ptrtoint i8* %261 to i64
  %263 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %264 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %263, i32 0, i32 14
  store i64 %262, i64* %264, align 8
  %265 = load %struct.net_device*, %struct.net_device** %5, align 8
  %266 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %267 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %266, i32 0, i32 14
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @netdev_dbg(%struct.net_device* %265, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i64 %268)
  br label %426

270:                                              ; preds = %34
  %271 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %272 = bitcast %union.ibmvnic_crq* %271 to %struct.TYPE_6__*
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call i8* @be64_to_cpu(i64 %274)
  %276 = ptrtoint i8* %275 to i64
  %277 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %278 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %277, i32 0, i32 15
  store i64 %276, i64* %278, align 8
  %279 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %280 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %279, i32 0, i32 15
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %270
  %284 = load i32, i32* @NETIF_F_HW_VLAN_STAG_TX, align 4
  %285 = load %struct.net_device*, %struct.net_device** %5, align 8
  %286 = getelementptr inbounds %struct.net_device, %struct.net_device* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  br label %289

289:                                              ; preds = %283, %270
  %290 = load %struct.net_device*, %struct.net_device** %5, align 8
  %291 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %292 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %291, i32 0, i32 15
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @netdev_dbg(%struct.net_device* %290, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i64 %293)
  br label %426

295:                                              ; preds = %34
  %296 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %297 = bitcast %union.ibmvnic_crq* %296 to %struct.TYPE_6__*
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = call i8* @be64_to_cpu(i64 %299)
  %301 = ptrtoint i8* %300 to i64
  %302 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %303 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %302, i32 0, i32 16
  store i64 %301, i64* %303, align 8
  %304 = load %struct.net_device*, %struct.net_device** %5, align 8
  %305 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %306 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %305, i32 0, i32 16
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @netdev_dbg(%struct.net_device* %304, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i64 %307)
  br label %426

309:                                              ; preds = %34
  %310 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %311 = bitcast %union.ibmvnic_crq* %310 to %struct.TYPE_6__*
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = call i8* @be64_to_cpu(i64 %313)
  %315 = ptrtoint i8* %314 to i64
  %316 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %317 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %316, i32 0, i32 17
  store i64 %315, i64* %317, align 8
  %318 = load %struct.net_device*, %struct.net_device** %5, align 8
  %319 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %320 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %319, i32 0, i32 17
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @netdev_dbg(%struct.net_device* %318, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i64 %321)
  br label %426

323:                                              ; preds = %34
  %324 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %325 = bitcast %union.ibmvnic_crq* %324 to %struct.TYPE_6__*
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = call i8* @be64_to_cpu(i64 %327)
  %329 = ptrtoint i8* %328 to i64
  %330 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %331 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %330, i32 0, i32 18
  store i64 %329, i64* %331, align 8
  %332 = load %struct.net_device*, %struct.net_device** %5, align 8
  %333 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %334 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %333, i32 0, i32 18
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @netdev_dbg(%struct.net_device* %332, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i64 %335)
  br label %426

337:                                              ; preds = %34
  %338 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %339 = bitcast %union.ibmvnic_crq* %338 to %struct.TYPE_6__*
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = call i8* @be64_to_cpu(i64 %341)
  %343 = ptrtoint i8* %342 to i64
  %344 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %345 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %344, i32 0, i32 19
  store i64 %343, i64* %345, align 8
  %346 = load %struct.net_device*, %struct.net_device** %5, align 8
  %347 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %348 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %347, i32 0, i32 19
  %349 = load i64, i64* %348, align 8
  %350 = call i32 @netdev_dbg(%struct.net_device* %346, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i64 %349)
  br label %426

351:                                              ; preds = %34
  %352 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %353 = bitcast %union.ibmvnic_crq* %352 to %struct.TYPE_6__*
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = call i8* @be64_to_cpu(i64 %355)
  %357 = ptrtoint i8* %356 to i64
  %358 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %359 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %358, i32 0, i32 20
  store i64 %357, i64* %359, align 8
  %360 = load %struct.net_device*, %struct.net_device** %5, align 8
  %361 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %362 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %361, i32 0, i32 20
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @netdev_dbg(%struct.net_device* %360, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i64 %363)
  br label %426

365:                                              ; preds = %34
  %366 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %367 = bitcast %union.ibmvnic_crq* %366 to %struct.TYPE_6__*
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = call i8* @be64_to_cpu(i64 %369)
  %371 = ptrtoint i8* %370 to i64
  %372 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %373 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %372, i32 0, i32 21
  store i64 %371, i64* %373, align 8
  %374 = load %struct.net_device*, %struct.net_device** %5, align 8
  %375 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %376 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %375, i32 0, i32 21
  %377 = load i64, i64* %376, align 8
  %378 = call i32 @netdev_dbg(%struct.net_device* %374, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i64 %377)
  br label %426

379:                                              ; preds = %34
  %380 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %381 = bitcast %union.ibmvnic_crq* %380 to %struct.TYPE_6__*
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = call i8* @be64_to_cpu(i64 %383)
  %385 = ptrtoint i8* %384 to i64
  %386 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %387 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %386, i32 0, i32 22
  store i64 %385, i64* %387, align 8
  %388 = load %struct.net_device*, %struct.net_device** %5, align 8
  %389 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %390 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %389, i32 0, i32 22
  %391 = load i64, i64* %390, align 8
  %392 = call i32 @netdev_dbg(%struct.net_device* %388, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i64 %391)
  br label %426

393:                                              ; preds = %34
  %394 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %395 = bitcast %union.ibmvnic_crq* %394 to %struct.TYPE_6__*
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = call i8* @be64_to_cpu(i64 %397)
  %399 = ptrtoint i8* %398 to i64
  %400 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %401 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %400, i32 0, i32 23
  store i64 %399, i64* %401, align 8
  %402 = load %struct.net_device*, %struct.net_device** %5, align 8
  %403 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %404 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %403, i32 0, i32 23
  %405 = load i64, i64* %404, align 8
  %406 = call i32 @netdev_dbg(%struct.net_device* %402, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0), i64 %405)
  br label %426

407:                                              ; preds = %34
  %408 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %409 = bitcast %union.ibmvnic_crq* %408 to %struct.TYPE_6__*
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %413 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %412, i32 0, i32 24
  store i64 %411, i64* %413, align 8
  %414 = load %struct.net_device*, %struct.net_device** %5, align 8
  %415 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %416 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %415, i32 0, i32 24
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @netdev_dbg(%struct.net_device* %414, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i64 %417)
  br label %426

419:                                              ; preds = %34
  %420 = load %struct.net_device*, %struct.net_device** %5, align 8
  %421 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %422 = bitcast %union.ibmvnic_crq* %421 to %struct.TYPE_6__*
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = call i32 @netdev_err(%struct.net_device* %420, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i32 %424)
  br label %426

426:                                              ; preds = %419, %407, %393, %379, %365, %351, %337, %323, %309, %295, %289, %256, %232, %208, %194, %180, %166, %152, %138, %124, %110, %96, %82, %68, %54, %40
  br label %427

427:                                              ; preds = %426, %30
  %428 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %429 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %428, i32 0, i32 26
  %430 = call i64 @atomic_read(i32* %429)
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %427
  %433 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %434 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %433, i32 0, i32 25
  store i32 0, i32* %434, align 8
  %435 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %436 = call i32 @ibmvnic_send_req_caps(%struct.ibmvnic_adapter* %435, i32 0)
  br label %437

437:                                              ; preds = %432, %427
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i8* @be64_to_cpu(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ibmvnic_send_req_caps(%struct.ibmvnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
