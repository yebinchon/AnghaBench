; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dest_ring_read_index_from_ddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dest_ring_read_index_from_ddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { i64* }

@CE_DDR_DRRI_SHIFT = common dso_local global i64 0, align 8
@CE_DDR_RRI_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath10k*, i64)* @ath10k_ce_dest_ring_read_index_from_ddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath10k_ce_dest_ring_read_index_from_ddr(%struct.ath10k* %0, i64 %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath10k_ce*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %6)
  store %struct.ath10k_ce* %7, %struct.ath10k_ce** %5, align 8
  %8 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %9 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CE_DDR_DRRI_SHIFT, align 8
  %15 = lshr i64 %13, %14
  %16 = load i64, i64* @CE_DDR_RRI_MASK, align 8
  %17 = and i64 %15, %16
  ret i64 %17
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
