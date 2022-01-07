; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.h_bnxt_tx_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.h_bnxt_tx_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i64 }
%struct.bnxt_tx_ring_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bnxt*, %struct.bnxt_tx_ring_info*)* @bnxt_tx_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnxt_tx_avail(%struct.bnxt* %0, %struct.bnxt_tx_ring_info* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_tx_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.bnxt_tx_ring_info* %1, %struct.bnxt_tx_ring_info** %4, align 8
  %5 = call i32 (...) @barrier()
  %6 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %11, %14
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %8, %20
  ret i64 %21
}

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
