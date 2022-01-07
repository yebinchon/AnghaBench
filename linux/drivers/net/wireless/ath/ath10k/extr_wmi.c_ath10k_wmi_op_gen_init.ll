; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wmi_init_cmd = type { i32, i32 }
%struct.wmi_resource_config = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@TARGET_NUM_VDEVS = common dso_local global i32 0, align 4
@TARGET_NUM_PEERS = common dso_local global i32 0, align 4
@TARGET_NUM_OFFLOAD_PEERS = common dso_local global i32 0, align 4
@TARGET_NUM_OFFLOAD_REORDER_BUFS = common dso_local global i32 0, align 4
@TARGET_NUM_PEER_KEYS = common dso_local global i32 0, align 4
@TARGET_NUM_TIDS = common dso_local global i32 0, align 4
@TARGET_AST_SKID_LIMIT = common dso_local global i32 0, align 4
@TARGET_TX_CHAIN_MASK = common dso_local global i32 0, align 4
@TARGET_RX_CHAIN_MASK = common dso_local global i32 0, align 4
@TARGET_RX_TIMEOUT_LO_PRI = common dso_local global i32 0, align 4
@TARGET_RX_TIMEOUT_HI_PRI = common dso_local global i32 0, align 4
@TARGET_SCAN_MAX_PENDING_REQS = common dso_local global i32 0, align 4
@TARGET_BMISS_OFFLOAD_MAX_VDEV = common dso_local global i32 0, align 4
@TARGET_ROAM_OFFLOAD_MAX_VDEV = common dso_local global i32 0, align 4
@TARGET_ROAM_OFFLOAD_MAX_AP_PROFILES = common dso_local global i32 0, align 4
@TARGET_NUM_MCAST_GROUPS = common dso_local global i32 0, align 4
@TARGET_NUM_MCAST_TABLE_ELEMS = common dso_local global i32 0, align 4
@TARGET_MCAST2UCAST_MODE = common dso_local global i32 0, align 4
@TARGET_TX_DBG_LOG_SIZE = common dso_local global i32 0, align 4
@TARGET_NUM_WDS_ENTRIES = common dso_local global i32 0, align 4
@TARGET_DMA_BURST_SIZE = common dso_local global i32 0, align 4
@TARGET_MAC_AGGR_DELIM = common dso_local global i32 0, align 4
@TARGET_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK = common dso_local global i32 0, align 4
@TARGET_VOW_CONFIG = common dso_local global i32 0, align 4
@TARGET_GTK_OFFLOAD_MAX_VDEV = common dso_local global i32 0, align 4
@TARGET_NUM_MSDU_DESC = common dso_local global i32 0, align 4
@TARGET_MAX_FRAG_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"wmi init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*)* @ath10k_wmi_op_gen_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_init(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.wmi_init_cmd*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmi_resource_config, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %9 = bitcast %struct.wmi_resource_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 240, i1 false)
  %10 = load i32, i32* @TARGET_NUM_VDEVS, align 4
  %11 = call i8* @__cpu_to_le32(i32 %10)
  %12 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 29
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* @TARGET_NUM_PEERS, align 4
  %14 = call i8* @__cpu_to_le32(i32 %13)
  %15 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 28
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @TARGET_NUM_OFFLOAD_PEERS, align 4
  %17 = call i8* @__cpu_to_le32(i32 %16)
  %18 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 27
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @TARGET_NUM_OFFLOAD_REORDER_BUFS, align 4
  %20 = call i8* @__cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 26
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* @TARGET_NUM_PEER_KEYS, align 4
  %23 = call i8* @__cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 25
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @TARGET_NUM_TIDS, align 4
  %26 = call i8* @__cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 24
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @TARGET_AST_SKID_LIMIT, align 4
  %29 = call i8* @__cpu_to_le32(i32 %28)
  %30 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 23
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @TARGET_TX_CHAIN_MASK, align 4
  %32 = call i8* @__cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 22
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @TARGET_RX_CHAIN_MASK, align 4
  %35 = call i8* @__cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 21
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* @TARGET_RX_TIMEOUT_LO_PRI, align 4
  %38 = call i8* @__cpu_to_le32(i32 %37)
  %39 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 20
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @TARGET_RX_TIMEOUT_LO_PRI, align 4
  %41 = call i8* @__cpu_to_le32(i32 %40)
  %42 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 19
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* @TARGET_RX_TIMEOUT_LO_PRI, align 4
  %44 = call i8* @__cpu_to_le32(i32 %43)
  %45 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 18
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* @TARGET_RX_TIMEOUT_HI_PRI, align 4
  %47 = call i8* @__cpu_to_le32(i32 %46)
  %48 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 17
  store i8* %47, i8** %48, align 8
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @__cpu_to_le32(i32 %52)
  %54 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 16
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @TARGET_SCAN_MAX_PENDING_REQS, align 4
  %56 = call i8* @__cpu_to_le32(i32 %55)
  %57 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 15
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* @TARGET_BMISS_OFFLOAD_MAX_VDEV, align 4
  %59 = call i8* @__cpu_to_le32(i32 %58)
  %60 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 14
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* @TARGET_ROAM_OFFLOAD_MAX_VDEV, align 4
  %62 = call i8* @__cpu_to_le32(i32 %61)
  %63 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 13
  store i8* %62, i8** %63, align 8
  %64 = load i32, i32* @TARGET_ROAM_OFFLOAD_MAX_AP_PROFILES, align 4
  %65 = call i8* @__cpu_to_le32(i32 %64)
  %66 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 12
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* @TARGET_NUM_MCAST_GROUPS, align 4
  %68 = call i8* @__cpu_to_le32(i32 %67)
  %69 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 11
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* @TARGET_NUM_MCAST_TABLE_ELEMS, align 4
  %71 = call i8* @__cpu_to_le32(i32 %70)
  %72 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 10
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @TARGET_MCAST2UCAST_MODE, align 4
  %74 = call i8* @__cpu_to_le32(i32 %73)
  %75 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 9
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @TARGET_TX_DBG_LOG_SIZE, align 4
  %77 = call i8* @__cpu_to_le32(i32 %76)
  %78 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 8
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* @TARGET_NUM_WDS_ENTRIES, align 4
  %80 = call i8* @__cpu_to_le32(i32 %79)
  %81 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 7
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @TARGET_DMA_BURST_SIZE, align 4
  %83 = call i8* @__cpu_to_le32(i32 %82)
  %84 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 6
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @TARGET_MAC_AGGR_DELIM, align 4
  %86 = call i8* @__cpu_to_le32(i32 %85)
  %87 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 5
  store i8* %86, i8** %87, align 8
  %88 = load i32, i32* @TARGET_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK, align 4
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i8* @__cpu_to_le32(i32 %89)
  %91 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 4
  store i8* %90, i8** %91, align 8
  %92 = load i32, i32* @TARGET_VOW_CONFIG, align 4
  %93 = call i8* @__cpu_to_le32(i32 %92)
  %94 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 3
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* @TARGET_GTK_OFFLOAD_MAX_VDEV, align 4
  %96 = call i8* @__cpu_to_le32(i32 %95)
  %97 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 2
  store i8* %96, i8** %97, align 8
  %98 = load i32, i32* @TARGET_NUM_MSDU_DESC, align 4
  %99 = call i8* @__cpu_to_le32(i32 %98)
  %100 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* @TARGET_MAX_FRAG_ENTRIES, align 4
  %102 = call i8* @__cpu_to_le32(i32 %101)
  %103 = getelementptr inbounds %struct.wmi_resource_config, %struct.wmi_resource_config* %6, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %105 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 4, %108
  %110 = add i64 8, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %7, align 4
  %112 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %112, i32 %113)
  store %struct.sk_buff* %114, %struct.sk_buff** %5, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = icmp ne %struct.sk_buff* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %1
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  %120 = call %struct.sk_buff* @ERR_PTR(i32 %119)
  store %struct.sk_buff* %120, %struct.sk_buff** %2, align 8
  br label %137

121:                                              ; preds = %1
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to %struct.wmi_init_cmd*
  store %struct.wmi_init_cmd* %125, %struct.wmi_init_cmd** %4, align 8
  %126 = load %struct.wmi_init_cmd*, %struct.wmi_init_cmd** %4, align 8
  %127 = getelementptr inbounds %struct.wmi_init_cmd, %struct.wmi_init_cmd* %126, i32 0, i32 1
  %128 = call i32 @memcpy(i32* %127, %struct.wmi_resource_config* %6, i32 240)
  %129 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %130 = load %struct.wmi_init_cmd*, %struct.wmi_init_cmd** %4, align 8
  %131 = getelementptr inbounds %struct.wmi_init_cmd, %struct.wmi_init_cmd* %130, i32 0, i32 0
  %132 = call i32 @ath10k_wmi_put_host_mem_chunks(%struct.ath10k* %129, i32* %131)
  %133 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %134 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %135 = call i32 @ath10k_dbg(%struct.ath10k* %133, i32 %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %136, %struct.sk_buff** %2, align 8
  br label %137

137:                                              ; preds = %121, %117
  %138 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @__cpu_to_le32(i32) #2

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #2

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.wmi_resource_config*, i32) #2

declare dso_local i32 @ath10k_wmi_put_host_mem_chunks(%struct.ath10k*, i32*) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
