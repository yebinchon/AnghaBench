; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_tx_add_frags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx-gen2.c_iwl_pcie_gen2_tx_add_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iwl_tfh_tfd = type { i32 }
%struct.iwl_cmd_meta = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.sk_buff*, %struct.iwl_tfh_tfd*, %struct.iwl_cmd_meta*)* @iwl_pcie_gen2_tx_add_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_gen2_tx_add_frags(%struct.iwl_trans* %0, %struct.sk_buff* %1, %struct.iwl_tfh_tfd* %2, %struct.iwl_cmd_meta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.iwl_tfh_tfd*, align 8
  %9 = alloca %struct.iwl_cmd_meta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.iwl_tfh_tfd* %2, %struct.iwl_tfh_tfd** %8, align 8
  store %struct.iwl_cmd_meta* %3, %struct.iwl_cmd_meta** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %79, %4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %14
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @skb_frag_size(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %79

33:                                               ; preds = %21
  %34 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @skb_frag_size(i32* %38)
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i32 @skb_frag_dma_map(i32 %36, i32* %37, i32 0, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %43 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @dma_mapping_error(i32 %44, i32 %45)
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %83

52:                                               ; preds = %33
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %54 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @skb_frag_size(i32* %56)
  %58 = call i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans* %53, %struct.iwl_tfh_tfd* %54, i32 %55, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %60 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @skb_frag_address(i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @skb_frag_size(i32* %65)
  %67 = call i32 @trace_iwlwifi_dev_tx_tb(i32 %61, %struct.sk_buff* %62, i32 %64, i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %52
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %83

72:                                               ; preds = %52
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = load %struct.iwl_cmd_meta*, %struct.iwl_cmd_meta** %9, align 8
  %76 = getelementptr inbounds %struct.iwl_cmd_meta, %struct.iwl_cmd_meta* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %32
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %14

82:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %70, %49
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @iwl_pcie_gen2_set_tb(%struct.iwl_trans*, %struct.iwl_tfh_tfd*, i32, i32) #1

declare dso_local i32 @trace_iwlwifi_dev_tx_tb(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_frag_address(i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
