; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_run_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_run_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i64, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i64, %struct.bnx2_napi* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.bnx2_napi = type { %struct.bnx2_rx_ring_info, %struct.bnx2_tx_ring_info }
%struct.bnx2_rx_ring_info = type { %struct.bnx2_sw_bd* }
%struct.bnx2_sw_bd = type { i8* }
%struct.bnx2_tx_ring_info = type { i64, i32, i32, i32, %struct.bnx2_tx_bd* }
%struct.bnx2_tx_bd = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.l2_fhdr = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@BNX2_MAC_LOOPBACK = common dso_local global i32 0, align 4
@MAC_LOOPBACK = common dso_local global i64 0, align 8
@BNX2_PHY_LOOPBACK = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@PHY_LOOPBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND_COAL_NOW_WO_INT = common dso_local global i32 0, align 4
@TX_BD_FLAGS_START = common dso_local global i32 0, align 4
@TX_BD_FLAGS_END = common dso_local global i32 0, align 4
@BNX2_RX_OFFSET = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_BAD_CRC = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_PHY_DECODE = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_ALIGNMENT = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_TOO_SHORT = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_GIANT_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32)* @bnx2_run_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_run_loopback(%struct.bnx2* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.bnx2_tx_bd*, align 8
  %16 = alloca %struct.bnx2_sw_bd*, align 8
  %17 = alloca %struct.l2_fhdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.bnx2_napi*, align 8
  %20 = alloca %struct.bnx2_napi*, align 8
  %21 = alloca %struct.bnx2_tx_ring_info*, align 8
  %22 = alloca %struct.bnx2_rx_ring_info*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %18, align 4
  %25 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %25, i32 0, i32 7
  %27 = load %struct.bnx2_napi*, %struct.bnx2_napi** %26, align 8
  %28 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %27, i64 0
  store %struct.bnx2_napi* %28, %struct.bnx2_napi** %19, align 8
  %29 = load %struct.bnx2_napi*, %struct.bnx2_napi** %19, align 8
  store %struct.bnx2_napi* %29, %struct.bnx2_napi** %20, align 8
  %30 = load %struct.bnx2_napi*, %struct.bnx2_napi** %20, align 8
  %31 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %30, i32 0, i32 1
  store %struct.bnx2_tx_ring_info* %31, %struct.bnx2_tx_ring_info** %21, align 8
  %32 = load %struct.bnx2_napi*, %struct.bnx2_napi** %19, align 8
  %33 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %32, i32 0, i32 0
  store %struct.bnx2_rx_ring_info* %33, %struct.bnx2_rx_ring_info** %22, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @BNX2_MAC_LOOPBACK, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i64, i64* @MAC_LOOPBACK, align 8
  %39 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %42 = call i32 @bnx2_set_mac_loopback(%struct.bnx2* %41)
  br label %65

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @BNX2_PHY_LOOPBACK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %49 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %330

55:                                               ; preds = %47
  %56 = load i64, i64* @PHY_LOOPBACK, align 8
  %57 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %58 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %60 = call i32 @bnx2_set_phy_loopback(%struct.bnx2* %59)
  br label %64

61:                                               ; preds = %43
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %330

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %37
  %66 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %67 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %66, i32 0, i32 5
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ETH_HLEN, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %74 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 4
  %77 = call i32 @min(i64 %72, i64 %76)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %79 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %78, i32 0, i32 5
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_4__* %80, i32 %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %9, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %65
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %330

88:                                               ; preds = %65
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i8* @skb_put(%struct.sk_buff* %89, i32 %90)
  store i8* %91, i8** %11, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %94 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %93, i32 0, i32 5
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = call i32 @memcpy(i8* %92, i32 %97, i32 %98)
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* @ETH_ALEN, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = call i32 @memset(i8* %103, i32 0, i32 8)
  store i32 14, i32* %8, align 4
  br label %105

105:                                              ; preds = %117, %88
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 255
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %11, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %105

120:                                              ; preds = %105
  %121 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %122 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %121, i32 0, i32 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %130 = call i64 @dma_map_single(i32* %124, i32 %127, i32 %128, i32 %129)
  store i64 %130, i64* %14, align 8
  %131 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %132 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %131, i32 0, i32 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i64, i64* %14, align 8
  %136 = call i64 @dma_mapping_error(i32* %134, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %120
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = call i32 @dev_kfree_skb(%struct.sk_buff* %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %330

143:                                              ; preds = %120
  %144 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %145 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %146 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %147 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @BNX2_HC_COMMAND_COAL_NOW_WO_INT, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @BNX2_WR(%struct.bnx2* %144, i32 %145, i32 %150)
  %152 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %153 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %154 = call i32 @BNX2_RD(%struct.bnx2* %152, i32 %153)
  %155 = call i32 @udelay(i32 5)
  %156 = load %struct.bnx2_napi*, %struct.bnx2_napi** %19, align 8
  %157 = call i32 @bnx2_get_hw_rx_cons(%struct.bnx2_napi* %156)
  store i32 %157, i32* %12, align 4
  store i32 0, i32* %7, align 4
  %158 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %159 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %158, i32 0, i32 4
  %160 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %159, align 8
  %161 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %162 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @BNX2_TX_RING_IDX(i64 %163)
  %165 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %160, i64 %164
  store %struct.bnx2_tx_bd* %165, %struct.bnx2_tx_bd** %15, align 8
  %166 = load i64, i64* %14, align 8
  %167 = trunc i64 %166 to i32
  %168 = ashr i32 %167, 32
  %169 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %15, align 8
  %170 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = load i64, i64* %14, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %15, align 8
  %174 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %15, align 8
  %177 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @TX_BD_FLAGS_START, align 4
  %179 = load i32, i32* @TX_BD_FLAGS_END, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %15, align 8
  %182 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %7, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %7, align 4
  %185 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %186 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @BNX2_NEXT_TX_BD(i64 %187)
  %189 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %190 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %193 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = add i32 %194, %191
  store i32 %195, i32* %193, align 8
  %196 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %197 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %198 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %201 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @BNX2_WR16(%struct.bnx2* %196, i32 %199, i64 %202)
  %204 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %205 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %206 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %209 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @BNX2_WR(%struct.bnx2* %204, i32 %207, i32 %210)
  %212 = call i32 @udelay(i32 100)
  %213 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %214 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %215 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %216 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @BNX2_HC_COMMAND_COAL_NOW_WO_INT, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @BNX2_WR(%struct.bnx2* %213, i32 %214, i32 %219)
  %221 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %222 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %223 = call i32 @BNX2_RD(%struct.bnx2* %221, i32 %222)
  %224 = call i32 @udelay(i32 5)
  %225 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %226 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %225, i32 0, i32 4
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i64, i64* %14, align 8
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %232 = call i32 @dma_unmap_single(i32* %228, i64 %229, i32 %230, i32 %231)
  %233 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %234 = call i32 @dev_kfree_skb(%struct.sk_buff* %233)
  %235 = load %struct.bnx2_napi*, %struct.bnx2_napi** %20, align 8
  %236 = call i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi* %235)
  %237 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %21, align 8
  %238 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %236, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %143
  br label %326

242:                                              ; preds = %143
  %243 = load %struct.bnx2_napi*, %struct.bnx2_napi** %19, align 8
  %244 = call i32 @bnx2_get_hw_rx_cons(%struct.bnx2_napi* %243)
  store i32 %244, i32* %13, align 4
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* %7, align 4
  %248 = add i32 %246, %247
  %249 = icmp ne i32 %245, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  br label %326

251:                                              ; preds = %242
  %252 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %22, align 8
  %253 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %252, i32 0, i32 0
  %254 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %253, align 8
  %255 = load i32, i32* %12, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %254, i64 %256
  store %struct.bnx2_sw_bd* %257, %struct.bnx2_sw_bd** %16, align 8
  %258 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %16, align 8
  %259 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  store i8* %260, i8** %10, align 8
  %261 = load i8*, i8** %10, align 8
  %262 = call %struct.l2_fhdr* @get_l2_fhdr(i8* %261)
  store %struct.l2_fhdr* %262, %struct.l2_fhdr** %17, align 8
  %263 = load %struct.l2_fhdr*, %struct.l2_fhdr** %17, align 8
  %264 = bitcast %struct.l2_fhdr* %263 to i8*
  %265 = load i32, i32* @BNX2_RX_OFFSET, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  store i8* %267, i8** %10, align 8
  %268 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %269 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %268, i32 0, i32 4
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  %272 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %16, align 8
  %273 = load i32, i32* @mapping, align 4
  %274 = call i32 @dma_unmap_addr(%struct.bnx2_sw_bd* %272, i32 %273)
  %275 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %276 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %279 = call i32 @dma_sync_single_for_cpu(i32* %271, i32 %274, i32 %277, i32 %278)
  %280 = load %struct.l2_fhdr*, %struct.l2_fhdr** %17, align 8
  %281 = getelementptr inbounds %struct.l2_fhdr, %struct.l2_fhdr* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @L2_FHDR_ERRORS_BAD_CRC, align 4
  %284 = load i32, i32* @L2_FHDR_ERRORS_PHY_DECODE, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @L2_FHDR_ERRORS_ALIGNMENT, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @L2_FHDR_ERRORS_TOO_SHORT, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @L2_FHDR_ERRORS_GIANT_FRAME, align 4
  %291 = or i32 %289, %290
  %292 = and i32 %282, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %251
  br label %326

295:                                              ; preds = %251
  %296 = load %struct.l2_fhdr*, %struct.l2_fhdr** %17, align 8
  %297 = getelementptr inbounds %struct.l2_fhdr, %struct.l2_fhdr* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %298, 4
  %300 = load i32, i32* %6, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  br label %326

303:                                              ; preds = %295
  store i32 14, i32* %8, align 4
  br label %304

304:                                              ; preds = %322, %303
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* %6, align 4
  %307 = icmp ult i32 %305, %306
  br i1 %307, label %308, label %325

308:                                              ; preds = %304
  %309 = load i8*, i8** %10, align 8
  %310 = load i32, i32* %8, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %309, i64 %311
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = load i32, i32* %8, align 4
  %316 = and i32 %315, 255
  %317 = trunc i32 %316 to i8
  %318 = zext i8 %317 to i32
  %319 = icmp ne i32 %314, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %308
  br label %326

321:                                              ; preds = %308
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %8, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %8, align 4
  br label %304

325:                                              ; preds = %304
  store i32 0, i32* %18, align 4
  br label %326

326:                                              ; preds = %325, %320, %302, %294, %250, %241
  %327 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %328 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %327, i32 0, i32 2
  store i64 0, i64* %328, align 8
  %329 = load i32, i32* %18, align 4
  store i32 %329, i32* %3, align 4
  br label %330

330:                                              ; preds = %326, %138, %85, %61, %54
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local i32 @bnx2_set_mac_loopback(%struct.bnx2*) #1

declare dso_local i32 @bnx2_set_phy_loopback(%struct.bnx2*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bnx2_get_hw_rx_cons(%struct.bnx2_napi*) #1

declare dso_local i64 @BNX2_TX_RING_IDX(i64) #1

declare dso_local i64 @BNX2_NEXT_TX_BD(i64) #1

declare dso_local i32 @BNX2_WR16(%struct.bnx2*, i32, i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i64 @bnx2_get_hw_tx_cons(%struct.bnx2_napi*) #1

declare dso_local %struct.l2_fhdr* @get_l2_fhdr(i8*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_bd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
