; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_tso_put_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_tso_put_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mvneta_port = type { i32 }
%struct.mvneta_tx_queue = type { i64, i64, i32** }
%struct.mvneta_tx_desc = type { i32, i64, i32 }

@MVNETA_TXD_F_DESC = common dso_local global i32 0, align 4
@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.mvneta_port*, %struct.mvneta_tx_queue*)* @mvneta_tso_put_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvneta_tso_put_hdr(%struct.sk_buff* %0, %struct.mvneta_port* %1, %struct.mvneta_tx_queue* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mvneta_port*, align 8
  %6 = alloca %struct.mvneta_tx_queue*, align 8
  %7 = alloca %struct.mvneta_tx_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.mvneta_port* %1, %struct.mvneta_port** %5, align 8
  store %struct.mvneta_tx_queue* %2, %struct.mvneta_tx_queue** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @skb_transport_offset(%struct.sk_buff* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @tcp_hdrlen(%struct.sk_buff* %11)
  %13 = add nsw i32 %10, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %15 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %14, i32 0, i32 2
  %16 = load i32**, i32*** %15, align 8
  %17 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %18 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  store i32* null, i32** %20, align 8
  %21 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %22 = call %struct.mvneta_tx_desc* @mvneta_txq_next_desc_get(%struct.mvneta_tx_queue* %21)
  store %struct.mvneta_tx_desc* %22, %struct.mvneta_tx_desc** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %7, align 8
  %25 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @mvneta_skb_tx_csum(%struct.mvneta_port* %26, %struct.sk_buff* %27)
  %29 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %7, align 8
  %30 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @MVNETA_TXD_F_DESC, align 4
  %32 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %7, align 8
  %33 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %37 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %40 = getelementptr inbounds %struct.mvneta_tx_queue, %struct.mvneta_tx_queue* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %41, %43
  %45 = add i64 %38, %44
  %46 = load %struct.mvneta_tx_desc*, %struct.mvneta_tx_desc** %7, align 8
  %47 = getelementptr inbounds %struct.mvneta_tx_desc, %struct.mvneta_tx_desc* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.mvneta_tx_queue*, %struct.mvneta_tx_queue** %6, align 8
  %49 = call i32 @mvneta_txq_inc_put(%struct.mvneta_tx_queue* %48)
  ret void
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.mvneta_tx_desc* @mvneta_txq_next_desc_get(%struct.mvneta_tx_queue*) #1

declare dso_local i32 @mvneta_skb_tx_csum(%struct.mvneta_port*, %struct.sk_buff*) #1

declare dso_local i32 @mvneta_txq_inc_put(%struct.mvneta_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
