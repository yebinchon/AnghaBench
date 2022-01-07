; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_gen_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_op_gen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wmi_init_cmd_10_4 = type { i32, i32 }
%struct.wmi_resource_config_10_4 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@TARGET_10_4_NUM_OFFLOAD_PEERS = common dso_local global i32 0, align 4
@TARGET_10_4_NUM_OFFLOAD_REORDER_BUFFS = common dso_local global i32 0, align 4
@TARGET_10_4_NUM_PEER_KEYS = common dso_local global i32 0, align 4
@TARGET_10_4_AST_SKID_LIMIT = common dso_local global i32 0, align 4
@TARGET_10_4_RX_TIMEOUT_LO_PRI = common dso_local global i32 0, align 4
@TARGET_10_4_RX_TIMEOUT_HI_PRI = common dso_local global i32 0, align 4
@TARGET_10_4_SCAN_MAX_REQS = common dso_local global i32 0, align 4
@TARGET_10_4_BMISS_OFFLOAD_MAX_VDEV = common dso_local global i32 0, align 4
@TARGET_10_4_ROAM_OFFLOAD_MAX_VDEV = common dso_local global i32 0, align 4
@TARGET_10_4_ROAM_OFFLOAD_MAX_PROFILES = common dso_local global i32 0, align 4
@TARGET_10_4_NUM_MCAST_GROUPS = common dso_local global i32 0, align 4
@TARGET_10_4_NUM_MCAST_TABLE_ELEMS = common dso_local global i32 0, align 4
@TARGET_10_4_MCAST2UCAST_MODE = common dso_local global i32 0, align 4
@TARGET_10_4_TX_DBG_LOG_SIZE = common dso_local global i32 0, align 4
@TARGET_10_4_NUM_WDS_ENTRIES = common dso_local global i32 0, align 4
@TARGET_10_4_DMA_BURST_SIZE = common dso_local global i32 0, align 4
@TARGET_10_4_MAC_AGGR_DELIM = common dso_local global i32 0, align 4
@TARGET_10_4_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK = common dso_local global i32 0, align 4
@TARGET_10_4_VOW_CONFIG = common dso_local global i32 0, align 4
@TARGET_10_4_GTK_OFFLOAD_MAX_VDEV = common dso_local global i32 0, align 4
@TARGET_10_4_11AC_TX_MAX_FRAGS = common dso_local global i32 0, align 4
@TARGET_10_4_MAX_PEER_EXT_STATS = common dso_local global i32 0, align 4
@TARGET_10_4_SMART_ANT_CAP = common dso_local global i32 0, align 4
@TARGET_10_4_BK_MIN_FREE = common dso_local global i32 0, align 4
@TARGET_10_4_BE_MIN_FREE = common dso_local global i32 0, align 4
@TARGET_10_4_VI_MIN_FREE = common dso_local global i32 0, align 4
@TARGET_10_4_VO_MIN_FREE = common dso_local global i32 0, align 4
@TARGET_10_4_RX_BATCH_MODE = common dso_local global i32 0, align 4
@TARGET_10_4_THERMAL_THROTTLING_CONFIG = common dso_local global i32 0, align 4
@TARGET_10_4_ATF_CONFIG = common dso_local global i32 0, align 4
@TARGET_10_4_IPHDR_PAD_CONFIG = common dso_local global i32 0, align 4
@TARGET_10_4_QWRAP_CONFIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wmi init 10.4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*)* @ath10k_wmi_10_4_op_gen_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_10_4_op_gen_init(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.wmi_init_cmd_10_4*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmi_resource_config_10_4, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = bitcast %struct.wmi_resource_config_10_4* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 312, i1 false)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @__cpu_to_le32(i32 %11)
  %13 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 38
  store i8* %12, i8** %13, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @__cpu_to_le32(i32 %16)
  %18 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 37
  store i8* %17, i8** %18, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @__cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 36
  store i8* %22, i8** %23, align 8
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @__cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 35
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @TARGET_10_4_NUM_OFFLOAD_PEERS, align 4
  %30 = call i8* @__cpu_to_le32(i32 %29)
  %31 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 34
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @TARGET_10_4_NUM_OFFLOAD_REORDER_BUFFS, align 4
  %33 = call i8* @__cpu_to_le32(i32 %32)
  %34 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 33
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @TARGET_10_4_NUM_PEER_KEYS, align 4
  %36 = call i8* @__cpu_to_le32(i32 %35)
  %37 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 32
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @TARGET_10_4_AST_SKID_LIMIT, align 4
  %39 = call i8* @__cpu_to_le32(i32 %38)
  %40 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 31
  store i8* %39, i8** %40, align 8
  %41 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %42 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @__cpu_to_le32(i32 %44)
  %46 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 30
  store i8* %45, i8** %46, align 8
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @__cpu_to_le32(i32 %50)
  %52 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 29
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @TARGET_10_4_RX_TIMEOUT_LO_PRI, align 4
  %54 = call i8* @__cpu_to_le32(i32 %53)
  %55 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 28
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @TARGET_10_4_RX_TIMEOUT_LO_PRI, align 4
  %59 = call i8* @__cpu_to_le32(i32 %58)
  %60 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 28
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* @TARGET_10_4_RX_TIMEOUT_LO_PRI, align 4
  %64 = call i8* @__cpu_to_le32(i32 %63)
  %65 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 28
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* @TARGET_10_4_RX_TIMEOUT_HI_PRI, align 4
  %69 = call i8* @__cpu_to_le32(i32 %68)
  %70 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 28
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 3
  store i8* %69, i8** %72, align 8
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @__cpu_to_le32(i32 %76)
  %78 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 27
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* @TARGET_10_4_SCAN_MAX_REQS, align 4
  %80 = call i8* @__cpu_to_le32(i32 %79)
  %81 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 26
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @TARGET_10_4_BMISS_OFFLOAD_MAX_VDEV, align 4
  %83 = call i8* @__cpu_to_le32(i32 %82)
  %84 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 25
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* @TARGET_10_4_ROAM_OFFLOAD_MAX_VDEV, align 4
  %86 = call i8* @__cpu_to_le32(i32 %85)
  %87 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 24
  store i8* %86, i8** %87, align 8
  %88 = load i32, i32* @TARGET_10_4_ROAM_OFFLOAD_MAX_PROFILES, align 4
  %89 = call i8* @__cpu_to_le32(i32 %88)
  %90 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 23
  store i8* %89, i8** %90, align 8
  %91 = load i32, i32* @TARGET_10_4_NUM_MCAST_GROUPS, align 4
  %92 = call i8* @__cpu_to_le32(i32 %91)
  %93 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 22
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* @TARGET_10_4_NUM_MCAST_TABLE_ELEMS, align 4
  %95 = call i8* @__cpu_to_le32(i32 %94)
  %96 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 21
  store i8* %95, i8** %96, align 8
  %97 = load i32, i32* @TARGET_10_4_MCAST2UCAST_MODE, align 4
  %98 = call i8* @__cpu_to_le32(i32 %97)
  %99 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 20
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* @TARGET_10_4_TX_DBG_LOG_SIZE, align 4
  %101 = call i8* @__cpu_to_le32(i32 %100)
  %102 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 19
  store i8* %101, i8** %102, align 8
  %103 = load i32, i32* @TARGET_10_4_NUM_WDS_ENTRIES, align 4
  %104 = call i8* @__cpu_to_le32(i32 %103)
  %105 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 18
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* @TARGET_10_4_DMA_BURST_SIZE, align 4
  %107 = call i8* @__cpu_to_le32(i32 %106)
  %108 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 17
  store i8* %107, i8** %108, align 8
  %109 = load i32, i32* @TARGET_10_4_MAC_AGGR_DELIM, align 4
  %110 = call i8* @__cpu_to_le32(i32 %109)
  %111 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 16
  store i8* %110, i8** %111, align 8
  %112 = load i32, i32* @TARGET_10_4_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK, align 4
  %113 = call i8* @__cpu_to_le32(i32 %112)
  %114 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 15
  store i8* %113, i8** %114, align 8
  %115 = load i32, i32* @TARGET_10_4_VOW_CONFIG, align 4
  %116 = call i8* @__cpu_to_le32(i32 %115)
  %117 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 14
  store i8* %116, i8** %117, align 8
  %118 = load i32, i32* @TARGET_10_4_GTK_OFFLOAD_MAX_VDEV, align 4
  %119 = call i8* @__cpu_to_le32(i32 %118)
  %120 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 13
  store i8* %119, i8** %120, align 8
  %121 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %122 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @__cpu_to_le32(i32 %124)
  %126 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 12
  store i8* %125, i8** %126, align 8
  %127 = load i32, i32* @TARGET_10_4_11AC_TX_MAX_FRAGS, align 4
  %128 = call i8* @__cpu_to_le32(i32 %127)
  %129 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 11
  store i8* %128, i8** %129, align 8
  %130 = load i32, i32* @TARGET_10_4_MAX_PEER_EXT_STATS, align 4
  %131 = call i8* @__cpu_to_le32(i32 %130)
  %132 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 10
  store i8* %131, i8** %132, align 8
  %133 = load i32, i32* @TARGET_10_4_SMART_ANT_CAP, align 4
  %134 = call i8* @__cpu_to_le32(i32 %133)
  %135 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 9
  store i8* %134, i8** %135, align 8
  %136 = load i32, i32* @TARGET_10_4_BK_MIN_FREE, align 4
  %137 = call i8* @__cpu_to_le32(i32 %136)
  %138 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 8
  store i8* %137, i8** %138, align 8
  %139 = load i32, i32* @TARGET_10_4_BE_MIN_FREE, align 4
  %140 = call i8* @__cpu_to_le32(i32 %139)
  %141 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 7
  store i8* %140, i8** %141, align 8
  %142 = load i32, i32* @TARGET_10_4_VI_MIN_FREE, align 4
  %143 = call i8* @__cpu_to_le32(i32 %142)
  %144 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 6
  store i8* %143, i8** %144, align 8
  %145 = load i32, i32* @TARGET_10_4_VO_MIN_FREE, align 4
  %146 = call i8* @__cpu_to_le32(i32 %145)
  %147 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 5
  store i8* %146, i8** %147, align 8
  %148 = load i32, i32* @TARGET_10_4_RX_BATCH_MODE, align 4
  %149 = call i8* @__cpu_to_le32(i32 %148)
  %150 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 4
  store i8* %149, i8** %150, align 8
  %151 = load i32, i32* @TARGET_10_4_THERMAL_THROTTLING_CONFIG, align 4
  %152 = call i8* @__cpu_to_le32(i32 %151)
  %153 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 3
  store i8* %152, i8** %153, align 8
  %154 = load i32, i32* @TARGET_10_4_ATF_CONFIG, align 4
  %155 = call i8* @__cpu_to_le32(i32 %154)
  %156 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 2
  store i8* %155, i8** %156, align 8
  %157 = load i32, i32* @TARGET_10_4_IPHDR_PAD_CONFIG, align 4
  %158 = call i8* @__cpu_to_le32(i32 %157)
  %159 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 1
  store i8* %158, i8** %159, align 8
  %160 = load i32, i32* @TARGET_10_4_QWRAP_CONFIG, align 4
  %161 = call i8* @__cpu_to_le32(i32 %160)
  %162 = getelementptr inbounds %struct.wmi_resource_config_10_4, %struct.wmi_resource_config_10_4* %6, i32 0, i32 0
  store i8* %161, i8** %162, align 8
  %163 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %164 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = mul i64 4, %167
  %169 = add i64 8, %168
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %7, align 4
  %171 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %171, i32 %172)
  store %struct.sk_buff* %173, %struct.sk_buff** %5, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = icmp ne %struct.sk_buff* %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %1
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  %179 = call %struct.sk_buff* @ERR_PTR(i32 %178)
  store %struct.sk_buff* %179, %struct.sk_buff** %2, align 8
  br label %196

180:                                              ; preds = %1
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.wmi_init_cmd_10_4*
  store %struct.wmi_init_cmd_10_4* %184, %struct.wmi_init_cmd_10_4** %4, align 8
  %185 = load %struct.wmi_init_cmd_10_4*, %struct.wmi_init_cmd_10_4** %4, align 8
  %186 = getelementptr inbounds %struct.wmi_init_cmd_10_4, %struct.wmi_init_cmd_10_4* %185, i32 0, i32 1
  %187 = call i32 @memcpy(i32* %186, %struct.wmi_resource_config_10_4* %6, i32 312)
  %188 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %189 = load %struct.wmi_init_cmd_10_4*, %struct.wmi_init_cmd_10_4** %4, align 8
  %190 = getelementptr inbounds %struct.wmi_init_cmd_10_4, %struct.wmi_init_cmd_10_4* %189, i32 0, i32 0
  %191 = call i32 @ath10k_wmi_put_host_mem_chunks(%struct.ath10k* %188, i32* %190)
  %192 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %193 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %194 = call i32 @ath10k_dbg(%struct.ath10k* %192, i32 %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %195, %struct.sk_buff** %2, align 8
  br label %196

196:                                              ; preds = %180, %176
  %197 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %197
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @__cpu_to_le32(i32) #2

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #2

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.wmi_resource_config_10_4*, i32) #2

declare dso_local i32 @ath10k_wmi_put_host_mem_chunks(%struct.ath10k*, i32*) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
