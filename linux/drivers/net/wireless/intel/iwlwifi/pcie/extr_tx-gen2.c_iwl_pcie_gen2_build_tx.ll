; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_build_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_build_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_tfh_tfd = type { i32 }
%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { i32*, i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.sk_buff = type { i8* }
%struct.iwl_cmd_meta = type { i32 }

@IWL_FIRST_TB_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_tfh_tfd* (%struct.iwl_trans*, %struct.iwl_txq*, %struct.iwl_device_cmd*, %struct.sk_buff*, %struct.iwl_cmd_meta*, i32, i32, i32)* @iwl_pcie_gen2_build_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_tfh_tfd* @iwl_pcie_gen2_build_tx(%struct.iwl_trans* %0, %struct.iwl_txq* %1, %struct.iwl_device_cmd* %2, %struct.sk_buff* %3, %struct.iwl_cmd_meta* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.iwl_tfh_tfd*, align 8
  %10 = alloca %struct.iwl_trans*, align 8
  %11 = alloca %struct.iwl_txq*, align 8
  %12 = alloca %struct.iwl_device_cmd*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.iwl_cmd_meta*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.iwl_tfh_tfd*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %10, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %11, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %12, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %13, align 8
  store %struct.iwl_cmd_meta* %4, %struct.iwl_cmd_meta** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %26 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %27 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %25, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %31 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %32 = load i32, i32* %18, align 4
  %33 = call %struct.iwl_tfh_tfd* @iwl_pcie_get_tfd(%struct.iwl_trans* %30, %struct.iwl_txq* %31, i32 %32)
  store %struct.iwl_tfh_tfd* %33, %struct.iwl_tfh_tfd** %19, align 8
  %34 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @iwl_pcie_get_first_tb_dma(%struct.iwl_txq* %34, i32 %35)
  store i32 %36, i32* %20, align 4
  %37 = load %struct.iwl_txq*, %struct.iwl_txq** %11, align 8
  %38 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %44 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %45 = call i32 @memcpy(i32* %42, %struct.iwl_device_cmd* %43, i32 %44)
  %46 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %47 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %19, align 8
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %50 = call i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans* %46, %struct.iwl_tfh_tfd* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %56, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %8
  %64 = load i32, i32* %21, align 4
  %65 = call i32 @ALIGN(i32 %64, i32 4)
  store i32 %65, i32* %22, align 4
  br label %68

66:                                               ; preds = %8
  %67 = load i32, i32* %21, align 4
  store i32 %67, i32* %22, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %70 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = bitcast i32* %73 to i8*
  store i8* %74, i8** %24, align 8
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %76 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %24, align 8
  %79 = load i32, i32* %22, align 4
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  %81 = call i32 @dma_map_single(i32 %77, i8* %78, i32 %79, i32 %80)
  store i32 %81, i32* %20, align 4
  %82 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %83 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %20, align 4
  %86 = call i32 @dma_mapping_error(i32 %84, i32 %85)
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %68
  br label %163

90:                                               ; preds = %68
  %91 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %92 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %19, align 8
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %22, align 4
  %95 = call i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans* %91, %struct.iwl_tfh_tfd* %92, i32 %93, i32 %94)
  %96 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %97 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %19, align 8
  %101 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %102 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %101, i32 0, i32 0
  %103 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %104 = load i32, i32* %22, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @trace_iwlwifi_dev_tx(i32 %98, %struct.sk_buff* %99, %struct.iwl_tfh_tfd* %100, i32 4, i32* %102, i32 %105, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %109 = call i32 @skb_headlen(%struct.sk_buff* %108)
  %110 = load i32, i32* %15, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %23, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %153

114:                                              ; preds = %90
  %115 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %116 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr i8, i8* %120, i64 %122
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* @DMA_TO_DEVICE, align 4
  %126 = call i32 @dma_map_single(i32 %117, i8* %123, i32 %124, i32 %125)
  store i32 %126, i32* %20, align 4
  %127 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %128 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %20, align 4
  %131 = call i32 @dma_mapping_error(i32 %129, i32 %130)
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %114
  br label %163

135:                                              ; preds = %114
  %136 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %137 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %19, align 8
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %23, align 4
  %140 = call i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans* %136, %struct.iwl_tfh_tfd* %137, i32 %138, i32 %139)
  %141 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %142 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr i8, i8* %147, i64 %149
  %151 = load i32, i32* %23, align 4
  %152 = call i32 @trace_iwlwifi_dev_tx_tb(i32 %143, %struct.sk_buff* %144, i8* %150, i32 %151)
  br label %153

153:                                              ; preds = %135, %90
  %154 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %156 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %19, align 8
  %157 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %14, align 8
  %158 = call i64 @iwl_pcie_gen2_tx_add_frags(%struct.iwl_trans* %154, %struct.sk_buff* %155, %struct.iwl_tfh_tfd* %156, %struct.iwl_cmd_meta* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %163

161:                                              ; preds = %153
  %162 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %19, align 8
  store %struct.iwl_tfh_tfd* %162, %struct.iwl_tfh_tfd** %9, align 8
  br label %168

163:                                              ; preds = %160, %134, %89
  %164 = load %struct.iwl_trans*, %struct.iwl_trans** %10, align 8
  %165 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %14, align 8
  %166 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %19, align 8
  %167 = call i32 @iwl_pcie_gen2_tfd_unmap(%struct.iwl_trans* %164, %struct.iwl_cmd_meta* %165, %struct.iwl_tfh_tfd* %166)
  store %struct.iwl_tfh_tfd* null, %struct.iwl_tfh_tfd** %9, align 8
  br label %168

168:                                              ; preds = %163, %161
  %169 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %9, align 8
  ret %struct.iwl_tfh_tfd* %169
}

declare dso_local i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq*, i32) #1

declare dso_local %struct.iwl_tfh_tfd* @iwl_pcie_get_tfd(%struct.iwl_trans*, %struct.iwl_txq*, i32) #1

declare dso_local i32 @iwl_pcie_get_first_tb_dma(%struct.iwl_txq*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.iwl_device_cmd*, i32) #1

declare dso_local i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans*, %struct.iwl_tfh_tfd*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @trace_iwlwifi_dev_tx(i32, %struct.sk_buff*, %struct.iwl_tfh_tfd*, i32, i32*, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @trace_iwlwifi_dev_tx_tb(i32, %struct.sk_buff*, i8*, i32) #1

declare dso_local i64 @iwl_pcie_gen2_tx_add_frags(%struct.iwl_trans*, %struct.sk_buff*, %struct.iwl_tfh_tfd*, %struct.iwl_cmd_meta*) #1

declare dso_local i32 @iwl_pcie_gen2_tfd_unmap(%struct.iwl_trans*, %struct.iwl_cmd_meta*, %struct.iwl_tfh_tfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
