; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_fini_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_tx_fini_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i64, %struct.wil_status_ring* }
%struct.wil_status_ring = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"free TX sring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*)* @wil_tx_fini_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_tx_fini_edma(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca %struct.wil_status_ring*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %4 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %5 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %4, i32 0, i32 1
  %6 = load %struct.wil_status_ring*, %struct.wil_status_ring** %5, align 8
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %8 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %6, i64 %9
  store %struct.wil_status_ring* %10, %struct.wil_status_ring** %3, align 8
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %12 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %14 = load %struct.wil_status_ring*, %struct.wil_status_ring** %3, align 8
  %15 = call i32 @wil_sring_free(%struct.wil6210_priv* %13, %struct.wil_status_ring* %14)
  ret void
}

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_sring_free(%struct.wil6210_priv*, %struct.wil_status_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
