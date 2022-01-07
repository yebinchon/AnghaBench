; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_process_recv_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_process_recv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i32, i32, i32, i64, %struct.pcie_service_card* }
%struct.pcie_service_card = type { i64, i64, i64, %struct.mwifiex_pfu_buf_desc**, %struct.sk_buff**, %struct.TYPE_2__ }
%struct.mwifiex_pfu_buf_desc = type { i32, i32, i8*, i64, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i64, i64, i32, i32, i64, i32, i32, i64 }
%struct.mwifiex_pcie_buf_desc = type { i32, i32, i8*, i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RECV DATA: failed to read reg->rx_wrptr\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@MWIFIEX_RX_DATA_BUF_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid RX len %d, Rd=%#x, Wr=%#x\0A\00", align 1
@DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"info: RECV DATA: Rd=%#x, Wr=%#x, Len=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unable to allocate skb.\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"RECV DATA: Attach new sk_buff %p at rxbd_rdidx=%d\0A\00", align 1
@MWIFIEX_MAX_TXRX_BD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"info: RECV DATA: <Rd: %#x, Wr: %#x>\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"RECV DATA: failed to write reg->rx_rdptr\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"info: RECV DATA: Rcvd packet from fw successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_process_recv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_process_recv_data(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.mwifiex_pcie_buf_desc*, align 8
  %13 = alloca %struct.mwifiex_pfu_buf_desc*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %16, i32 0, i32 5
  %18 = load %struct.pcie_service_card*, %struct.pcie_service_card** %17, align 8
  store %struct.pcie_service_card* %18, %struct.pcie_service_card** %4, align 8
  %19 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %20 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %21, align 8
  store %struct.mwifiex_pcie_card_reg* %22, %struct.mwifiex_pcie_card_reg** %5, align 8
  store i32 0, i32* %10, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %24 = call i32 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %28 = call i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %31 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %32 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %30, i32 %33, i64* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %37, i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %330

40:                                               ; preds = %29
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %43 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %322, %40
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %47 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %45, %48
  %50 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %51 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %54 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %52, %55
  %57 = icmp ne i64 %49, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %44
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %61 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %59, %62
  %64 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %65 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %68 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = and i64 %66, %69
  %71 = icmp eq i64 %63, %70
  br label %72

72:                                               ; preds = %58, %44
  %73 = phi i1 [ true, %44 ], [ %71, %58 ]
  br i1 %73, label %74, label %329

74:                                               ; preds = %72
  %75 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %76 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %79 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %77, %80
  store i64 %81, i64* %7, align 8
  %82 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %83 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %82, i32 0, i32 4
  %84 = load %struct.sk_buff**, %struct.sk_buff*** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %84, i64 %85
  %87 = load %struct.sk_buff*, %struct.sk_buff** %86, align 8
  store %struct.sk_buff* %87, %struct.sk_buff** %14, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %74
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %332

93:                                               ; preds = %74
  %94 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %96 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %97 = call i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter* %94, %struct.sk_buff* %95, i32 %96)
  %98 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %99 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %98, i32 0, i32 4
  %100 = load %struct.sk_buff**, %struct.sk_buff*** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %100, i64 %101
  store %struct.sk_buff* null, %struct.sk_buff** %102, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @get_unaligned_le16(i32 %105)
  store i64 %106, i64* %15, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sle i64 %107, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %93
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* @MWIFIEX_RX_DATA_BUF_SIZE, align 8
  %115 = icmp sgt i64 %113, %114
  br label %116

116:                                              ; preds = %112, %93
  %117 = phi i1 [ true, %93 ], [ %115, %112 ]
  %118 = zext i1 %117 to i32
  %119 = call i64 @WARN_ON(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %123 = load i32, i32* @ERROR, align 4
  %124 = load i64, i64* %15, align 8
  %125 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %126 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %122, i32 %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %124, i64 %127, i64 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %131 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %130)
  br label %168

132:                                              ; preds = %116
  %133 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %134 = load i64, i64* %15, align 8
  %135 = call i32 @skb_put(%struct.sk_buff* %133, i64 %134)
  %136 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %137 = load i32, i32* @DATA, align 4
  %138 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %139 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* %15, align 8
  %143 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %136, i32 %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %140, i64 %141, i64 %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %145 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %146 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @skb_pull(%struct.sk_buff* %144, i64 %147)
  %149 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %150 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %132
  %154 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %155 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %154, i32 0, i32 3
  %156 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %157 = call i32 @skb_queue_tail(i32* %155, %struct.sk_buff* %156)
  %158 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %158, i32 0, i32 1
  store i32 1, i32* %159, align 8
  %160 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %161 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %160, i32 0, i32 2
  %162 = call i32 @atomic_inc(i32* %161)
  br label %167

163:                                              ; preds = %132
  %164 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %166 = call i32 @mwifiex_handle_rx_packet(%struct.mwifiex_adapter* %164, %struct.sk_buff* %165)
  br label %167

167:                                              ; preds = %163, %153
  br label %168

168:                                              ; preds = %167, %121
  %169 = load i64, i64* @MWIFIEX_RX_DATA_BUF_SIZE, align 8
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call %struct.sk_buff* @mwifiex_alloc_dma_align_buf(i64 %169, i32 %170)
  store %struct.sk_buff* %171, %struct.sk_buff** %11, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %173 = icmp ne %struct.sk_buff* %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %176 = load i32, i32* @ERROR, align 4
  %177 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %175, i32 %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %332

180:                                              ; preds = %168
  %181 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %183 = load i64, i64* @MWIFIEX_RX_DATA_BUF_SIZE, align 8
  %184 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %185 = call i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter* %181, %struct.sk_buff* %182, i64 %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  store i32 -1, i32* %2, align 4
  br label %332

188:                                              ; preds = %180
  %189 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %190 = call i8* @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff* %189)
  store i8* %190, i8** %9, align 8
  %191 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %192 = load i32, i32* @INFO, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %194 = load i64, i64* %7, align 8
  %195 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %191, i32 %192, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), %struct.sk_buff* %193, i64 %194)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %197 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %198 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %197, i32 0, i32 4
  %199 = load %struct.sk_buff**, %struct.sk_buff*** %198, align 8
  %200 = load i64, i64* %7, align 8
  %201 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %199, i64 %200
  store %struct.sk_buff* %196, %struct.sk_buff** %201, align 8
  %202 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %203 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %202, i32 0, i32 7
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %237

206:                                              ; preds = %188
  %207 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %208 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %207, i32 0, i32 3
  %209 = load %struct.mwifiex_pfu_buf_desc**, %struct.mwifiex_pfu_buf_desc*** %208, align 8
  %210 = load i64, i64* %7, align 8
  %211 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %209, i64 %210
  %212 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %211, align 8
  store %struct.mwifiex_pfu_buf_desc* %212, %struct.mwifiex_pfu_buf_desc** %13, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %13, align 8
  %215 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %214, i32 0, i32 2
  store i8* %213, i8** %215, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %217 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %13, align 8
  %220 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %13, align 8
  %225 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 8
  %226 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %13, align 8
  %227 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %226, i32 0, i32 3
  store i64 0, i64* %227, align 8
  %228 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %229 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %232 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %230, %233
  %235 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %13, align 8
  %236 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc, %struct.mwifiex_pfu_buf_desc* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  br label %255

237:                                              ; preds = %188
  %238 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %239 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %238, i32 0, i32 3
  %240 = load %struct.mwifiex_pfu_buf_desc**, %struct.mwifiex_pfu_buf_desc*** %239, align 8
  %241 = load i64, i64* %7, align 8
  %242 = getelementptr inbounds %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %240, i64 %241
  %243 = load %struct.mwifiex_pfu_buf_desc*, %struct.mwifiex_pfu_buf_desc** %242, align 8
  %244 = bitcast %struct.mwifiex_pfu_buf_desc* %243 to %struct.mwifiex_pcie_buf_desc*
  store %struct.mwifiex_pcie_buf_desc* %244, %struct.mwifiex_pcie_buf_desc** %12, align 8
  %245 = load i8*, i8** %9, align 8
  %246 = load %struct.mwifiex_pcie_buf_desc*, %struct.mwifiex_pcie_buf_desc** %12, align 8
  %247 = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, %struct.mwifiex_pcie_buf_desc* %246, i32 0, i32 2
  store i8* %245, i8** %247, align 8
  %248 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %249 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.mwifiex_pcie_buf_desc*, %struct.mwifiex_pcie_buf_desc** %12, align 8
  %252 = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, %struct.mwifiex_pcie_buf_desc* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  %253 = load %struct.mwifiex_pcie_buf_desc*, %struct.mwifiex_pcie_buf_desc** %12, align 8
  %254 = getelementptr inbounds %struct.mwifiex_pcie_buf_desc, %struct.mwifiex_pcie_buf_desc* %253, i32 0, i32 0
  store i32 0, i32* %254, align 8
  br label %255

255:                                              ; preds = %237, %206
  %256 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %257 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %257, align 8
  %260 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %261 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = and i64 %259, %262
  %264 = load i32, i32* @MWIFIEX_MAX_TXRX_BD, align 4
  %265 = sext i32 %264 to i64
  %266 = icmp eq i64 %263, %265
  br i1 %266, label %267, label %281

267:                                              ; preds = %255
  %268 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %269 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %272 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = and i64 %270, %273
  %275 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %276 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = xor i64 %274, %277
  %279 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %280 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %279, i32 0, i32 1
  store i64 %278, i64* %280, align 8
  br label %281

281:                                              ; preds = %267, %255
  %282 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %283 = load i32, i32* @DATA, align 4
  %284 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %285 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* %6, align 8
  %288 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %282, i32 %283, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %286, i64 %287)
  %289 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %290 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %293 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = and i64 %291, %294
  store i64 %295, i64* %8, align 8
  %296 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %297 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %298 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %301 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* %8, align 8
  %304 = or i64 %302, %303
  %305 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %296, i32 %299, i64 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %281
  %308 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %309 = load i32, i32* @DATA, align 4
  %310 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %308, i32 %309, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %330

311:                                              ; preds = %281
  %312 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %313 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %314 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 8
  %316 = call i64 @mwifiex_read_reg(%struct.mwifiex_adapter* %312, i32 %315, i64* %6)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %311
  %319 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %320 = load i32, i32* @ERROR, align 4
  %321 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %319, i32 %320, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %330

322:                                              ; preds = %311
  %323 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %324 = load i32, i32* @DATA, align 4
  %325 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %323, i32 %324, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %326 = load i64, i64* %6, align 8
  %327 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %328 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %327, i32 0, i32 0
  store i64 %326, i64* %328, align 8
  br label %44

329:                                              ; preds = %72
  br label %330

330:                                              ; preds = %329, %318, %307, %36
  %331 = load i32, i32* %10, align 4
  store i32 %331, i32* %2, align 4
  br label %332

332:                                              ; preds = %330, %187, %174, %90
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local i32 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pm_wakeup_card(%struct.mwifiex_adapter*) #1

declare dso_local i64 @mwifiex_read_reg(%struct.mwifiex_adapter*, i32, i64*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i32) #1

declare dso_local i64 @get_unaligned_le16(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mwifiex_handle_rx_packet(%struct.mwifiex_adapter*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @mwifiex_alloc_dma_align_buf(i64, i32) #1

declare dso_local i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i64, i32) #1

declare dso_local i8* @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff*) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
