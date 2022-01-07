; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_update_coalesce_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_update_coalesce_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HC_INDEX_ETH_RX_CQ_CONS = common dso_local global i32 0, align 4
@HC_INDEX_ETH_TX_CQ_CONS_COS0 = common dso_local global i32 0, align 4
@HC_INDEX_ETH_TX_CQ_CONS_COS1 = common dso_local global i32 0, align 4
@HC_INDEX_ETH_TX_CQ_CONS_COS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32, i32)* @bnx2x_update_coalesce_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_update_coalesce_sb(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @HC_INDEX_ETH_RX_CQ_CONS, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @bnx2x_update_coalesce_sb_index(%struct.bnx2x* %9, i32 %10, i32 %11, i32 0, i32 %12)
  %14 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @HC_INDEX_ETH_TX_CQ_CONS_COS0, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @bnx2x_update_coalesce_sb_index(%struct.bnx2x* %14, i32 %15, i32 %16, i32 0, i32 %17)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @HC_INDEX_ETH_TX_CQ_CONS_COS1, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @bnx2x_update_coalesce_sb_index(%struct.bnx2x* %19, i32 %20, i32 %21, i32 0, i32 %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @HC_INDEX_ETH_TX_CQ_CONS_COS2, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @bnx2x_update_coalesce_sb_index(%struct.bnx2x* %24, i32 %25, i32 %26, i32 0, i32 %27)
  ret void
}

declare dso_local i32 @bnx2x_update_coalesce_sb_index(%struct.bnx2x*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
