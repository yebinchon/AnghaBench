; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.h_ath10k_htt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt.h_ath10k_htt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ath10k_htt*, i32, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*, i32, %struct.sk_buff*)* @ath10k_htt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_tx(%struct.ath10k_htt* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ath10k_htt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %8 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ath10k_htt*, i32, %struct.sk_buff*)*, i32 (%struct.ath10k_htt*, i32, %struct.sk_buff*)** %10, align 8
  %12 = load %struct.ath10k_htt*, %struct.ath10k_htt** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 %11(%struct.ath10k_htt* %12, i32 %13, %struct.sk_buff* %14)
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
