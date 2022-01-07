; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_cp_ring_for_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_cp_ring_for_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_tx_ring_info = type { i32, %struct.bnxt_napi* }
%struct.bnxt_napi = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bnxt_cp_ring_info** }
%struct.bnxt_cp_ring_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_TX_HDL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_tx_ring_info*)* @bnxt_cp_ring_for_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_cp_ring_for_tx(%struct.bnxt* %0, %struct.bnxt_tx_ring_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_tx_ring_info*, align 8
  %6 = alloca %struct.bnxt_napi*, align 8
  %7 = alloca %struct.bnxt_cp_ring_info*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_tx_ring_info* %1, %struct.bnxt_tx_ring_info** %5, align 8
  %8 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %5, align 8
  %16 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %15, i32 0, i32 1
  %17 = load %struct.bnxt_napi*, %struct.bnxt_napi** %16, align 8
  store %struct.bnxt_napi* %17, %struct.bnxt_napi** %6, align 8
  %18 = load %struct.bnxt_napi*, %struct.bnxt_napi** %6, align 8
  %19 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %20, align 8
  %22 = load i64, i64* @BNXT_TX_HDL, align 8
  %23 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %21, i64 %22
  %24 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %23, align 8
  store %struct.bnxt_cp_ring_info* %24, %struct.bnxt_cp_ring_info** %7, align 8
  %25 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %26 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %31 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %5, align 8
  %32 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %31, i32 0, i32 0
  %33 = call i32 @bnxt_cp_ring_from_grp(%struct.bnxt* %30, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @bnxt_cp_ring_from_grp(%struct.bnxt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
