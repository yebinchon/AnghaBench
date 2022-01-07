; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ionic_tx_stats = type { i32, i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ionic_tx_clean = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_queue*, %struct.sk_buff*)* @ionic_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_tx(%struct.ionic_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ionic_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ionic_tx_stats*, align 8
  %7 = alloca i32, align 4
  store %struct.ionic_queue* %0, %struct.ionic_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %9 = call %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue* %8)
  store %struct.ionic_tx_stats* %9, %struct.ionic_tx_stats** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @ionic_tx_calc_csum(%struct.ionic_queue* %16, %struct.sk_buff* %17)
  store i32 %18, i32* %7, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @ionic_tx_calc_no_csum(%struct.ionic_queue* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %66

28:                                               ; preds = %23
  %29 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @ionic_tx_skb_frags(%struct.ionic_queue* %29, %struct.sk_buff* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @skb_tx_timestamp(%struct.sk_buff* %37)
  %39 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %6, align 8
  %40 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ionic_tx_stats*, %struct.ionic_tx_stats** %6, align 8
  %47 = getelementptr inbounds %struct.ionic_tx_stats, %struct.ionic_tx_stats* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %53 = call i32 @q_to_ndq(%struct.ionic_queue* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @netdev_tx_sent_queue(i32 %53, i64 %56)
  %58 = load %struct.ionic_queue*, %struct.ionic_queue** %4, align 8
  %59 = call i32 (...) @netdev_xmit_more()
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @ionic_tx_clean, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @ionic_txq_post(%struct.ionic_queue* %58, i32 %62, i32 %63, %struct.sk_buff* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %36, %34, %26
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.ionic_tx_stats* @q_to_tx_stats(%struct.ionic_queue*) #1

declare dso_local i32 @ionic_tx_calc_csum(%struct.ionic_queue*, %struct.sk_buff*) #1

declare dso_local i32 @ionic_tx_calc_no_csum(%struct.ionic_queue*, %struct.sk_buff*) #1

declare dso_local i32 @ionic_tx_skb_frags(%struct.ionic_queue*, %struct.sk_buff*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i64) #1

declare dso_local i32 @q_to_ndq(%struct.ionic_queue*) #1

declare dso_local i32 @ionic_txq_post(%struct.ionic_queue*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @netdev_xmit_more(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
