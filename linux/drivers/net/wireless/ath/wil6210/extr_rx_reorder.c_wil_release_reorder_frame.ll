; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_rx_reorder.c_wil_release_reorder_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_rx_reorder.c_wil_release_reorder_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wil_tid_ampdu_rx = type { i32, %struct.sk_buff**, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.wil_tid_ampdu_rx*, i32)* @wil_release_reorder_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_release_reorder_frame(%struct.net_device* %0, %struct.wil_tid_ampdu_rx* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wil_tid_ampdu_rx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.wil_tid_ampdu_rx* %1, %struct.wil_tid_ampdu_rx** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %9 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %8, i32 0, i32 1
  %10 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %10, i64 %12
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %20 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %24 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %23, i32 0, i32 1
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %25, i64 %27
  store %struct.sk_buff* null, %struct.sk_buff** %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i32 @wil_netif_rx_any(%struct.sk_buff* %29, %struct.net_device* %30)
  br label %32

32:                                               ; preds = %18, %17
  %33 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %34 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @seq_inc(i32 %35)
  %37 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %38 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  ret void
}

declare dso_local i32 @wil_netif_rx_any(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @seq_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
