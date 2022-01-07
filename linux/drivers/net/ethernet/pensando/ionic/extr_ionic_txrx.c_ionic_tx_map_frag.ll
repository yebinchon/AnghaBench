; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_map_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_map_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ionic_tx_stats = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: DMA frag map failed on %s!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_queue*, i32*, i64, i64)* @ionic_tx_map_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_tx_map_frag(%struct.ionic_queue* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ionic_queue*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ionic_tx_stats*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.ionic_queue* %0, %struct.ionic_queue** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %13 = call %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue* %12)
  store %struct.ionic_tx_stats* %13, %struct.ionic_tx_stats** %9, align 8
  %14 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %15 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load %struct.device*, %struct.device** %10, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = call i32 @skb_frag_dma_map(%struct.device* %21, i32* %22, i64 %23, i64 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.device*, %struct.device** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @dma_mapping_error(%struct.device* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %4
  %32 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %33 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %40 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %9, align 8
  %44 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %31, %4
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue*) #1

declare dso_local i32 @skb_frag_dma_map(%struct.device*, i32*, i64, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
