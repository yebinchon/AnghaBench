; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netdev_queue = type { i32 }

@NIC_QSET_SQ_0_7_DOOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.sk_buff*, i32, i32)* @nicvf_sq_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_sq_doorbell(%struct.nicvf* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netdev_queue*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %15)
  %17 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %14, i32 %16)
  store %struct.netdev_queue* %17, %struct.netdev_queue** %9, align 8
  %18 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_tx_sent_queue(%struct.netdev_queue* %18, i32 %21)
  %23 = call i32 (...) @smp_wmb()
  %24 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %25 = load i32, i32* @NIC_QSET_SQ_0_7_DOOR, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %24, i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_sent_queue(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
