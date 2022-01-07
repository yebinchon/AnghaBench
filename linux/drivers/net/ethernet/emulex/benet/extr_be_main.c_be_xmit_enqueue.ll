; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_xmit_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_xmit_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.be_tx_obj = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }
%struct.be_wrb_params = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.be_tx_obj*, %struct.sk_buff*, %struct.be_wrb_params*)* @be_xmit_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_xmit_enqueue(%struct.be_adapter* %0, %struct.be_tx_obj* %1, %struct.sk_buff* %2, %struct.be_wrb_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.be_tx_obj*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.be_wrb_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store %struct.be_tx_obj* %1, %struct.be_tx_obj** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.be_wrb_params* %3, %struct.be_wrb_params** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call i32 @skb_wrb_cnt(%struct.sk_buff* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %13, align 8
  store i32 0, i32* %14, align 4
  %25 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %26 = call i32 @be_tx_get_wrb_hdr(%struct.be_tx_obj* %25)
  store i32 %26, i32* %15, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i32 @skb_headlen(%struct.sk_buff* %35)
  store i32 %36, i32* %17, align 4
  %37 = load %struct.device*, %struct.device** %13, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_map_single(%struct.device* %37, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load %struct.device*, %struct.device** %13, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call i64 @dma_mapping_error(%struct.device* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %107

49:                                               ; preds = %34
  store i32 1, i32* %14, align 4
  %50 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @be_tx_setup_wrb_frag(%struct.be_tx_obj* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %49, %4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %93, %57
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %59, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %18, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = call i32 @skb_frag_size(i32* %73)
  store i32 %74, i32* %17, align 4
  %75 = load %struct.device*, %struct.device** %13, align 8
  %76 = load i32*, i32** %18, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* @DMA_TO_DEVICE, align 4
  %79 = call i32 @skb_frag_dma_map(%struct.device* %75, i32* %76, i32 0, i32 %77, i32 %78)
  store i32 %79, i32* %16, align 4
  %80 = load %struct.device*, %struct.device** %13, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i64 @dma_mapping_error(%struct.device* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %107

85:                                               ; preds = %65
  %86 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @be_tx_setup_wrb_frag(%struct.be_tx_obj* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %58

96:                                               ; preds = %58
  %97 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %98 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %99 = load %struct.be_wrb_params*, %struct.be_wrb_params** %9, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @be_tx_setup_wrb_hdr(%struct.be_adapter* %97, %struct.be_tx_obj* %98, %struct.be_wrb_params* %99, %struct.sk_buff* %100, i32 %101)
  %103 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = call i32 @be_tx_stats_update(%struct.be_tx_obj* %103, %struct.sk_buff* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %5, align 4
  br label %119

107:                                              ; preds = %84, %48
  %108 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %109 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  %113 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %114 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @be_xmit_restore(%struct.be_adapter* %113, %struct.be_tx_obj* %114, i32 %115, i32 %116, i32 %117)
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %107, %96
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @skb_wrb_cnt(%struct.sk_buff*) #1

declare dso_local i32 @be_tx_get_wrb_hdr(%struct.be_tx_obj*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @be_tx_setup_wrb_frag(%struct.be_tx_obj*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i32 @be_tx_setup_wrb_hdr(%struct.be_adapter*, %struct.be_tx_obj*, %struct.be_wrb_params*, %struct.sk_buff*, i32) #1

declare dso_local i32 @be_tx_stats_update(%struct.be_tx_obj*, %struct.sk_buff*) #1

declare dso_local i32 @be_xmit_restore(%struct.be_adapter*, %struct.be_tx_obj*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
