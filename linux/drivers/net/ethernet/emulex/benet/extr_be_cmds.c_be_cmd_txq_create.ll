; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_txq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_txq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32 }
%struct.be_tx_obj = type { i32, %struct.be_queue_info, %struct.be_queue_info }
%struct.be_queue_info = type { i32, i32, i32, %struct.be_dma_mem }
%struct.be_dma_mem = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_eth_tx_create = type { %struct.TYPE_2__, i32, i32, i8*, i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.be_cmd_resp_eth_tx_create = type { i32, i32 }

@CMD_SUBSYSTEM_ETH = common dso_local global i32 0, align 4
@OPCODE_ETH_TX_CREATE = common dso_local global i32 0, align 4
@BE_FUNCTION_CAPS_SUPER_NIC = common dso_local global i32 0, align 4
@BE_ULP1_NUM = common dso_local global i32 0, align 4
@BE_ETH_TX_RING_TYPE_STANDARD = common dso_local global i32 0, align 4
@DB_TXULP1_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_txq_create(%struct.be_adapter* %0, %struct.be_tx_obj* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_tx_obj*, align 8
  %5 = alloca %struct.be_mcc_wrb, align 4
  %6 = alloca %struct.be_cmd_req_eth_tx_create*, align 8
  %7 = alloca %struct.be_queue_info*, align 8
  %8 = alloca %struct.be_queue_info*, align 8
  %9 = alloca %struct.be_dma_mem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.be_cmd_resp_eth_tx_create*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_tx_obj* %1, %struct.be_tx_obj** %4, align 8
  %13 = bitcast %struct.be_mcc_wrb* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.be_tx_obj*, %struct.be_tx_obj** %4, align 8
  %15 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %14, i32 0, i32 2
  store %struct.be_queue_info* %15, %struct.be_queue_info** %7, align 8
  %16 = load %struct.be_tx_obj*, %struct.be_tx_obj** %4, align 8
  %17 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %16, i32 0, i32 1
  store %struct.be_queue_info* %17, %struct.be_queue_info** %8, align 8
  %18 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %19 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %18, i32 0, i32 3
  store %struct.be_dma_mem* %19, %struct.be_dma_mem** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = call i8* @embedded_payload(%struct.be_mcc_wrb* %5)
  %21 = bitcast i8* %20 to %struct.be_cmd_req_eth_tx_create*
  store %struct.be_cmd_req_eth_tx_create* %21, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %22 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %23 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %22, i32 0, i32 0
  %24 = load i32, i32* @CMD_SUBSYSTEM_ETH, align 4
  %25 = load i32, i32* @OPCODE_ETH_TX_CREATE, align 4
  %26 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %23, i32 %24, i32 %25, i32 48, %struct.be_mcc_wrb* %5, i32* null)
  %27 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %28 = call i64 @lancer_chip(%struct.be_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %32 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %55

34:                                               ; preds = %2
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = call i64 @BEx_chip(%struct.be_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BE_FUNCTION_CAPS_SUPER_NIC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %47 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 2, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %38
  br label %54

50:                                               ; preds = %34
  %51 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %52 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 2, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %49
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %57 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %63 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %67 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %70 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %73 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PAGES_4K_SPANNED(i32 %71, i32 %74)
  %76 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %77 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @BE_ULP1_NUM, align 4
  %79 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %80 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @BE_ETH_TX_RING_TYPE_STANDARD, align 4
  %82 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %83 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %85 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @cpu_to_le16(i32 %86)
  %88 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %89 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %91 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be_encoded_q_len(i32 %92)
  %94 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %95 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %97 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %100 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %104 = call i32 @be_cmd_page_addrs_prepare(i32 %98, i32 %102, %struct.be_dma_mem* %103)
  %105 = load %struct.be_cmd_req_eth_tx_create*, %struct.be_cmd_req_eth_tx_create** %6, align 8
  %106 = getelementptr inbounds %struct.be_cmd_req_eth_tx_create, %struct.be_cmd_req_eth_tx_create* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %11, align 4
  %109 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %110 = call i32 @be_cmd_notify_wait(%struct.be_adapter* %109, %struct.be_mcc_wrb* %5)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %138, label %113

113:                                              ; preds = %68
  %114 = call i8* @embedded_payload(%struct.be_mcc_wrb* %5)
  %115 = bitcast i8* %114 to %struct.be_cmd_resp_eth_tx_create*
  store %struct.be_cmd_resp_eth_tx_create* %115, %struct.be_cmd_resp_eth_tx_create** %12, align 8
  %116 = load %struct.be_cmd_resp_eth_tx_create*, %struct.be_cmd_resp_eth_tx_create** %12, align 8
  %117 = getelementptr inbounds %struct.be_cmd_resp_eth_tx_create, %struct.be_cmd_resp_eth_tx_create* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le16_to_cpu(i32 %118)
  %120 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %121 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %131

124:                                              ; preds = %113
  %125 = load %struct.be_cmd_resp_eth_tx_create*, %struct.be_cmd_resp_eth_tx_create** %12, align 8
  %126 = getelementptr inbounds %struct.be_cmd_resp_eth_tx_create, %struct.be_cmd_resp_eth_tx_create* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  %129 = load %struct.be_tx_obj*, %struct.be_tx_obj** %4, align 8
  %130 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  br label %135

131:                                              ; preds = %113
  %132 = load i32, i32* @DB_TXULP1_OFFSET, align 4
  %133 = load %struct.be_tx_obj*, %struct.be_tx_obj** %4, align 8
  %134 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %124
  %136 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %137 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %136, i32 0, i32 0
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %68
  %139 = load i32, i32* %10, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #2

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #2

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #2

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @PAGES_4K_SPANNED(i32, i32) #2

declare dso_local i32 @be_encoded_q_len(i32) #2

declare dso_local i32 @be_cmd_page_addrs_prepare(i32, i32, %struct.be_dma_mem*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @be_cmd_notify_wait(%struct.be_adapter*, %struct.be_mcc_wrb*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
