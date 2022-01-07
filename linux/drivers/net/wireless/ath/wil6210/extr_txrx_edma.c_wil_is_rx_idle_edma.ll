; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_is_rx_idle_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_is_rx_idle_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, %struct.wil_status_ring* }
%struct.wil_status_ring = type { i64, i32 }
%struct.wil_rx_status_extended = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*)* @wil_is_rx_idle_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_is_rx_idle_edma(%struct.wil6210_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.wil_status_ring*, align 8
  %5 = alloca %struct.wil_rx_status_extended, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  %9 = bitcast %struct.wil_rx_status_extended* %5 to i8*
  store i8* %9, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %39, %1
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %13 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %17, i32 0, i32 1
  %19 = load %struct.wil_status_ring*, %struct.wil_status_ring** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %19, i64 %21
  store %struct.wil_status_ring* %22, %struct.wil_status_ring** %4, align 8
  %23 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %24 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %39

28:                                               ; preds = %16
  %29 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @wil_get_next_rx_status_msg(%struct.wil_status_ring* %29, i64* %7, i8* %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %34 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %43

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %10

42:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @wil_get_next_rx_status_msg(%struct.wil_status_ring*, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
