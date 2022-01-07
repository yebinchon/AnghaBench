; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx_frag_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx_frag_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mvpp2_tx_queue = type { %struct.mvpp2_tx_desc*, i32, i32 }
%struct.mvpp2_tx_desc = type { i32 }
%struct.mvpp2_txq_pcpu = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MVPP2_TXD_L_DESC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.sk_buff*, %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue*)* @mvpp2_tx_frag_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_tx_frag_process(%struct.mvpp2_port* %0, %struct.sk_buff* %1, %struct.mvpp2_tx_queue* %2, %struct.mvpp2_tx_queue* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2_port*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mvpp2_tx_queue*, align 8
  %9 = alloca %struct.mvpp2_tx_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %12 = alloca %struct.mvpp2_tx_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.mvpp2_tx_queue* %2, %struct.mvpp2_tx_queue** %8, align 8
  store %struct.mvpp2_tx_queue* %3, %struct.mvpp2_tx_queue** %9, align 8
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %18 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (...) @smp_processor_id()
  %21 = call i32 @mvpp2_cpu_to_thread(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %9, align 8
  %23 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32 %24, i32 %25)
  store %struct.mvpp2_txq_pcpu* %26, %struct.mvpp2_txq_pcpu** %11, align 8
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %111, %4
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %114

34:                                               ; preds = %27
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = call i8* @skb_frag_address(i32* %42)
  store i8* %43, i8** %16, align 8
  %44 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %8, align 8
  %45 = call %struct.mvpp2_tx_desc* @mvpp2_txq_next_desc_get(%struct.mvpp2_tx_queue* %44)
  store %struct.mvpp2_tx_desc* %45, %struct.mvpp2_tx_desc** %12, align 8
  %46 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %47 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %12, align 8
  %48 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %9, align 8
  %49 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mvpp2_txdesc_txq_set(%struct.mvpp2_port* %46, %struct.mvpp2_tx_desc* %47, i32 %50)
  %52 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %53 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %12, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @skb_frag_size(i32* %54)
  %56 = call i32 @mvpp2_txdesc_size_set(%struct.mvpp2_port* %52, %struct.mvpp2_tx_desc* %53, i32 %55)
  %57 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %58 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @skb_frag_size(i32* %64)
  %66 = load i32, i32* @DMA_TO_DEVICE, align 4
  %67 = call i32 @dma_map_single(i32 %62, i8* %63, i32 %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %69 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @dma_mapping_error(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %34
  %78 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %9, align 8
  %79 = call i32 @mvpp2_txq_desc_put(%struct.mvpp2_tx_queue* %78)
  br label %115

80:                                               ; preds = %34
  %81 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %82 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %12, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @mvpp2_txdesc_dma_addr_set(%struct.mvpp2_port* %81, %struct.mvpp2_tx_desc* %82, i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = icmp eq i32 %85, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %80
  %93 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %94 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %12, align 8
  %95 = load i32, i32* @MVPP2_TXD_L_DESC, align 4
  %96 = call i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port* %93, %struct.mvpp2_tx_desc* %94, i32 %95)
  %97 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %98 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %11, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %12, align 8
  %101 = call i32 @mvpp2_txq_inc_put(%struct.mvpp2_port* %97, %struct.mvpp2_txq_pcpu* %98, %struct.sk_buff* %99, %struct.mvpp2_tx_desc* %100)
  br label %110

102:                                              ; preds = %80
  %103 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %104 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %12, align 8
  %105 = call i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port* %103, %struct.mvpp2_tx_desc* %104, i32 0)
  %106 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %107 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %11, align 8
  %108 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %12, align 8
  %109 = call i32 @mvpp2_txq_inc_put(%struct.mvpp2_port* %106, %struct.mvpp2_txq_pcpu* %107, %struct.sk_buff* null, %struct.mvpp2_tx_desc* %108)
  br label %110

110:                                              ; preds = %102, %92
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %27

114:                                              ; preds = %27
  store i32 0, i32* %5, align 4
  br label %138

115:                                              ; preds = %77
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %132, %115
  %119 = load i32, i32* %13, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %9, align 8
  %123 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %122, i32 0, i32 0
  %124 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.mvpp2_tx_desc, %struct.mvpp2_tx_desc* %124, i64 %126
  store %struct.mvpp2_tx_desc* %127, %struct.mvpp2_tx_desc** %12, align 8
  %128 = load %struct.mvpp2_port*, %struct.mvpp2_port** %6, align 8
  %129 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %9, align 8
  %130 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %12, align 8
  %131 = call i32 @tx_desc_unmap_put(%struct.mvpp2_port* %128, %struct.mvpp2_tx_queue* %129, %struct.mvpp2_tx_desc* %130)
  br label %132

132:                                              ; preds = %121
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %13, align 4
  br label %118

135:                                              ; preds = %118
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %135, %114
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @mvpp2_cpu_to_thread(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @skb_frag_address(i32*) #1

declare dso_local %struct.mvpp2_tx_desc* @mvpp2_txq_next_desc_get(%struct.mvpp2_tx_queue*) #1

declare dso_local i32 @mvpp2_txdesc_txq_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txdesc_size_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @mvpp2_txq_desc_put(%struct.mvpp2_tx_queue*) #1

declare dso_local i32 @mvpp2_txdesc_dma_addr_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txq_inc_put(%struct.mvpp2_port*, %struct.mvpp2_txq_pcpu*, %struct.sk_buff*, %struct.mvpp2_tx_desc*) #1

declare dso_local i32 @tx_desc_unmap_put(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
