; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_free_rx_buff_arr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_free_rx_buff_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.TYPE_2__, %struct.wil_ring }
%struct.TYPE_2__ = type { i32* }
%struct.wil_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*)* @wil_free_rx_buff_arr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_free_rx_buff_arr(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca %struct.wil_ring*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %4 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %5 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %4, i32 0, i32 1
  store %struct.wil_ring* %5, %struct.wil_ring** %3, align 8
  %6 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %7 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %14 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %15 = call i32 @wil_move_all_rx_buff_to_free_list(%struct.wil6210_priv* %13, %struct.wil_ring* %14)
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %17 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kfree(i32* %19)
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %22 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @wil_move_all_rx_buff_to_free_list(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
