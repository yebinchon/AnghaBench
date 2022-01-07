; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_get_tpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_get_tpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_tpd_desc = type { i32 }
%struct.atl1e_adapter = type { %struct.atl1e_tx_ring }
%struct.atl1e_tx_ring = type { i64, i64, %struct.atl1e_tpd_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atl1e_tpd_desc* (%struct.atl1e_adapter*)* @atl1e_get_tpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atl1e_tpd_desc* @atl1e_get_tpd(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.atl1e_tx_ring*, align 8
  %4 = alloca i64, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %5 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %5, i32 0, i32 0
  store %struct.atl1e_tx_ring* %6, %struct.atl1e_tx_ring** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %8 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %11 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %15 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %20 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %23 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %22, i32 0, i32 2
  %24 = load %struct.atl1e_tpd_desc*, %struct.atl1e_tpd_desc** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.atl1e_tpd_desc, %struct.atl1e_tpd_desc* %24, i64 %25
  %27 = call i32 @memset(%struct.atl1e_tpd_desc* %26, i32 0, i32 4)
  %28 = load %struct.atl1e_tx_ring*, %struct.atl1e_tx_ring** %3, align 8
  %29 = getelementptr inbounds %struct.atl1e_tx_ring, %struct.atl1e_tx_ring* %28, i32 0, i32 2
  %30 = load %struct.atl1e_tpd_desc*, %struct.atl1e_tpd_desc** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.atl1e_tpd_desc, %struct.atl1e_tpd_desc* %30, i64 %31
  ret %struct.atl1e_tpd_desc* %32
}

declare dso_local i32 @memset(%struct.atl1e_tpd_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
