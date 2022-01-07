; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_op_gen_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_2_op_gen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.wmi_init_cmd_10_2 = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.wmi_resource_config_10x = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@TARGET_10X_NUM_VDEVS = common dso_local global i32 0, align 4
@TARGET_10X_NUM_PEER_KEYS = common dso_local global i32 0, align 4
@TARGET_10X_TX_STATS_NUM_PEERS = common dso_local global i32 0, align 4
@TARGET_10X_TX_STATS_NUM_TIDS = common dso_local global i32 0, align 4
@TARGET_10X_NUM_PEERS = common dso_local global i32 0, align 4
@TARGET_10X_NUM_TIDS = common dso_local global i32 0, align 4
@TARGET_10X_AST_SKID_LIMIT = common dso_local global i32 0, align 4
@TARGET_10X_TX_CHAIN_MASK = common dso_local global i32 0, align 4
@TARGET_10X_RX_CHAIN_MASK = common dso_local global i32 0, align 4
@TARGET_10X_RX_TIMEOUT_LO_PRI = common dso_local global i32 0, align 4
@TARGET_10X_RX_TIMEOUT_HI_PRI = common dso_local global i32 0, align 4
@TARGET_10X_SCAN_MAX_PENDING_REQS = common dso_local global i32 0, align 4
@TARGET_10X_BMISS_OFFLOAD_MAX_VDEV = common dso_local global i32 0, align 4
@TARGET_10X_ROAM_OFFLOAD_MAX_VDEV = common dso_local global i32 0, align 4
@TARGET_10X_ROAM_OFFLOAD_MAX_AP_PROFILES = common dso_local global i32 0, align 4
@TARGET_10X_NUM_MCAST_GROUPS = common dso_local global i32 0, align 4
@TARGET_10X_NUM_MCAST_TABLE_ELEMS = common dso_local global i32 0, align 4
@TARGET_10X_MCAST2UCAST_MODE = common dso_local global i32 0, align 4
@TARGET_10X_TX_DBG_LOG_SIZE = common dso_local global i32 0, align 4
@TARGET_10X_NUM_WDS_ENTRIES = common dso_local global i32 0, align 4
@TARGET_10_2_DMA_BURST_SIZE = common dso_local global i32 0, align 4
@TARGET_10X_MAC_AGGR_DELIM = common dso_local global i32 0, align 4
@TARGET_10X_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK = common dso_local global i32 0, align 4
@TARGET_10X_VOW_CONFIG = common dso_local global i32 0, align 4
@TARGET_10X_NUM_MSDU_DESC = common dso_local global i32 0, align 4
@TARGET_10X_MAX_FRAG_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_10_2_RX_BATCH_MODE = common dso_local global i32 0, align 4
@ATH10K_FLAG_BTCOEX = common dso_local global i32 0, align 4
@WMI_SERVICE_COEX_GPIO = common dso_local global i32 0, align 4
@WMI_10_2_COEX_GPIO = common dso_local global i32 0, align 4
@WMI_10_2_PEER_STATS = common dso_local global i32 0, align 4
@WMI_SERVICE_BSS_CHANNEL_INFO_64 = common dso_local global i32 0, align 4
@WMI_10_2_BSS_CHAN_INFO = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wmi init 10.2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*)* @ath10k_wmi_10_2_op_gen_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_10_2_op_gen_init(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.wmi_init_cmd_10_2*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmi_resource_config_10x, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %10 = bitcast %struct.wmi_resource_config_10x* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 216, i1 false)
  %11 = load i32, i32* @TARGET_10X_NUM_VDEVS, align 4
  %12 = call i8* @__cpu_to_le32(i32 %11)
  %13 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 26
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @TARGET_10X_NUM_PEER_KEYS, align 4
  %15 = call i8* @__cpu_to_le32(i32 %14)
  %16 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 25
  store i8* %15, i8** %16, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = call i64 @ath10k_peer_stats_enabled(%struct.ath10k* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @TARGET_10X_TX_STATS_NUM_PEERS, align 4
  %22 = call i8* @__cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 24
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @TARGET_10X_TX_STATS_NUM_TIDS, align 4
  %25 = call i8* @__cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 23
  store i8* %25, i8** %26, align 8
  br label %34

27:                                               ; preds = %1
  %28 = load i32, i32* @TARGET_10X_NUM_PEERS, align 4
  %29 = call i8* @__cpu_to_le32(i32 %28)
  %30 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 24
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @TARGET_10X_NUM_TIDS, align 4
  %32 = call i8* @__cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 23
  store i8* %32, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32, i32* @TARGET_10X_AST_SKID_LIMIT, align 4
  %36 = call i8* @__cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 22
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @TARGET_10X_TX_CHAIN_MASK, align 4
  %39 = call i8* @__cpu_to_le32(i32 %38)
  %40 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 21
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @TARGET_10X_RX_CHAIN_MASK, align 4
  %42 = call i8* @__cpu_to_le32(i32 %41)
  %43 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 20
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* @TARGET_10X_RX_TIMEOUT_LO_PRI, align 4
  %45 = call i8* @__cpu_to_le32(i32 %44)
  %46 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 19
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* @TARGET_10X_RX_TIMEOUT_LO_PRI, align 4
  %48 = call i8* @__cpu_to_le32(i32 %47)
  %49 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 18
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* @TARGET_10X_RX_TIMEOUT_LO_PRI, align 4
  %51 = call i8* @__cpu_to_le32(i32 %50)
  %52 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 17
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @TARGET_10X_RX_TIMEOUT_HI_PRI, align 4
  %54 = call i8* @__cpu_to_le32(i32 %53)
  %55 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 16
  store i8* %54, i8** %55, align 8
  %56 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %57 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @__cpu_to_le32(i32 %59)
  %61 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 15
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* @TARGET_10X_SCAN_MAX_PENDING_REQS, align 4
  %63 = call i8* @__cpu_to_le32(i32 %62)
  %64 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 14
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* @TARGET_10X_BMISS_OFFLOAD_MAX_VDEV, align 4
  %66 = call i8* @__cpu_to_le32(i32 %65)
  %67 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 13
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @TARGET_10X_ROAM_OFFLOAD_MAX_VDEV, align 4
  %69 = call i8* @__cpu_to_le32(i32 %68)
  %70 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 12
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* @TARGET_10X_ROAM_OFFLOAD_MAX_AP_PROFILES, align 4
  %72 = call i8* @__cpu_to_le32(i32 %71)
  %73 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 11
  store i8* %72, i8** %73, align 8
  %74 = load i32, i32* @TARGET_10X_NUM_MCAST_GROUPS, align 4
  %75 = call i8* @__cpu_to_le32(i32 %74)
  %76 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 10
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* @TARGET_10X_NUM_MCAST_TABLE_ELEMS, align 4
  %78 = call i8* @__cpu_to_le32(i32 %77)
  %79 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 9
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* @TARGET_10X_MCAST2UCAST_MODE, align 4
  %81 = call i8* @__cpu_to_le32(i32 %80)
  %82 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 8
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* @TARGET_10X_TX_DBG_LOG_SIZE, align 4
  %84 = call i8* @__cpu_to_le32(i32 %83)
  %85 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 7
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* @TARGET_10X_NUM_WDS_ENTRIES, align 4
  %87 = call i8* @__cpu_to_le32(i32 %86)
  %88 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 6
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @TARGET_10_2_DMA_BURST_SIZE, align 4
  %90 = call i8* @__cpu_to_le32(i32 %89)
  %91 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 5
  store i8* %90, i8** %91, align 8
  %92 = load i32, i32* @TARGET_10X_MAC_AGGR_DELIM, align 4
  %93 = call i8* @__cpu_to_le32(i32 %92)
  %94 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 4
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* @TARGET_10X_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK, align 4
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i8* @__cpu_to_le32(i32 %96)
  %98 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 3
  store i8* %97, i8** %98, align 8
  %99 = load i32, i32* @TARGET_10X_VOW_CONFIG, align 4
  %100 = call i8* @__cpu_to_le32(i32 %99)
  %101 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 2
  store i8* %100, i8** %101, align 8
  %102 = load i32, i32* @TARGET_10X_NUM_MSDU_DESC, align 4
  %103 = call i8* @__cpu_to_le32(i32 %102)
  %104 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 1
  store i8* %103, i8** %104, align 8
  %105 = load i32, i32* @TARGET_10X_MAX_FRAG_ENTRIES, align 4
  %106 = call i8* @__cpu_to_le32(i32 %105)
  %107 = getelementptr inbounds %struct.wmi_resource_config_10x, %struct.wmi_resource_config_10x* %6, i32 0, i32 0
  store i8* %106, i8** %107, align 8
  %108 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %109 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 4, %112
  %114 = add i64 24, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %7, align 4
  %116 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %116, i32 %117)
  store %struct.sk_buff* %118, %struct.sk_buff** %5, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = icmp ne %struct.sk_buff* %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %34
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  %124 = call %struct.sk_buff* @ERR_PTR(i32 %123)
  store %struct.sk_buff* %124, %struct.sk_buff** %2, align 8
  br label %186

125:                                              ; preds = %34
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.wmi_init_cmd_10_2*
  store %struct.wmi_init_cmd_10_2* %129, %struct.wmi_init_cmd_10_2** %4, align 8
  %130 = load i32, i32* @WMI_10_2_RX_BATCH_MODE, align 4
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @ATH10K_FLAG_BTCOEX, align 4
  %132 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %133 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %132, i32 0, i32 1
  %134 = call i64 @test_bit(i32 %131, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %125
  %137 = load i32, i32* @WMI_SERVICE_COEX_GPIO, align 4
  %138 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %139 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i64 @test_bit(i32 %137, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i32, i32* @WMI_10_2_COEX_GPIO, align 4
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %144, %136, %125
  %149 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %150 = call i64 @ath10k_peer_stats_enabled(%struct.ath10k* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* @WMI_10_2_PEER_STATS, align 4
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i32, i32* @WMI_SERVICE_BSS_CHANNEL_INFO_64, align 4
  %158 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %159 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @test_bit(i32 %157, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %156
  %165 = load i32, i32* @WMI_10_2_BSS_CHAN_INFO, align 4
  %166 = load i32, i32* %9, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %164, %156
  %169 = load i32, i32* %9, align 4
  %170 = call i8* @__cpu_to_le32(i32 %169)
  %171 = load %struct.wmi_init_cmd_10_2*, %struct.wmi_init_cmd_10_2** %4, align 8
  %172 = getelementptr inbounds %struct.wmi_init_cmd_10_2, %struct.wmi_init_cmd_10_2* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  store i8* %170, i8** %173, align 8
  %174 = load %struct.wmi_init_cmd_10_2*, %struct.wmi_init_cmd_10_2** %4, align 8
  %175 = getelementptr inbounds %struct.wmi_init_cmd_10_2, %struct.wmi_init_cmd_10_2* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = call i32 @memcpy(i32* %176, %struct.wmi_resource_config_10x* %6, i32 216)
  %178 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %179 = load %struct.wmi_init_cmd_10_2*, %struct.wmi_init_cmd_10_2** %4, align 8
  %180 = getelementptr inbounds %struct.wmi_init_cmd_10_2, %struct.wmi_init_cmd_10_2* %179, i32 0, i32 0
  %181 = call i32 @ath10k_wmi_put_host_mem_chunks(%struct.ath10k* %178, i32* %180)
  %182 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %183 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %184 = call i32 @ath10k_dbg(%struct.ath10k* %182, i32 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %185 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %185, %struct.sk_buff** %2, align 8
  br label %186

186:                                              ; preds = %168, %121
  %187 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %187
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @__cpu_to_le32(i32) #2

declare dso_local i64 @ath10k_peer_stats_enabled(%struct.ath10k*) #2

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #2

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @memcpy(i32*, %struct.wmi_resource_config_10x*, i32) #2

declare dso_local i32 @ath10k_wmi_put_host_mem_chunks(%struct.ath10k*, i32*) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
