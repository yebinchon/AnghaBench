; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_buf_len_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_rx_buf_len_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i64 }

@rx_large_buf = common dso_local global i64 0, align 8
@WIL_MAX_ETH_MTU = common dso_local global i64 0, align 8
@TXRX_BUF_LEN_DEFAULT = common dso_local global i64 0, align 8
@WIL_MAX_MPDU_OVERHEAD = common dso_local global i64 0, align 8
@mtu_max = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Override RX buffer to mtu_max(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*)* @wil_rx_buf_len_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_rx_buf_len_init(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %3 = load i64, i64* @rx_large_buf, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i64, i64* @WIL_MAX_ETH_MTU, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load i64, i64* @TXRX_BUF_LEN_DEFAULT, align 8
  %9 = load i64, i64* @WIL_MAX_MPDU_OVERHEAD, align 8
  %10 = sub nsw i64 %8, %9
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i64 [ %6, %5 ], [ %10, %7 ]
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* @mtu_max, align 8
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %17 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %22 = load i64, i64* @mtu_max, align 8
  %23 = call i32 @wil_info(%struct.wil6210_priv* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* @mtu_max, align 8
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %26 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %20, %11
  ret void
}

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
