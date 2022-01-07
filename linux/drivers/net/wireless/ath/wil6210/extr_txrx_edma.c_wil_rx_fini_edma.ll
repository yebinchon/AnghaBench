; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_fini_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_rx_fini_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32*, %struct.wil_ring }
%struct.wil_ring = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"rx_fini_edma\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*)* @wil_rx_fini_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_rx_fini_edma(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca %struct.wil_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %6 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %5, i32 0, i32 2
  store %struct.wil_ring* %6, %struct.wil_ring** %3, align 8
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %8 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %10 = load %struct.wil_ring*, %struct.wil_ring** %3, align 8
  %11 = call i32 @wil_ring_free_edma(%struct.wil6210_priv* %9, %struct.wil_ring* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %34, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %15 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %20 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @wil_rx_data_free(i32* %24)
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %28 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @wil_sring_free(%struct.wil6210_priv* %26, i32* %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %39 = call i32 @wil_free_rx_buff_arr(%struct.wil6210_priv* %38)
  ret void
}

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_ring_free_edma(%struct.wil6210_priv*, %struct.wil_ring*) #1

declare dso_local i32 @wil_rx_data_free(i32*) #1

declare dso_local i32 @wil_sring_free(%struct.wil6210_priv*, i32*) #1

declare dso_local i32 @wil_free_rx_buff_arr(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
