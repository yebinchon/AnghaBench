; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_setup_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_setup_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev*, %struct.e1000_rx_ring, %struct.e1000_tx_ring, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.e1000_rx_ring = type { i32, i32, %struct.TYPE_10__*, i64, i64, i64, i8* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.e1000_tx_ring = type { i32, i32, %struct.TYPE_7__*, i64, i64, i64, i8* }
%struct.TYPE_7__ = type { i32, i8*, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32* }
%struct.e1000_hw = type { i32 }
%struct.e1000_tx_desc = type { %struct.TYPE_9__, %struct.TYPE_8__, i8* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.e1000_rx_desc = type { i8* }

@E1000_DEFAULT_TXD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TDBAL = common dso_local global i32 0, align 4
@TDBAH = common dso_local global i32 0, align 4
@TDLEN = common dso_local global i32 0, align 4
@TDH = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@E1000_COLLISION_THRESHOLD = common dso_local global i32 0, align 4
@E1000_CT_SHIFT = common dso_local global i32 0, align 4
@E1000_FDX_COLLISION_DISTANCE = common dso_local global i32 0, align 4
@E1000_COLD_SHIFT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@E1000_TXD_CMD_EOP = common dso_local global i32 0, align 4
@E1000_TXD_CMD_IFCS = common dso_local global i32 0, align 4
@E1000_TXD_CMD_RPS = common dso_local global i32 0, align 4
@E1000_DEFAULT_RXD = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@RDBAL = common dso_local global i32 0, align 4
@RDBAH = common dso_local global i32 0, align 4
@RDLEN = common dso_local global i32 0, align 4
@RDH = common dso_local global i32 0, align 4
@RDT = common dso_local global i32 0, align 4
@E1000_RCTL_BAM = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_2048 = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_NO = common dso_local global i32 0, align 4
@E1000_RCTL_RDMTS_HALF = common dso_local global i32 0, align 4
@E1000_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@E1000_RXBUFFER_2048 = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_setup_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_setup_desc_rings(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca %struct.e1000_tx_ring*, align 8
  %6 = alloca %struct.e1000_rx_ring*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_tx_desc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.e1000_rx_desc*, align 8
  %15 = alloca i32*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 3
  store %struct.e1000_hw* %17, %struct.e1000_hw** %4, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 2
  store %struct.e1000_tx_ring* %19, %struct.e1000_tx_ring** %5, align 8
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 1
  store %struct.e1000_rx_ring* %21, %struct.e1000_rx_ring** %6, align 8
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %7, align 8
  %25 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %26 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @E1000_DEFAULT_TXD, align 4
  %31 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i32 %36, i32 4, i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_7__*
  %40 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %41 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %40, i32 0, i32 2
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %41, align 8
  %42 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %43 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  br label %404

47:                                               ; preds = %33
  %48 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %49 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 24
  %53 = trunc i64 %52 to i32
  %54 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %55 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %57 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ALIGN(i32 %58, i32 4096)
  %60 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %61 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %65 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %68 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %67, i32 0, i32 3
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @dma_alloc_coherent(i32* %63, i32 %66, i64* %68, i32 %69)
  %71 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %72 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %74 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %47
  store i32 2, i32* %10, align 4
  br label %404

78:                                               ; preds = %47
  %79 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %80 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %82 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* @TDBAL, align 4
  %84 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %85 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @ew32(i32 %83, i32 %87)
  %89 = load i32, i32* @TDBAH, align 4
  %90 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %91 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = ashr i32 %93, 32
  %95 = call i32 @ew32(i32 %89, i32 %94)
  %96 = load i32, i32* @TDLEN, align 4
  %97 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %98 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 24
  %102 = trunc i64 %101 to i32
  %103 = call i32 @ew32(i32 %96, i32 %102)
  %104 = load i32, i32* @TDH, align 4
  %105 = call i32 @ew32(i32 %104, i32 0)
  %106 = load i32, i32* @TDT, align 4
  %107 = call i32 @ew32(i32 %106, i32 0)
  %108 = load i32, i32* @TCTL, align 4
  %109 = load i32, i32* @E1000_TCTL_PSP, align 4
  %110 = load i32, i32* @E1000_TCTL_EN, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @E1000_COLLISION_THRESHOLD, align 4
  %113 = load i32, i32* @E1000_CT_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = or i32 %111, %114
  %116 = load i32, i32* @E1000_FDX_COLLISION_DISTANCE, align 4
  %117 = load i32, i32* @E1000_COLD_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = or i32 %115, %118
  %120 = call i32 @ew32(i32 %108, i32 %119)
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %222, %78
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %124 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %225

127:                                              ; preds = %121
  %128 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8 %128, i32 %129)
  store %struct.e1000_tx_desc* %130, %struct.e1000_tx_desc** %11, align 8
  store i32 1024, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.sk_buff* @alloc_skb(i32 %131, i32 %132)
  store %struct.sk_buff* %133, %struct.sk_buff** %12, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %135 = icmp ne %struct.sk_buff* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %127
  store i32 3, i32* %10, align 4
  br label %404

137:                                              ; preds = %127
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @skb_put(%struct.sk_buff* %138, i32 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %142 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %143 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  store %struct.sk_buff* %141, %struct.sk_buff** %148, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %153 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i32 %151, i32* %158, align 8
  %159 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 0
  %161 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @DMA_TO_DEVICE, align 4
  %168 = call i8* @dma_map_single(i32* %160, i32* %163, i32 %166, i32 %167)
  %169 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %170 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %169, i32 0, i32 2
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  store i8* %168, i8** %175, align 8
  %176 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 0
  %178 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %179 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %178, i32 0, i32 2
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @dma_mapping_error(i32* %177, i8* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %137
  store i32 4, i32* %10, align 4
  br label %404

189:                                              ; preds = %137
  %190 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %191 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %190, i32 0, i32 2
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = call i8* @cpu_to_le64(i8* %197)
  %199 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %200 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %199, i32 0, i32 2
  store i8* %198, i8** %200, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @cpu_to_le32(i32 %203)
  %205 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %206 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load i32, i32* @E1000_TXD_CMD_EOP, align 4
  %209 = load i32, i32* @E1000_TXD_CMD_IFCS, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @E1000_TXD_CMD_RPS, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @cpu_to_le32(i32 %212)
  %214 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %215 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %213
  store i32 %218, i32* %216, align 8
  %219 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %11, align 8
  %220 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  store i64 0, i64* %221, align 8
  br label %222

222:                                              ; preds = %189
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  br label %121

225:                                              ; preds = %121
  %226 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %227 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %225
  %231 = load i32, i32* @E1000_DEFAULT_RXD, align 4
  %232 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %233 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %230, %225
  %235 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %236 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @GFP_KERNEL, align 4
  %239 = call i8* @kcalloc(i32 %237, i32 4, i32 %238)
  %240 = bitcast i8* %239 to %struct.TYPE_10__*
  %241 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %242 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %241, i32 0, i32 2
  store %struct.TYPE_10__* %240, %struct.TYPE_10__** %242, align 8
  %243 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %244 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %243, i32 0, i32 2
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = icmp ne %struct.TYPE_10__* %245, null
  br i1 %246, label %248, label %247

247:                                              ; preds = %234
  store i32 5, i32* %10, align 4
  br label %404

248:                                              ; preds = %234
  %249 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %250 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = mul i64 %252, 8
  %254 = trunc i64 %253 to i32
  %255 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %256 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  %257 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %258 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %257, i32 0, i32 0
  %259 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %260 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %263 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %262, i32 0, i32 3
  %264 = load i32, i32* @GFP_KERNEL, align 4
  %265 = call i8* @dma_alloc_coherent(i32* %258, i32 %261, i64* %263, i32 %264)
  %266 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %267 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %266, i32 0, i32 6
  store i8* %265, i8** %267, align 8
  %268 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %269 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %268, i32 0, i32 6
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %248
  store i32 6, i32* %10, align 4
  br label %404

273:                                              ; preds = %248
  %274 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %275 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %274, i32 0, i32 4
  store i64 0, i64* %275, align 8
  %276 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %277 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %276, i32 0, i32 5
  store i64 0, i64* %277, align 8
  %278 = load i32, i32* @RCTL, align 4
  %279 = call i32 @er32(i32 %278)
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* @RCTL, align 4
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* @E1000_RCTL_EN, align 4
  %283 = xor i32 %282, -1
  %284 = and i32 %281, %283
  %285 = call i32 @ew32(i32 %280, i32 %284)
  %286 = load i32, i32* @RDBAL, align 4
  %287 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %288 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 @ew32(i32 %286, i32 %290)
  %292 = load i32, i32* @RDBAH, align 4
  %293 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %294 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = trunc i64 %295 to i32
  %297 = ashr i32 %296, 32
  %298 = call i32 @ew32(i32 %292, i32 %297)
  %299 = load i32, i32* @RDLEN, align 4
  %300 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %301 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @ew32(i32 %299, i32 %302)
  %304 = load i32, i32* @RDH, align 4
  %305 = call i32 @ew32(i32 %304, i32 0)
  %306 = load i32, i32* @RDT, align 4
  %307 = call i32 @ew32(i32 %306, i32 0)
  %308 = load i32, i32* @E1000_RCTL_EN, align 4
  %309 = load i32, i32* @E1000_RCTL_BAM, align 4
  %310 = or i32 %308, %309
  %311 = load i32, i32* @E1000_RCTL_SZ_2048, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* @E1000_RCTL_LBM_NO, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* @E1000_RCTL_RDMTS_HALF, align 4
  %316 = or i32 %314, %315
  %317 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %318 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %321 = shl i32 %319, %320
  %322 = or i32 %316, %321
  store i32 %322, i32* %8, align 4
  %323 = load i32, i32* @RCTL, align 4
  %324 = load i32, i32* %8, align 4
  %325 = call i32 @ew32(i32 %323, i32 %324)
  store i32 0, i32* %9, align 4
  br label %326

326:                                              ; preds = %400, %273
  %327 = load i32, i32* %9, align 4
  %328 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %329 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %327, %330
  br i1 %331, label %332, label %403

332:                                              ; preds = %326
  %333 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %334 = load i32, i32* %9, align 4
  %335 = call %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8 %333, i32 %334)
  store %struct.e1000_rx_desc* %335, %struct.e1000_rx_desc** %14, align 8
  %336 = load i32, i32* @E1000_RXBUFFER_2048, align 4
  %337 = load i32, i32* @NET_SKB_PAD, align 4
  %338 = add nsw i32 %336, %337
  %339 = load i32, i32* @NET_IP_ALIGN, align 4
  %340 = add nsw i32 %338, %339
  %341 = load i32, i32* @GFP_KERNEL, align 4
  %342 = call i32* @kzalloc(i32 %340, i32 %341)
  store i32* %342, i32** %15, align 8
  %343 = load i32*, i32** %15, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %346, label %345

345:                                              ; preds = %332
  store i32 7, i32* %10, align 4
  br label %404

346:                                              ; preds = %332
  %347 = load i32*, i32** %15, align 8
  %348 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %349 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %348, i32 0, i32 2
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  store i32* %347, i32** %355, align 8
  %356 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %357 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %356, i32 0, i32 0
  %358 = load i32*, i32** %15, align 8
  %359 = load i32, i32* @NET_SKB_PAD, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* @NET_IP_ALIGN, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* @E1000_RXBUFFER_2048, align 4
  %366 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %367 = call i8* @dma_map_single(i32* %357, i32* %364, i32 %365, i32 %366)
  %368 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %369 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %368, i32 0, i32 2
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %369, align 8
  %371 = load i32, i32* %9, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  store i8* %367, i8** %374, align 8
  %375 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %376 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %375, i32 0, i32 0
  %377 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %378 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %377, i32 0, i32 2
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %378, align 8
  %380 = load i32, i32* %9, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = call i64 @dma_mapping_error(i32* %376, i8* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %346
  store i32 8, i32* %10, align 4
  br label %404

388:                                              ; preds = %346
  %389 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %390 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %389, i32 0, i32 2
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %390, align 8
  %392 = load i32, i32* %9, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 0
  %396 = load i8*, i8** %395, align 8
  %397 = call i8* @cpu_to_le64(i8* %396)
  %398 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %14, align 8
  %399 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %398, i32 0, i32 0
  store i8* %397, i8** %399, align 8
  br label %400

400:                                              ; preds = %388
  %401 = load i32, i32* %9, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %9, align 4
  br label %326

403:                                              ; preds = %326
  store i32 0, i32* %2, align 4
  br label %408

404:                                              ; preds = %387, %345, %272, %247, %188, %136, %77, %46
  %405 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %406 = call i32 @e1000_free_desc_rings(%struct.e1000_adapter* %405)
  %407 = load i32, i32* %10, align 4
  store i32 %407, i32* %2, align 4
  br label %408

408:                                              ; preds = %404, %403
  %409 = load i32, i32* %2, align 4
  ret i32 %409
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @dma_map_single(i32*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i8* @cpu_to_le64(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @e1000_free_desc_rings(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
