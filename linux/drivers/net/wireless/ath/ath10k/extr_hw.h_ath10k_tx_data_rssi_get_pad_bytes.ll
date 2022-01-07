; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.h_ath10k_tx_data_rssi_get_pad_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.h_ath10k_tx_data_rssi_get_pad_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_hw_params = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.htt_resp*)* }
%struct.htt_resp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_hw_params*, %struct.htt_resp*)* @ath10k_tx_data_rssi_get_pad_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_tx_data_rssi_get_pad_bytes(%struct.ath10k_hw_params* %0, %struct.htt_resp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k_hw_params*, align 8
  %5 = alloca %struct.htt_resp*, align 8
  store %struct.ath10k_hw_params* %0, %struct.ath10k_hw_params** %4, align 8
  store %struct.htt_resp* %1, %struct.htt_resp** %5, align 8
  %6 = load %struct.ath10k_hw_params*, %struct.ath10k_hw_params** %4, align 8
  %7 = getelementptr inbounds %struct.ath10k_hw_params, %struct.ath10k_hw_params* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.htt_resp*)*, i32 (%struct.htt_resp*)** %9, align 8
  %11 = icmp ne i32 (%struct.htt_resp*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.ath10k_hw_params*, %struct.ath10k_hw_params** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k_hw_params, %struct.ath10k_hw_params* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.htt_resp*)*, i32 (%struct.htt_resp*)** %16, align 8
  %18 = load %struct.htt_resp*, %struct.htt_resp** %5, align 8
  %19 = call i32 %17(%struct.htt_resp* %18)
  store i32 %19, i32* %3, align 4
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
