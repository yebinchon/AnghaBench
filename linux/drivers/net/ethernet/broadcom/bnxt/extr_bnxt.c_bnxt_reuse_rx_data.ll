; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_reuse_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_reuse_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_rx_ring_info = type { i64, %struct.rx_bd**, %struct.bnxt_sw_rx_bd* }
%struct.rx_bd = type { i32 }
%struct.bnxt_sw_rx_bd = type { i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_reuse_rx_data(%struct.bnxt_rx_ring_info* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.bnxt_rx_ring_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bnxt_sw_rx_bd*, align 8
  %9 = alloca %struct.bnxt_sw_rx_bd*, align 8
  %10 = alloca %struct.rx_bd*, align 8
  %11 = alloca %struct.rx_bd*, align 8
  store %struct.bnxt_rx_ring_info* %0, %struct.bnxt_rx_ring_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %16 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %15, i32 0, i32 2
  %17 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %17, i64 %18
  store %struct.bnxt_sw_rx_bd* %19, %struct.bnxt_sw_rx_bd** %9, align 8
  %20 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %21 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %20, i32 0, i32 2
  %22 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %22, i64 %23
  store %struct.bnxt_sw_rx_bd* %24, %struct.bnxt_sw_rx_bd** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %9, align 8
  %27 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %8, align 8
  %29 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %9, align 8
  %32 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %8, align 8
  %34 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bnxt_sw_rx_bd*, %struct.bnxt_sw_rx_bd** %9, align 8
  %37 = getelementptr inbounds %struct.bnxt_sw_rx_bd, %struct.bnxt_sw_rx_bd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %39 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %38, i32 0, i32 1
  %40 = load %struct.rx_bd**, %struct.rx_bd*** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @RX_RING(i64 %41)
  %43 = getelementptr inbounds %struct.rx_bd*, %struct.rx_bd** %40, i64 %42
  %44 = load %struct.rx_bd*, %struct.rx_bd** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @RX_IDX(i64 %45)
  %47 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %44, i64 %46
  store %struct.rx_bd* %47, %struct.rx_bd** %11, align 8
  %48 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %49 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %48, i32 0, i32 1
  %50 = load %struct.rx_bd**, %struct.rx_bd*** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @RX_RING(i64 %51)
  %53 = getelementptr inbounds %struct.rx_bd*, %struct.rx_bd** %50, i64 %52
  %54 = load %struct.rx_bd*, %struct.rx_bd** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i64 @RX_IDX(i64 %55)
  %57 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %54, i64 %56
  store %struct.rx_bd* %57, %struct.rx_bd** %10, align 8
  %58 = load %struct.rx_bd*, %struct.rx_bd** %10, align 8
  %59 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rx_bd*, %struct.rx_bd** %11, align 8
  %62 = getelementptr inbounds %struct.rx_bd, %struct.rx_bd* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i64 @RX_RING(i64) #1

declare dso_local i64 @RX_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
