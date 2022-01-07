; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_tx_frag_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_tx_frag_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mvneta_tx_queue = type { i64, %struct.mvneta_tx_desc*, %struct.sk_buff** }
%struct.mvneta_tx_desc = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MVNETA_TXD_L_DESC = common dso_local global i32 0, align 4
@MVNETA_TXD_Z_PAD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_port*, %struct.sk_buff*, %struct.mvneta_tx_queue*)* @mvneta_tx_frag_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_tx_frag_process(%struct.mvneta_port* %0, %struct.sk_buff* %1, %struct.mvneta_tx_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvneta_port*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mvneta_tx_queue*, align 8
  %8 = alloca %struct.mvneta_tx_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.mvneta_port* %0, %struct.mvneta_port** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.mvneta_tx_queue* %2, %struct.mvneta_tx_queue** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %97, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %100

21:                                               ; preds = %17
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i8* @skb_frag_address(i32* %29)
  store i8* %30, i8** %12, align 8
  %31 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %7, align 8
  %32 = call %struct.mvneta_tx_desc* @mvneta_txq_next_desc_get(%struct.mvneta_tx_queue* %31)
  store %struct.mvneta_tx_desc* %32, %struct.mvneta_tx_desc** %8, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @skb_frag_size(i32* %33)
  %35 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %8, align 8
  %36 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %38 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %8, align 8
  %45 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DMA_TO_DEVICE, align 4
  %48 = call i32 @dma_map_single(i32 %42, i8* %43, i32 %46, i32 %47)
  %49 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %8, align 8
  %50 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %52 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %8, align 8
  %58 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @dma_mapping_error(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %21
  %63 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %7, align 8
  %64 = call i32 @mvneta_txq_desc_put(%struct.mvneta_tx_queue* %63)
  br label %101

65:                                               ; preds = %21
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load i32, i32* @MVNETA_TXD_L_DESC, align 4
  %72 = load i32, i32* @MVNETA_TXD_Z_PAD, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %8, align 8
  %75 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %7, align 8
  %78 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %77, i32 0, i32 2
  %79 = load %struct.sk_buff**, %struct.sk_buff*** %78, align 8
  %80 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %7, align 8
  %81 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %79, i64 %82
  store %struct.sk_buff* %76, %struct.sk_buff** %83, align 8
  br label %94

84:                                               ; preds = %65
  %85 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %8, align 8
  %86 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  %87 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %7, align 8
  %88 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %87, i32 0, i32 2
  %89 = load %struct.sk_buff**, %struct.sk_buff*** %88, align 8
  %90 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %7, align 8
  %91 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %89, i64 %92
  store %struct.sk_buff* null, %struct.sk_buff** %93, align 8
  br label %94

94:                                               ; preds = %84, %70
  %95 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %7, align 8
  %96 = call i32 @mvneta_txq_inc_put(%struct.mvneta_tx_queue* %95)
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %17

100:                                              ; preds = %17
  store i32 0, i32* %4, align 4
  br label %136

101:                                              ; preds = %62
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %130, %101
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %104
  %108 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %7, align 8
  %109 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %108, i32 0, i32 1
  %110 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %110, i64 %112
  store %struct.mvneta_tx_desc* %113, %struct.mvneta_tx_desc** %8, align 8
  %114 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %115 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %8, align 8
  %121 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %8, align 8
  %124 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DMA_TO_DEVICE, align 4
  %127 = call i32 @dma_unmap_single(i32 %119, i32 %122, i32 %125, i32 %126)
  %128 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %7, align 8
  %129 = call i32 @mvneta_txq_desc_put(%struct.mvneta_tx_queue* %128)
  br label %130

130:                                              ; preds = %107
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %9, align 4
  br label %104

133:                                              ; preds = %104
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %133, %100
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i8* @skb_frag_address(i32*) #1

declare dso_local %struct.mvneta_tx_desc* @mvneta_txq_next_desc_get(%struct.mvneta_tx_queue*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @mvneta_txq_desc_put(%struct.mvneta_tx_queue*) #1

declare dso_local i32 @mvneta_txq_inc_put(%struct.mvneta_tx_queue*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
