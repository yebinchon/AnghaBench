; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_rx_reorder.c_wil_release_reorder_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_rx_reorder.c_wil_release_reorder_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wil_tid_ampdu_rx = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.wil_tid_ampdu_rx*, i32)* @wil_release_reorder_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_release_reorder_frames(%struct.net_device* %0, %struct.wil_tid_ampdu_rx* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wil_tid_ampdu_rx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.wil_tid_ampdu_rx* %1, %struct.wil_tid_ampdu_rx** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %10 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @seq_less(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %17 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i1 [ false, %8 ], [ %19, %15 ]
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  %23 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %24 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %25 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @reorder_index(%struct.wil_tid_ampdu_rx* %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @wil_release_reorder_frame(%struct.net_device* %28, %struct.wil_tid_ampdu_rx* %29, i32 %30)
  br label %8

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.wil_tid_ampdu_rx*, %struct.wil_tid_ampdu_rx** %5, align 8
  %35 = getelementptr inbounds %struct.wil_tid_ampdu_rx, %struct.wil_tid_ampdu_rx* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  ret void
}

declare dso_local i64 @seq_less(i32, i32) #1

declare dso_local i32 @reorder_index(%struct.wil_tid_ampdu_rx*, i32) #1

declare dso_local i32 @wil_release_reorder_frame(%struct.net_device*, %struct.wil_tid_ampdu_rx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
