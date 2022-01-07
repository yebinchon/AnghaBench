; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_fill_data_tbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_fill_data_tbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.sk_buff = type { i64 }
%struct.iwl_txq = type { i32 }
%struct.iwl_cmd_meta = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.sk_buff*, %struct.iwl_txq*, i64, %struct.iwl_cmd_meta*)* @iwl_fill_data_tbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fill_data_tbs(%struct.iwl_trans* %0, %struct.sk_buff* %1, %struct.iwl_txq* %2, i64 %3, %struct.iwl_cmd_meta* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.iwl_txq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iwl_cmd_meta*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.iwl_txq* %2, %struct.iwl_txq** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.iwl_cmd_meta* %4, %struct.iwl_cmd_meta** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i64 @skb_headlen(%struct.sk_buff* %18)
  %20 = load i64, i64* %10, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %5
  %25 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* @DMA_TO_DEVICE, align 4
  %35 = call i32 @dma_map_single(i32 %27, i64 %32, i64 %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @dma_mapping_error(i32 %38, i32 %39)
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %133

46:                                               ; preds = %24
  %47 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %48 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @trace_iwlwifi_dev_tx_tb(i32 %49, %struct.sk_buff* %50, i64 %55, i64 %56)
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %59 = load %struct.iwl_txq*, %struct.iwl_txq** %9, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @iwl_pcie_txq_build_tfd(%struct.iwl_trans* %58, %struct.iwl_txq* %59, i32 %60, i64 %61, i32 0)
  br label %63

63:                                               ; preds = %46, %5
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %129, %63
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %132

71:                                               ; preds = %64
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32* %78, i32** %15, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i64 @skb_frag_size(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %71
  br label %129

83:                                               ; preds = %71
  %84 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %85 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %15, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = call i64 @skb_frag_size(i32* %88)
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = call i32 @skb_frag_dma_map(i32 %86, i32* %87, i32 0, i64 %89, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %93 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @dma_mapping_error(i32 %94, i32 %95)
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %83
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %133

102:                                              ; preds = %83
  %103 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %104 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = call i64 @skb_frag_address(i32* %107)
  %109 = load i32*, i32** %15, align 8
  %110 = call i64 @skb_frag_size(i32* %109)
  %111 = call i32 @trace_iwlwifi_dev_tx_tb(i32 %105, %struct.sk_buff* %106, i64 %108, i64 %110)
  %112 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %113 = load %struct.iwl_txq*, %struct.iwl_txq** %9, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = call i64 @skb_frag_size(i32* %115)
  %117 = call i32 @iwl_pcie_txq_build_tfd(%struct.iwl_trans* %112, %struct.iwl_txq* %113, i32 %114, i64 %116, i32 0)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %102
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %6, align 4
  br label %133

122:                                              ; preds = %102
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @BIT(i32 %123)
  %125 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %11, align 8
  %126 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %122, %82
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %64

132:                                              ; preds = %64
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %120, %99, %43
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @trace_iwlwifi_dev_tx_tb(i32, %struct.sk_buff*, i64, i64) #1

declare dso_local i32 @iwl_pcie_txq_build_tfd(%struct.iwl_trans*, %struct.iwl_txq*, i32, i64, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i64, i32) #1

declare dso_local i64 @skb_frag_address(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
