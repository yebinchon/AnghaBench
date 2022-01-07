; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_recycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ionic_rxq_desc* }
%struct.ionic_rxq_desc = type { i32, i32 }
%struct.ionic_desc_info = type { %struct.ionic_rxq_desc* }
%struct.sk_buff = type { i32 }

@ionic_rx_clean = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.sk_buff*)* @ionic_rx_recycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_rx_recycle(%struct.ionic_queue* %0, %struct.ionic_desc_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ionic_queue*, align 8
  %5 = alloca %struct.ionic_desc_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ionic_rxq_desc*, align 8
  %8 = alloca %struct.ionic_rxq_desc*, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %4, align 8
  store %struct.ionic_desc_info* %1, %struct.ionic_desc_info** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %5, align 8
  %10 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %9, i32 0, i32 0
  %11 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %10, align 8
  store %struct.ionic_rxq_desc* %11, %struct.ionic_rxq_desc** %7, align 8
  %12 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %13 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %15, align 8
  store %struct.ionic_rxq_desc* %16, %struct.ionic_rxq_desc** %8, align 8
  %17 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %7, align 8
  %18 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %8, align 8
  %21 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %7, align 8
  %23 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %8, align 8
  %26 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %28 = load i32, i32* @ionic_rx_clean, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @ionic_rxq_post(%struct.ionic_queue* %27, i32 1, i32 %28, %struct.sk_buff* %29)
  ret void
}

declare dso_local i32 @ionic_rxq_post(%struct.ionic_queue*, i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
