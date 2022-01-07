; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32, %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i32, i32, i64, i64, i64, i64*, i64*, %struct.sk_buff**, i32* }
%struct.sk_buff = type { i32 }

@CONFIG_PTP_1588_CLOCK = common dso_local global i32 0, align 4
@PTP_FLAG_PTP_CLOCK_REGISTERED = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ptp clock unregister\0A\00", align 1
@PTP_FLAG_ISR_ENABLED = common dso_local global i32 0, align 4
@PTP_INT_EN_CLR = common dso_local global i32 0, align 4
@PTP_INT_BIT_TX_SWTS_ERR_ = common dso_local global i32 0, align 4
@PTP_INT_BIT_TX_TS_ = common dso_local global i32 0, align 4
@INT_EN_CLR = common dso_local global i32 0, align 4
@INT_BIT_1588_ = common dso_local global i32 0, align 4
@LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lan743x_ptp_close(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca %struct.lan743x_ptp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %6 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %6, i32 0, i32 1
  store %struct.lan743x_ptp* %7, %struct.lan743x_ptp** %3, align 8
  %8 = load i32, i32* @CONFIG_PTP_1588_CLOCK, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %13 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PTP_FLAG_PTP_CLOCK_REGISTERED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %20 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %19, i32 0, i32 8
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ptp_clock_unregister(i32* %21)
  %23 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %24 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %23, i32 0, i32 8
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @PTP_FLAG_PTP_CLOCK_REGISTERED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %28 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %32 = load i32, i32* @drv, align 4
  %33 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @netif_info(%struct.lan743x_adapter* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %18, %11, %1
  %38 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %39 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PTP_FLAG_ISR_ENABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %46 = load i32, i32* @PTP_INT_EN_CLR, align 4
  %47 = load i32, i32* @PTP_INT_BIT_TX_SWTS_ERR_, align 4
  %48 = load i32, i32* @PTP_INT_BIT_TX_TS_, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %45, i32 %46, i32 %49)
  %51 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %52 = load i32, i32* @INT_EN_CLR, align 4
  %53 = load i32, i32* @INT_BIT_1588_, align 4
  %54 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @PTP_FLAG_ISR_ENABLED, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %58 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %44, %37
  %62 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %63 = call i32 @lan743x_ptp_tx_ts_complete(%struct.lan743x_adapter* %62)
  %64 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %65 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %64, i32 0, i32 1
  %66 = call i32 @spin_lock_bh(i32* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %99, %61
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  %72 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %73 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %72, i32 0, i32 7
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %74, i64 %76
  %78 = load %struct.sk_buff*, %struct.sk_buff** %77, align 8
  store %struct.sk_buff* %78, %struct.sk_buff** %5, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i32 @dev_kfree_skb(%struct.sk_buff* %79)
  %81 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %82 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %81, i32 0, i32 7
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %83, i64 %85
  store %struct.sk_buff* null, %struct.sk_buff** %86, align 8
  %87 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %88 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %87, i32 0, i32 6
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 0, i64* %92, align 8
  %93 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %94 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %93, i32 0, i32 5
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %71
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %67

102:                                              ; preds = %67
  %103 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %104 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %103, i32 0, i32 4
  store i64 0, i64* %104, align 8
  %105 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %106 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %108 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %110 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %109, i32 0, i32 1
  %111 = call i32 @spin_unlock_bh(i32* %110)
  %112 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %113 = call i32 @lan743x_ptp_disable(%struct.lan743x_adapter* %112)
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ptp_clock_unregister(i32*) #1

declare dso_local i32 @netif_info(%struct.lan743x_adapter*, i32, i32, i8*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_ptp_tx_ts_complete(%struct.lan743x_adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @lan743x_ptp_disable(%struct.lan743x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
