; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_VXGE_COMPLETE_VPATH_TX.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_VXGE_COMPLETE_VPATH_TX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_fifo = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NR_SKB_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxge_fifo*)* @VXGE_COMPLETE_VPATH_TX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VXGE_COMPLETE_VPATH_TX(%struct.vxge_fifo* %0) #0 {
  %2 = alloca %struct.vxge_fifo*, align 8
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff**, align 8
  %5 = alloca [128 x %struct.sk_buff*], align 16
  %6 = alloca i32, align 4
  store %struct.vxge_fifo* %0, %struct.vxge_fifo** %2, align 8
  store %struct.sk_buff** null, %struct.sk_buff*** %3, align 8
  br label %7

7:                                                ; preds = %37, %1
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds [128 x %struct.sk_buff*], [128 x %struct.sk_buff*]* %5, i64 0, i64 0
  store %struct.sk_buff** %8, %struct.sk_buff*** %3, align 8
  %9 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %10 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @__netif_tx_trylock(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %16 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vxge_hw_vpath_poll_tx(i32 %17, %struct.sk_buff*** %3, i32 128, i32* %6)
  %19 = load %struct.vxge_fifo*, %struct.vxge_fifo** %2, align 8
  %20 = getelementptr inbounds %struct.vxge_fifo, %struct.vxge_fifo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__netif_tx_unlock(i32 %21)
  br label %23

23:                                               ; preds = %14, %7
  %24 = getelementptr inbounds [128 x %struct.sk_buff*], [128 x %struct.sk_buff*]* %5, i64 0, i64 0
  store %struct.sk_buff** %24, %struct.sk_buff*** %4, align 8
  br label %25

25:                                               ; preds = %33, %23
  %26 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %28 = icmp ne %struct.sk_buff** %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = call i32 @dev_consume_skb_irq(%struct.sk_buff* %31)
  br label %33

33:                                               ; preds = %29
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i32 1
  store %struct.sk_buff** %35, %struct.sk_buff*** %4, align 8
  br label %25

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %7, label %40

40:                                               ; preds = %37
  ret void
}

declare dso_local i64 @__netif_tx_trylock(i32) #1

declare dso_local i32 @vxge_hw_vpath_poll_tx(i32, %struct.sk_buff***, i32, i32*) #1

declare dso_local i32 @__netif_tx_unlock(i32) #1

declare dso_local i32 @dev_consume_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
