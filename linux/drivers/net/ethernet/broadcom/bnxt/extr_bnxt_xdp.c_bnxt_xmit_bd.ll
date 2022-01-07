; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_xdp.c_bnxt_xmit_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_xdp.c_bnxt_xmit_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_sw_tx_bd = type { i32 }
%struct.bnxt = type { i32 }
%struct.bnxt_tx_ring_info = type { i64, %struct.tx_bd**, %struct.bnxt_sw_tx_bd* }
%struct.tx_bd = type { i64, i32, i32 }

@TX_BD_LEN_SHIFT = common dso_local global i32 0, align 4
@TX_BD_FLAGS_BD_CNT_SHIFT = common dso_local global i32 0, align 4
@TX_BD_FLAGS_PACKET_END = common dso_local global i32 0, align 4
@bnxt_lhint_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bnxt_sw_tx_bd* @bnxt_xmit_bd(%struct.bnxt* %0, %struct.bnxt_tx_ring_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnxt*, align 8
  %6 = alloca %struct.bnxt_tx_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_sw_tx_bd*, align 8
  %10 = alloca %struct.tx_bd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %5, align 8
  store %struct.bnxt_tx_ring_info* %1, %struct.bnxt_tx_ring_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %6, align 8
  %17 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %16, i32 0, i32 2
  %18 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %17, align 8
  %19 = load i64, i64* %12, align 8
  %20 = getelementptr inbounds %struct.bnxt_sw_tx_bd, %struct.bnxt_sw_tx_bd* %18, i64 %19
  store %struct.bnxt_sw_tx_bd* %20, %struct.bnxt_sw_tx_bd** %9, align 8
  %21 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %6, align 8
  %22 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %21, i32 0, i32 1
  %23 = load %struct.tx_bd**, %struct.tx_bd*** %22, align 8
  %24 = load i64, i64* %12, align 8
  %25 = call i64 @TX_RING(i64 %24)
  %26 = getelementptr inbounds %struct.tx_bd*, %struct.tx_bd** %23, i64 %25
  %27 = load %struct.tx_bd*, %struct.tx_bd** %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @TX_IDX(i64 %28)
  %30 = getelementptr inbounds %struct.tx_bd, %struct.tx_bd* %27, i64 %29
  store %struct.tx_bd* %30, %struct.tx_bd** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @TX_BD_LEN_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @TX_BD_FLAGS_BD_CNT_SHIFT, align 4
  %35 = shl i32 1, %34
  %36 = or i32 %33, %35
  %37 = load i32, i32* @TX_BD_FLAGS_PACKET_END, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** @bnxt_lhint_arr, align 8
  %40 = load i32, i32* %8, align 4
  %41 = ashr i32 %40, 9
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %38, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = load %struct.tx_bd*, %struct.tx_bd** %10, align 8
  %49 = getelementptr inbounds %struct.tx_bd, %struct.tx_bd* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.tx_bd*, %struct.tx_bd** %10, align 8
  %52 = getelementptr inbounds %struct.tx_bd, %struct.tx_bd* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @cpu_to_le64(i32 %53)
  %55 = load %struct.tx_bd*, %struct.tx_bd** %10, align 8
  %56 = getelementptr inbounds %struct.tx_bd, %struct.tx_bd* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i64 @NEXT_TX(i64 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %6, align 8
  %61 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.bnxt_sw_tx_bd*, %struct.bnxt_sw_tx_bd** %9, align 8
  ret %struct.bnxt_sw_tx_bd* %62
}

declare dso_local i64 @TX_RING(i64) #1

declare dso_local i64 @TX_IDX(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i64 @NEXT_TX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
