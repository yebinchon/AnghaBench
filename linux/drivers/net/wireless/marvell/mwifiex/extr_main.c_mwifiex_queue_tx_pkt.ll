; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_queue_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_queue_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.netdev_queue = type { i32 }

@mwifiex_1d_to_wmm_queue = common dso_local global i32* null, align 8
@MAX_TX_PENDING = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stop queue: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_queue_tx_pkt(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load i32*, i32** @mwifiex_1d_to_wmm_queue, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i64 @atomic_inc_return(i32* %18)
  %20 = load i64, i64* @MAX_TX_PENDING, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %25, i32 %26)
  store %struct.netdev_queue* %27, %struct.netdev_queue** %5, align 8
  %28 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %29 = call i32 @netif_tx_queue_stopped(%struct.netdev_queue* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %33 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %32)
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* @DATA, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mwifiex_dbg(%struct.TYPE_3__* %36, i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %31, %22
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i64 @mwifiex_bypass_tx_queue(%struct.mwifiex_private* %42, %struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %48 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = call i32 @atomic_inc(i32* %55)
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @mwifiex_wmm_add_buf_bypass_txqueue(%struct.mwifiex_private* %57, %struct.sk_buff* %58)
  br label %69

60:                                               ; preds = %41
  %61 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %62 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @atomic_inc(i32* %64)
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @mwifiex_wmm_add_buf_txqueue(%struct.mwifiex_private* %66, %struct.sk_buff* %67)
  br label %69

69:                                               ; preds = %60, %46
  %70 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %71 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = call i32 @mwifiex_queue_main_work(%struct.TYPE_3__* %72)
  ret i32 0
}

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i32 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_3__*, i32, i8*, i32) #1

declare dso_local i64 @mwifiex_bypass_tx_queue(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mwifiex_wmm_add_buf_bypass_txqueue(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @mwifiex_wmm_add_buf_txqueue(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @mwifiex_queue_main_work(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
