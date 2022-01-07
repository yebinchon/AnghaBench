; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_get_tx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_get_tx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_buffer = type { i32 }
%struct.atl1c_adapter = type { %struct.atl1c_tpd_ring* }
%struct.atl1c_tpd_ring = type { i64, %struct.atl1c_buffer* }
%struct.atl1c_tpd_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atl1c_buffer* (%struct.atl1c_adapter*, %struct.atl1c_tpd_desc*)* @atl1c_get_tx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atl1c_buffer* @atl1c_get_tx_buffer(%struct.atl1c_adapter* %0, %struct.atl1c_tpd_desc* %1) #0 {
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.atl1c_tpd_desc*, align 8
  %5 = alloca %struct.atl1c_tpd_ring*, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  store %struct.atl1c_tpd_desc* %1, %struct.atl1c_tpd_desc** %4, align 8
  %6 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %6, i32 0, i32 0
  %8 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %7, align 8
  store %struct.atl1c_tpd_ring* %8, %struct.atl1c_tpd_ring** %5, align 8
  %9 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %10 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %9, i32 0, i32 1
  %11 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %10, align 8
  %12 = load %struct.atl1c_tpd_desc*, %struct.atl1c_tpd_desc** %4, align 8
  %13 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %14 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.atl1c_tpd_desc*
  %17 = ptrtoint %struct.atl1c_tpd_desc* %12 to i64
  %18 = ptrtoint %struct.atl1c_tpd_desc* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %11, i64 %20
  ret %struct.atl1c_buffer* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
