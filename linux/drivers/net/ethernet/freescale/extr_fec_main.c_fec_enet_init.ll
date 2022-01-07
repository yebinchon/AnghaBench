; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32*, i32*, i32 }
%struct.fec_enet_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_rx_q**, %struct.TYPE_4__*, i64 }
%struct.fec_enet_priv_tx_q = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.bufdesc*, i64, %struct.bufdesc*, %struct.bufdesc* }
%struct.bufdesc = type { i32 }
%struct.fec_enet_priv_rx_q = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.bufdesc*, i64, %struct.bufdesc*, %struct.bufdesc* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"No suitable DMA available\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@offset_des_active_rxq = common dso_local global i64* null, align 8
@offset_des_active_txq = common dso_local global i64* null, align 8
@TX_TIMEOUT = common dso_local global i32 0, align 4
@fec_netdev_ops = common dso_local global i32 0, align 4
@fec_enet_ethtool_ops = common dso_local global i32 0, align 4
@FEC_RX_DISABLED_IMASK = common dso_local global i32 0, align 4
@FEC_IMASK = common dso_local global i64 0, align 8
@fec_enet_rx_napi = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@FEC_QUIRK_HAS_VLAN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@FEC_QUIRK_HAS_CSUM = common dso_local global i32 0, align 4
@FEC_MAX_TSO_SEGS = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@FLAG_RX_CSUM_ENABLED = common dso_local global i32 0, align 4
@FEC_QUIRK_HAS_AVB = common dso_local global i32 0, align 4
@FEC_QUIRK_MIB_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fec_enet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca %struct.bufdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fec_enet_priv_rx_q*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %16)
  store %struct.fec_enet_private* %17, %struct.fec_enet_private** %4, align 8
  %18 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %19 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %18, i32 0, i32 13
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i64 4, i64 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @__fls(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 1, %28
  %30 = icmp ne i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON(i32 %31)
  %33 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %34 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %33, i32 0, i32 0
  store i32 3, i32* %34, align 8
  %35 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %36 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %35, i32 0, i32 1
  store i32 3, i32* %36, align 4
  %37 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %38 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %37, i32 0, i32 12
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @DMA_BIT_MASK(i32 32)
  %42 = call i32 @dma_set_mask_and_coherent(i32* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %47 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %46, i32 0, i32 12
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @dev_warn(i32* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %2, align 4
  br label %333

52:                                               ; preds = %1
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @fec_enet_alloc_queue(%struct.net_device* %53)
  %55 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %56 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %59 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %57, %60
  %62 = load i32, i32* %9, align 4
  %63 = mul i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %65 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %64, i32 0, i32 12
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.bufdesc* @dmam_alloc_coherent(i32* %67, i32 %68, i32* %6, i32 %69)
  store %struct.bufdesc* %70, %struct.bufdesc** %5, align 8
  %71 = load %struct.bufdesc*, %struct.bufdesc** %5, align 8
  %72 = icmp ne %struct.bufdesc* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %52
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %333

76:                                               ; preds = %52
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = call i32 @fec_get_mac(%struct.net_device* %77)
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @fec_set_mac_address(%struct.net_device* %79, i32* null)
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %156, %76
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %84 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %159

87:                                               ; preds = %81
  %88 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %89 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %88, i32 0, i32 11
  %90 = load %struct.fec_enet_priv_rx_q**, %struct.fec_enet_priv_rx_q*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %90, i64 %92
  %94 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %93, align 8
  store %struct.fec_enet_priv_rx_q* %94, %struct.fec_enet_priv_rx_q** %12, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %12, align 8
  %97 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul i32 %95, %99
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %12, align 8
  %103 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load %struct.bufdesc*, %struct.bufdesc** %5, align 8
  %106 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %12, align 8
  %107 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 8
  store %struct.bufdesc* %105, %struct.bufdesc** %108, align 8
  %109 = load %struct.bufdesc*, %struct.bufdesc** %5, align 8
  %110 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %12, align 8
  %111 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 7
  store %struct.bufdesc* %109, %struct.bufdesc** %112, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %12, align 8
  %115 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %12, align 8
  %119 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %12, align 8
  %123 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  store i32 %121, i32* %124, align 8
  %125 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %126 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** @offset_des_active_rxq, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %127, %132
  %134 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %12, align 8
  %135 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 6
  store i64 %133, i64* %136, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add i32 %138, %137
  store i32 %139, i32* %6, align 4
  %140 = load %struct.bufdesc*, %struct.bufdesc** %5, align 8
  %141 = bitcast %struct.bufdesc* %140 to i8*
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr i8, i8* %141, i64 %143
  %145 = bitcast i8* %144 to %struct.bufdesc*
  store %struct.bufdesc* %145, %struct.bufdesc** %5, align 8
  %146 = load %struct.bufdesc*, %struct.bufdesc** %5, align 8
  %147 = bitcast %struct.bufdesc* %146 to i8*
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = sub i64 0, %149
  %151 = getelementptr i8, i8* %147, i64 %150
  %152 = bitcast i8* %151 to %struct.bufdesc*
  %153 = load %struct.fec_enet_priv_rx_q*, %struct.fec_enet_priv_rx_q** %12, align 8
  %154 = getelementptr inbounds %struct.fec_enet_priv_rx_q, %struct.fec_enet_priv_rx_q* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 5
  store %struct.bufdesc* %152, %struct.bufdesc** %155, align 8
  br label %156

156:                                              ; preds = %87
  %157 = load i32, i32* %8, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %81

159:                                              ; preds = %81
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %235, %159
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %163 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = icmp ult i32 %161, %164
  br i1 %165, label %166, label %238

166:                                              ; preds = %160
  %167 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %168 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %167, i32 0, i32 10
  %169 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %169, i64 %171
  %173 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %172, align 8
  store %struct.fec_enet_priv_tx_q* %173, %struct.fec_enet_priv_tx_q** %14, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, align 8
  %176 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = mul i32 %174, %178
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, align 8
  %182 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  %184 = load %struct.bufdesc*, %struct.bufdesc** %5, align 8
  %185 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, align 8
  %186 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 8
  store %struct.bufdesc* %184, %struct.bufdesc** %187, align 8
  %188 = load %struct.bufdesc*, %struct.bufdesc** %5, align 8
  %189 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, align 8
  %190 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 7
  store %struct.bufdesc* %188, %struct.bufdesc** %191, align 8
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, align 8
  %194 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  store i32 %192, i32* %195, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, align 8
  %198 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  store i32 %196, i32* %199, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, align 8
  %202 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 4
  store i32 %200, i32* %203, align 8
  %204 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %205 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %204, i32 0, i32 9
  %206 = load i64, i64* %205, align 8
  %207 = load i64*, i64** @offset_des_active_txq, align 8
  %208 = load i32, i32* %8, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %206, %211
  %213 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, align 8
  %214 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 6
  store i64 %212, i64* %215, align 8
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %6, align 4
  %218 = add i32 %217, %216
  store i32 %218, i32* %6, align 4
  %219 = load %struct.bufdesc*, %struct.bufdesc** %5, align 8
  %220 = bitcast %struct.bufdesc* %219 to i8*
  %221 = load i32, i32* %15, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr i8, i8* %220, i64 %222
  %224 = bitcast i8* %223 to %struct.bufdesc*
  store %struct.bufdesc* %224, %struct.bufdesc** %5, align 8
  %225 = load %struct.bufdesc*, %struct.bufdesc** %5, align 8
  %226 = bitcast %struct.bufdesc* %225 to i8*
  %227 = load i32, i32* %9, align 4
  %228 = zext i32 %227 to i64
  %229 = sub i64 0, %228
  %230 = getelementptr i8, i8* %226, i64 %229
  %231 = bitcast i8* %230 to %struct.bufdesc*
  %232 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %14, align 8
  %233 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 5
  store %struct.bufdesc* %231, %struct.bufdesc** %234, align 8
  br label %235

235:                                              ; preds = %166
  %236 = load i32, i32* %8, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %160

238:                                              ; preds = %160
  %239 = load i32, i32* @TX_TIMEOUT, align 4
  %240 = load %struct.net_device*, %struct.net_device** %3, align 8
  %241 = getelementptr inbounds %struct.net_device, %struct.net_device* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 8
  %242 = load %struct.net_device*, %struct.net_device** %3, align 8
  %243 = getelementptr inbounds %struct.net_device, %struct.net_device* %242, i32 0, i32 4
  store i32* @fec_netdev_ops, i32** %243, align 8
  %244 = load %struct.net_device*, %struct.net_device** %3, align 8
  %245 = getelementptr inbounds %struct.net_device, %struct.net_device* %244, i32 0, i32 3
  store i32* @fec_enet_ethtool_ops, i32** %245, align 8
  %246 = load i32, i32* @FEC_RX_DISABLED_IMASK, align 4
  %247 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %248 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %247, i32 0, i32 9
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @FEC_IMASK, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @writel(i32 %246, i64 %251)
  %253 = load %struct.net_device*, %struct.net_device** %3, align 8
  %254 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %255 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %254, i32 0, i32 8
  %256 = load i32, i32* @fec_enet_rx_napi, align 4
  %257 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %258 = call i32 @netif_napi_add(%struct.net_device* %253, i32* %255, i32 %256, i32 %257)
  %259 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %260 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @FEC_QUIRK_HAS_VLAN, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %238
  %266 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %267 = load %struct.net_device*, %struct.net_device** %3, align 8
  %268 = getelementptr inbounds %struct.net_device, %struct.net_device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %265, %238
  %272 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %273 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @FEC_QUIRK_HAS_CSUM, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %300

278:                                              ; preds = %271
  %279 = load i32, i32* @FEC_MAX_TSO_SEGS, align 4
  %280 = load %struct.net_device*, %struct.net_device** %3, align 8
  %281 = getelementptr inbounds %struct.net_device, %struct.net_device* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  %282 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %283 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @NETIF_F_SG, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* @NETIF_F_TSO, align 4
  %290 = or i32 %288, %289
  %291 = load %struct.net_device*, %struct.net_device** %3, align 8
  %292 = getelementptr inbounds %struct.net_device, %struct.net_device* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 8
  %295 = load i32, i32* @FLAG_RX_CSUM_ENABLED, align 4
  %296 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %297 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %278, %271
  %301 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %302 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @FEC_QUIRK_HAS_AVB, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %300
  %308 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %309 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %308, i32 0, i32 1
  store i32 0, i32* %309, align 4
  %310 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %311 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %310, i32 0, i32 0
  store i32 63, i32* %311, align 8
  br label %312

312:                                              ; preds = %307, %300
  %313 = load %struct.net_device*, %struct.net_device** %3, align 8
  %314 = getelementptr inbounds %struct.net_device, %struct.net_device* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.net_device*, %struct.net_device** %3, align 8
  %317 = getelementptr inbounds %struct.net_device, %struct.net_device* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 4
  %318 = load %struct.net_device*, %struct.net_device** %3, align 8
  %319 = call i32 @fec_restart(%struct.net_device* %318)
  %320 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %321 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @FEC_QUIRK_MIB_CLEAR, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %312
  %327 = load %struct.net_device*, %struct.net_device** %3, align 8
  %328 = call i32 @fec_enet_clear_ethtool_stats(%struct.net_device* %327)
  br label %332

329:                                              ; preds = %312
  %330 = load %struct.net_device*, %struct.net_device** %3, align 8
  %331 = call i32 @fec_enet_update_ethtool_stats(%struct.net_device* %330)
  br label %332

332:                                              ; preds = %329, %326
  store i32 0, i32* %2, align 4
  br label %333

333:                                              ; preds = %332, %73, %45
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__fls(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @fec_enet_alloc_queue(%struct.net_device*) #1

declare dso_local %struct.bufdesc* @dmam_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @fec_get_mac(%struct.net_device*) #1

declare dso_local i32 @fec_set_mac_address(%struct.net_device*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @fec_restart(%struct.net_device*) #1

declare dso_local i32 @fec_enet_clear_ethtool_stats(%struct.net_device*) #1

declare dso_local i32 @fec_enet_update_ethtool_stats(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
