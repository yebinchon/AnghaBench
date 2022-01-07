; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_tx_timeo_queue_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_tx_timeo_queue_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.hns3_nic_priv = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.napi_struct }
%struct.napi_struct = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hnae3_handle = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.hnae3_handle*, %struct.hns3_mac_stats*)* }
%struct.hns3_mac_stats = type { i32, i32 }
%struct.netdev_queue = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"no netdev TX timeout queue found, timeout count: %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"tx_timeout count: %llu, queue id: %d, SW_NTU: 0x%x, SW_NTC: 0x%x, napi state: %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"tx_pkts: %llu, tx_bytes: %llu, io_err_cnt: %llu, sw_err_cnt: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"seg_pkt_cnt: %llu, tx_err_cnt: %llu, restart_queue: %llu, tx_busy: %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"tx_pause_cnt: %llu, rx_pause_cnt: %llu\0A\00", align 1
@HNS3_RING_TX_RING_HEAD_REG = common dso_local global i64 0, align 8
@HNS3_RING_TX_RING_TAIL_REG = common dso_local global i64 0, align 8
@HNS3_RING_TX_RING_FBDNUM_REG = common dso_local global i64 0, align 8
@HNS3_RING_TX_RING_OFFSET_REG = common dso_local global i64 0, align 8
@HNS3_RING_TX_RING_EBDNUM_REG = common dso_local global i64 0, align 8
@HNS3_RING_TX_RING_EBD_OFFSET_REG = common dso_local global i64 0, align 8
@HNS3_RING_TX_RING_BD_NUM_REG = common dso_local global i64 0, align 8
@HNS3_RING_TX_RING_BD_ERR_REG = common dso_local global i64 0, align 8
@HNS3_RING_EN_REG = common dso_local global i64 0, align 8
@HNS3_RING_TX_RING_TC_REG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"BD_NUM: 0x%x HW_HEAD: 0x%x, HW_TAIL: 0x%x, BD_ERR: 0x%x, INT: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [84 x i8] c"RING_EN: 0x%x, TC: 0x%x, FBD_NUM: 0x%x FBD_OFT: 0x%x, EBD_NUM: 0x%x, EBD_OFT: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hns3_get_tx_timeo_queue_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_tx_timeo_queue_info(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hns3_nic_priv*, align 8
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca %struct.hns3_enet_ring*, align 8
  %7 = alloca %struct.napi_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.netdev_queue*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.hns3_mac_stats, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %23)
  store %struct.hns3_nic_priv* %24, %struct.hns3_nic_priv** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %25)
  store %struct.hnae3_handle* %26, %struct.hnae3_handle** %5, align 8
  store %struct.hns3_enet_ring* null, %struct.hns3_enet_ring** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %19, align 4
  br label %27

27:                                               ; preds = %55, %1
  %28 = load i32, i32* %19, align 4
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* %19, align 4
  %36 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %34, i32 %35)
  store %struct.netdev_queue* %36, %struct.netdev_queue** %20, align 8
  %37 = load %struct.netdev_queue*, %struct.netdev_queue** %20, align 8
  %38 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %21, align 8
  %40 = load %struct.netdev_queue*, %struct.netdev_queue** %20, align 8
  %41 = call i64 @netif_xmit_stopped(%struct.netdev_queue* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load i32, i32* @jiffies, align 4
  %45 = load i64, i64* %21, align 8
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = call i64 @time_after(i32 %44, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %19, align 4
  store i32 %53, i32* %8, align 4
  br label %58

54:                                               ; preds = %43, %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %19, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %19, align 4
  br label %27

58:                                               ; preds = %52, %27
  %59 = load i32, i32* %19, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %67 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %65, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 0, i32* %2, align 4
  br label %263

70:                                               ; preds = %58
  %71 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %72 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %76 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %81, align 8
  store %struct.hns3_enet_ring* %82, %struct.hns3_enet_ring** %6, align 8
  %83 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %84 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store %struct.napi_struct* %86, %struct.napi_struct** %7, align 8
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %89 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %93 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %96 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.napi_struct*, %struct.napi_struct** %7, align 8
  %99 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %87, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91, i32 %94, i32 %97, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %104 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %108 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %112 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %116 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %102, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %110, i32 %114, i32 %118)
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %122 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %126 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %130 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %134 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %120, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %128, i32 %132, i32 %136)
  %138 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %139 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32 (%struct.hnae3_handle*, %struct.hns3_mac_stats*)*, i32 (%struct.hnae3_handle*, %struct.hns3_mac_stats*)** %143, align 8
  %145 = icmp ne i32 (%struct.hnae3_handle*, %struct.hns3_mac_stats*)* %144, null
  br i1 %145, label %146, label %162

146:                                              ; preds = %70
  %147 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %148 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %147, i32 0, i32 0
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32 (%struct.hnae3_handle*, %struct.hns3_mac_stats*)*, i32 (%struct.hnae3_handle*, %struct.hns3_mac_stats*)** %152, align 8
  %154 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %155 = call i32 %153(%struct.hnae3_handle* %154, %struct.hns3_mac_stats* %22)
  %156 = load %struct.net_device*, %struct.net_device** %3, align 8
  %157 = getelementptr inbounds %struct.hns3_mac_stats, %struct.hns3_mac_stats* %22, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.hns3_mac_stats, %struct.hns3_mac_stats* %22, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %160)
  br label %162

162:                                              ; preds = %146, %70
  %163 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %164 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %163, i32 0, i32 1
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @HNS3_RING_TX_RING_HEAD_REG, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @readl_relaxed(i64 %169)
  store i32 %170, i32* %9, align 4
  %171 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %172 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %171, i32 0, i32 1
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @HNS3_RING_TX_RING_TAIL_REG, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @readl_relaxed(i64 %177)
  store i32 %178, i32* %10, align 4
  %179 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %180 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %179, i32 0, i32 1
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @HNS3_RING_TX_RING_FBDNUM_REG, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @readl_relaxed(i64 %185)
  store i32 %186, i32* %11, align 4
  %187 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %188 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %187, i32 0, i32 1
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @HNS3_RING_TX_RING_OFFSET_REG, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @readl_relaxed(i64 %193)
  store i32 %194, i32* %12, align 4
  %195 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %196 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %195, i32 0, i32 1
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @HNS3_RING_TX_RING_EBDNUM_REG, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @readl_relaxed(i64 %201)
  store i32 %202, i32* %13, align 4
  %203 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %204 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %203, i32 0, i32 1
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @HNS3_RING_TX_RING_EBD_OFFSET_REG, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @readl_relaxed(i64 %209)
  store i32 %210, i32* %14, align 4
  %211 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %212 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %211, i32 0, i32 1
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @HNS3_RING_TX_RING_BD_NUM_REG, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @readl_relaxed(i64 %217)
  store i32 %218, i32* %15, align 4
  %219 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %220 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %219, i32 0, i32 1
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @HNS3_RING_TX_RING_BD_ERR_REG, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @readl_relaxed(i64 %225)
  store i32 %226, i32* %16, align 4
  %227 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %228 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %227, i32 0, i32 1
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @HNS3_RING_EN_REG, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @readl_relaxed(i64 %233)
  store i32 %234, i32* %17, align 4
  %235 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %236 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %235, i32 0, i32 1
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @HNS3_RING_TX_RING_TC_REG, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @readl_relaxed(i64 %241)
  store i32 %242, i32* %18, align 4
  %243 = load %struct.net_device*, %struct.net_device** %3, align 8
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %16, align 4
  %248 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %249 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %248, i32 0, i32 0
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @readl(i32 %252)
  %254 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %243, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i32 %244, i32 %245, i32 %246, i32 %247, i32 %253)
  %255 = load %struct.net_device*, %struct.net_device** %3, align 8
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* %14, align 4
  %262 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %255, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i64 0, i64 0), i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261)
  store i32 1, i32* %2, align 4
  br label %263

263:                                              ; preds = %162, %64
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @netif_xmit_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
