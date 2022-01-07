; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_reuse_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_fp.c_qede_reuse_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_rx_queue = type { i64, i64, %struct.sw_rx_data*, i32 }
%struct.sw_rx_data = type { i32*, i64, i64 }
%struct.eth_rx_bd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@NUM_RX_BDS_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_rx_queue*, %struct.sw_rx_data*)* @qede_reuse_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_reuse_page(%struct.qede_rx_queue* %0, %struct.sw_rx_data* %1) #0 {
  %3 = alloca %struct.qede_rx_queue*, align 8
  %4 = alloca %struct.sw_rx_data*, align 8
  %5 = alloca %struct.eth_rx_bd*, align 8
  %6 = alloca %struct.sw_rx_data*, align 8
  %7 = alloca i64, align 8
  store %struct.qede_rx_queue* %0, %struct.qede_rx_queue** %3, align 8
  store %struct.sw_rx_data* %1, %struct.sw_rx_data** %4, align 8
  %8 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %3, align 8
  %9 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %8, i32 0, i32 3
  %10 = call %struct.eth_rx_bd* @qed_chain_produce(i32* %9)
  store %struct.eth_rx_bd* %10, %struct.eth_rx_bd** %5, align 8
  %11 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %3, align 8
  %12 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %11, i32 0, i32 2
  %13 = load %struct.sw_rx_data*, %struct.sw_rx_data** %12, align 8
  %14 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %3, align 8
  %15 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NUM_RX_BDS_MAX, align 8
  %18 = and i64 %16, %17
  %19 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %13, i64 %18
  store %struct.sw_rx_data* %19, %struct.sw_rx_data** %6, align 8
  %20 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %21 = load %struct.sw_rx_data*, %struct.sw_rx_data** %4, align 8
  %22 = bitcast %struct.sw_rx_data* %20 to i8*
  %23 = bitcast %struct.sw_rx_data* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 24, i1 false)
  %24 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %25 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sw_rx_data*, %struct.sw_rx_data** %6, align 8
  %28 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @upper_32_bits(i64 %31)
  %33 = call i8* @cpu_to_le32(i64 %32)
  %34 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %5, align 8
  %35 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @lower_32_bits(i64 %37)
  %39 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %3, align 8
  %40 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i8* @cpu_to_le32(i64 %42)
  %44 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %5, align 8
  %45 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load %struct.qede_rx_queue*, %struct.qede_rx_queue** %3, align 8
  %48 = getelementptr inbounds %struct.qede_rx_queue, %struct.qede_rx_queue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.sw_rx_data*, %struct.sw_rx_data** %4, align 8
  %52 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  ret void
}

declare dso_local %struct.eth_rx_bd* @qed_chain_produce(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @upper_32_bits(i64) #1

declare dso_local i64 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
