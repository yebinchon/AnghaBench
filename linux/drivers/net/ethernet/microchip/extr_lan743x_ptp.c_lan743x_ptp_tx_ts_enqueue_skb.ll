; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_tx_ts_enqueue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_tx_ts_enqueue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32, %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i64, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"tx ts skb queue overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_adapter*, %struct.sk_buff*, i32)* @lan743x_ptp_tx_ts_enqueue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_ptp_tx_ts_enqueue_skb(%struct.lan743x_adapter* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.lan743x_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lan743x_ptp*, align 8
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %8, i32 0, i32 1
  store %struct.lan743x_ptp* %9, %struct.lan743x_ptp** %7, align 8
  %10 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %7, align 8
  %11 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %7, align 8
  %14 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %7, align 8
  %21 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %20, i32 0, i32 3
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %21, align 8
  %23 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %7, align 8
  %24 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %22, i64 %25
  store %struct.sk_buff* %19, %struct.sk_buff** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %7, align 8
  %31 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @BIT(i64 %32)
  %34 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %7, align 8
  %35 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %18
  %39 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %7, align 8
  %40 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  br label %52

43:                                               ; preds = %3
  %44 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %45 = load i32, i32* @drv, align 4
  %46 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %47 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @netif_err(%struct.lan743x_adapter* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @dev_kfree_skb(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %43, %38
  %53 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %7, align 8
  %54 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_bh(i32* %54)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @netif_err(%struct.lan743x_adapter*, i32, i32, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
