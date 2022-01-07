; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_process_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_process_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i32, %struct.TYPE_4__*, i32, i32, %struct.pcie_service_card* }
%struct.TYPE_4__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i64, i32 }
%struct.pcie_service_card = type { %struct.sk_buff*, i32, %struct.sk_buff*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32, i32, i64 }

@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"info: Rx CMD Response\0A\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@MWIFIEX_UPLD_SIZE = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PS_STATE_SLEEP_CFM = common dso_local global i64 0, align 8
@MWIFIEX_SLEEP_COOKIE_SIZE = common dso_local global i32 0, align 4
@PCIE_CPU_INT_EVENT = common dso_local global i32 0, align 4
@CPU_INTR_SLEEP_CFM_DONE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Write register failed\0A\00", align 1
@MWIFIEX_MAX_DELAY_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"There is no command but got cmdrsp\0A\00", align 1
@u32 = common dso_local global i32 0, align 4
@MWIFIEX_SIZE_OF_CMD_BUFFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"cmd_done: failed to clear cmd_rsp_addr_lo\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"cmd_done: failed to clear cmd_rsp_addr_hi\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_process_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_process_cmd_complete(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 5
  %11 = load %struct.pcie_service_card*, %struct.pcie_service_card** %10, align 8
  store %struct.pcie_service_card* %11, %struct.pcie_service_card** %4, align 8
  %12 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %13 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %14, align 8
  store %struct.mwifiex_pcie_card_reg* %15, %struct.mwifiex_pcie_card_reg** %5, align 8
  %16 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %17 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %16, i32 0, i32 0
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %20 = load i32, i32* @CMD, align 4
  %21 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %19, i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %30 = call i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter* %27, %struct.sk_buff* %28, i32 %29)
  br label %40

31:                                               ; preds = %1
  %32 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %33 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff* %35)
  %37 = load i64, i64* @MWIFIEX_UPLD_SIZE, align 8
  %38 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %39 = call i32 @pci_dma_sync_single_for_cpu(i32 %34, i32 %36, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %42 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %41, i32 0, i32 2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %47 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %48 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %47, i32 0, i32 2
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %51 = call i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter* %46, %struct.sk_buff* %49, i32 %50)
  %52 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %53 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %52, i32 0, i32 2
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %54)
  %56 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %57 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %56, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %57, align 8
  br label %58

58:                                               ; preds = %45, %40
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @get_unaligned_le16(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load i64, i64* @MWIFIEX_UPLD_SIZE, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = call i32 @skb_put(%struct.sk_buff* %63, i64 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @skb_trim(%struct.sk_buff* %70, i32 %71)
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %173, label %77

77:                                               ; preds = %58
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PS_STATE_SLEEP_CFM, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %142

83:                                               ; preds = %77
  %84 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %85 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i32 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff* %87)
  %89 = load i32, i32* @MWIFIEX_SLEEP_COOKIE_SIZE, align 4
  %90 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %91 = call i32 @pci_dma_sync_single_for_device(i32 %86, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %93 = load i32, i32* @PCIE_CPU_INT_EVENT, align 4
  %94 = load i32, i32* @CPU_INTR_SLEEP_CFM_DONE, align 4
  %95 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %83
  %98 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %99 = load i32, i32* @ERROR, align 4
  %100 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %98, i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %216

101:                                              ; preds = %83
  %102 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %103 = load i32, i32* @MWIFIEX_MAX_DELAY_COUNT, align 4
  %104 = call i32 @mwifiex_delay_for_sleep_cookie(%struct.mwifiex_adapter* %102, i32 %103)
  %105 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %108 = call i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter* %105, %struct.sk_buff* %106, i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %110 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @skb_pull(%struct.sk_buff* %109, i32 %112)
  br label %114

114:                                              ; preds = %129, %101
  %115 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %116 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  %122 = icmp slt i32 %120, 10
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %125 = call i64 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter* %124)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %123, %119, %114
  %128 = phi i1 [ false, %119 ], [ false, %114 ], [ %126, %123 ]
  br i1 %128, label %129, label %131

129:                                              ; preds = %127
  %130 = call i32 @usleep_range(i32 50, i32 60)
  br label %114

131:                                              ; preds = %127
  %132 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %133 = call i32 @mwifiex_pcie_enable_host_int(%struct.mwifiex_adapter* %132)
  %134 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @mwifiex_process_sleep_confirm_resp(%struct.mwifiex_adapter* %134, i32 %137, i64 %140)
  br label %146

142:                                              ; preds = %77
  %143 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %144 = load i32, i32* @ERROR, align 4
  %145 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %143, i32 %144, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %142, %131
  %147 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @u32, align 4
  %154 = load i32, i32* @MWIFIEX_SIZE_OF_CMD_BUFFER, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @min_t(i32 %153, i32 %154, i64 %157)
  %159 = call i32 @memcpy(i32 %149, i32 %152, i32 %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %161 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @skb_push(%struct.sk_buff* %160, i32 %163)
  %165 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %167 = load i64, i64* @MWIFIEX_UPLD_SIZE, align 8
  %168 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %169 = call i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter* %165, %struct.sk_buff* %166, i64 %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %146
  store i32 -1, i32* %2, align 4
  br label %216

172:                                              ; preds = %146
  br label %215

173:                                              ; preds = %58
  %174 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %175 = call i64 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %214

177:                                              ; preds = %173
  %178 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %179 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %180 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @skb_pull(%struct.sk_buff* %178, i32 %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %184 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %185 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %184, i32 0, i32 2
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  store %struct.sk_buff* %183, %struct.sk_buff** %187, align 8
  %188 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %188, i32 0, i32 1
  store i32 1, i32* %189, align 8
  %190 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %191 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %190, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %191, align 8
  %192 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %193 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %194 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %192, i32 %195, i32 0)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %177
  %199 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %200 = load i32, i32* @ERROR, align 4
  %201 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %199, i32 %200, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %216

202:                                              ; preds = %177
  %203 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %204 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %205 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @mwifiex_write_reg(%struct.mwifiex_adapter* %203, i32 %206, i32 0)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %211 = load i32, i32* @ERROR, align 4
  %212 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %210, i32 %211, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %216

213:                                              ; preds = %202
  br label %214

214:                                              ; preds = %213, %173
  br label %215

215:                                              ; preds = %214, %172
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %215, %209, %198, %171, %97
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_unmap_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @MWIFIEX_SKB_DMA_ADDR(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @get_unaligned_le16(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i64 @mwifiex_write_reg(%struct.mwifiex_adapter*, i32, i32) #1

declare dso_local i32 @mwifiex_delay_for_sleep_cookie(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @mwifiex_pcie_ok_to_access_hw(%struct.mwifiex_adapter*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mwifiex_pcie_enable_host_int(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_process_sleep_confirm_resp(%struct.mwifiex_adapter*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i64 @mwifiex_map_pci_memory(%struct.mwifiex_adapter*, %struct.sk_buff*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
