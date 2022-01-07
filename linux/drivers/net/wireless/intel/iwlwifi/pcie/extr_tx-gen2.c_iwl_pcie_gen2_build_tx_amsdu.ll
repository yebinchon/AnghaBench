; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_build_tx_amsdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_build_tx_amsdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_tfh_tfd = type { i32 }
%struct.iwl_trans = type { i32 }
%struct.iwl_txq = type { i32*, i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_cmd_meta = type { i32 }

@IWL_FIRST_TB_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_tfh_tfd* (%struct.iwl_trans*, %struct.iwl_txq*, %struct.iwl_device_cmd*, %struct.sk_buff*, %struct.iwl_cmd_meta*, i32, i32)* @iwl_pcie_gen2_build_tx_amsdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_tfh_tfd* @iwl_pcie_gen2_build_tx_amsdu(%struct.iwl_trans* %0, %struct.iwl_txq* %1, %struct.iwl_device_cmd* %2, %struct.sk_buff* %3, %struct.iwl_cmd_meta* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iwl_tfh_tfd*, align 8
  %9 = alloca %struct.iwl_trans*, align 8
  %10 = alloca %struct.iwl_txq*, align 8
  %11 = alloca %struct.iwl_device_cmd*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.iwl_cmd_meta*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.iwl_tfh_tfd*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %9, align 8
  store %struct.iwl_txq* %1, %struct.iwl_txq** %10, align 8
  store %struct.iwl_device_cmd* %2, %struct.iwl_device_cmd** %11, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %12, align 8
  store %struct.iwl_cmd_meta* %4, %struct.iwl_cmd_meta** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.iwl_txq*, %struct.iwl_txq** %10, align 8
  %22 = load %struct.iwl_txq*, %struct.iwl_txq** %10, align 8
  %23 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq* %21, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %27 = load %struct.iwl_txq*, %struct.iwl_txq** %10, align 8
  %28 = load i32, i32* %16, align 4
  %29 = call %struct.iwl_tfh_tfd* @iwl_pcie_get_tfd(%struct.iwl_trans* %26, %struct.iwl_txq* %27, i32 %28)
  store %struct.iwl_tfh_tfd* %29, %struct.iwl_tfh_tfd** %17, align 8
  %30 = load %struct.iwl_txq*, %struct.iwl_txq** %10, align 8
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @iwl_pcie_get_first_tb_dma(%struct.iwl_txq* %30, i32 %31)
  store i32 %32, i32* %18, align 4
  %33 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %34 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %17, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %37 = call i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans* %33, %struct.iwl_tfh_tfd* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %40, %42
  %44 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 %43, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %19, align 4
  %48 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %11, align 8
  %49 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = bitcast i32* %52 to i8*
  store i8* %53, i8** %20, align 8
  %54 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %55 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %20, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @dma_map_single(i32 %56, i8* %57, i32 %58, i32 %59)
  store i32 %60, i32* %18, align 4
  %61 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %62 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %18, align 4
  %65 = call i32 @dma_mapping_error(i32 %63, i32 %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %7
  br label %97

69:                                               ; preds = %7
  %70 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %71 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %17, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans* %70, %struct.iwl_tfh_tfd* %71, i32 %72, i32 %73)
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %17, align 8
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %11, align 8
  %83 = call i64 @iwl_pcie_gen2_build_amsdu(%struct.iwl_trans* %75, %struct.sk_buff* %76, %struct.iwl_tfh_tfd* %77, i32 %80, i32 %81, %struct.iwl_device_cmd* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %97

86:                                               ; preds = %69
  %87 = load %struct.iwl_txq*, %struct.iwl_txq** %10, align 8
  %88 = getelementptr inbounds %struct.iwl_txq, %struct.iwl_txq* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %11, align 8
  %94 = load i32, i32* @IWL_FIRST_TB_SIZE, align 4
  %95 = call i32 @memcpy(i32* %92, %struct.iwl_device_cmd* %93, i32 %94)
  %96 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %17, align 8
  store %struct.iwl_tfh_tfd* %96, %struct.iwl_tfh_tfd** %8, align 8
  br label %102

97:                                               ; preds = %85, %68
  %98 = load %struct.iwl_trans*, %struct.iwl_trans** %9, align 8
  %99 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %13, align 8
  %100 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %17, align 8
  %101 = call i32 @iwl_pcie_gen2_tfd_unmap(%struct.iwl_trans* %98, %struct.iwl_cmd_meta* %99, %struct.iwl_tfh_tfd* %100)
  store %struct.iwl_tfh_tfd* null, %struct.iwl_tfh_tfd** %8, align 8
  br label %102

102:                                              ; preds = %97, %86
  %103 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %8, align 8
  ret %struct.iwl_tfh_tfd* %103
}

declare dso_local i32 @iwl_pcie_get_cmd_index(%struct.iwl_txq*, i32) #1

declare dso_local %struct.iwl_tfh_tfd* @iwl_pcie_get_tfd(%struct.iwl_trans*, %struct.iwl_txq*, i32) #1

declare dso_local i32 @iwl_pcie_get_first_tb_dma(%struct.iwl_txq*, i32) #1

declare dso_local i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans*, %struct.iwl_tfh_tfd*, i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i64 @iwl_pcie_gen2_build_amsdu(%struct.iwl_trans*, %struct.sk_buff*, %struct.iwl_tfh_tfd*, i32, i32, %struct.iwl_device_cmd*) #1

declare dso_local i32 @memcpy(i32*, %struct.iwl_device_cmd*, i32) #1

declare dso_local i32 @iwl_pcie_gen2_tfd_unmap(%struct.iwl_trans*, %struct.iwl_cmd_meta*, %struct.iwl_tfh_tfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
