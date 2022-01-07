; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_convert_htc_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_txrx.c_convert_htc_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rx_status = type { i32, i32 }
%struct.ath_htc_rx_status = type { i32 }

@RATE_INFO_BW_20 = common dso_local global i32 0, align 4
@ATH9K_RX_2040 = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@ATH9K_RX_GI = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_rx_status*, %struct.ath_htc_rx_status*)* @convert_htc_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_htc_flag(%struct.ath_rx_status* %0, %struct.ath_htc_rx_status* %1) #0 {
  %3 = alloca %struct.ath_rx_status*, align 8
  %4 = alloca %struct.ath_htc_rx_status*, align 8
  store %struct.ath_rx_status* %0, %struct.ath_rx_status** %3, align 8
  store %struct.ath_htc_rx_status* %1, %struct.ath_htc_rx_status** %4, align 8
  %5 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %6 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @RATE_INFO_BW_20, align 4
  %8 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %9 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %11 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATH9K_RX_2040, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @RATE_INFO_BW_40, align 4
  %18 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %19 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.ath_htc_rx_status*, %struct.ath_htc_rx_status** %4, align 8
  %22 = getelementptr inbounds %struct.ath_htc_rx_status, %struct.ath_htc_rx_status* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATH9K_RX_GI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %29 = load %struct.ath_rx_status*, %struct.ath_rx_status** %3, align 8
  %30 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
