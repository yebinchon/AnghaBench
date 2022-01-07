; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, %struct.ionic_rxq_desc* }
%struct.ionic_rxq_desc = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@IONIC_RXQ_DESC_OPCODE_SIMPLE = common dso_local global i32 0, align 4
@IONIC_RX_RING_DOORBELL_STRIDE = common dso_local global i32 0, align 4
@ionic_rx_clean = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_rx_fill(%struct.ionic_queue* %0) #0 {
  %2 = alloca %struct.ionic_queue*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ionic_rxq_desc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ionic_queue* %0, %struct.ionic_queue** %2, align 8
  %10 = load %struct.ionic_queue*, %struct.ionic_queue** %2, align 8
  %11 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ETH_HLEN, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ionic_queue*, %struct.ionic_queue** %2, align 8
  %21 = call i32 @ionic_q_space_avail(%struct.ionic_queue* %20)
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %64, %1
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %22
  %26 = load %struct.ionic_queue*, %struct.ionic_queue** %2, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.sk_buff* @ionic_rx_skb_alloc(%struct.ionic_queue* %26, i32 %27, i32* %6)
  store %struct.sk_buff* %28, %struct.sk_buff** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %67

32:                                               ; preds = %25
  %33 = load %struct.ionic_queue*, %struct.ionic_queue** %2, align 8
  %34 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %36, align 8
  store %struct.ionic_rxq_desc* %37, %struct.ionic_rxq_desc** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cpu_to_le64(i32 %38)
  %40 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %4, align 8
  %41 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %4, align 8
  %45 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @IONIC_RXQ_DESC_OPCODE_SIMPLE, align 4
  %47 = load %struct.ionic_rxq_desc*, %struct.ionic_rxq_desc** %4, align 8
  %48 = getelementptr inbounds %struct.ionic_rxq_desc, %struct.ionic_rxq_desc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ionic_queue*, %struct.ionic_queue** %2, align 8
  %50 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* @IONIC_RX_RING_DOORBELL_STRIDE, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load %struct.ionic_queue*, %struct.ionic_queue** %2, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @ionic_rx_clean, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @ionic_rxq_post(%struct.ionic_queue* %59, i32 %60, i32 %61, %struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %32
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, -1
  store i32 %66, i32* %9, align 4
  br label %22

67:                                               ; preds = %31, %22
  ret void
}

declare dso_local i32 @ionic_q_space_avail(%struct.ionic_queue*) #1

declare dso_local %struct.sk_buff* @ionic_rx_skb_alloc(%struct.ionic_queue*, i32, i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ionic_rxq_post(%struct.ionic_queue*, i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
