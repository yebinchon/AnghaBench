; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tso_put_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tso_put_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.mvpp2_tx_queue = type { i32 }
%struct.mvpp2_txq_pcpu = type { i32, i64 }
%struct.mvpp2_port = type { i32 }
%struct.mvpp2_tx_desc = type { i32 }

@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@MVPP2_TXD_F_DESC = common dso_local global i32 0, align 4
@MVPP2_TXD_PADDING_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*, i32)* @mvpp2_tso_put_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_tso_put_hdr(%struct.sk_buff* %0, %struct.net_device* %1, %struct.mvpp2_tx_queue* %2, %struct.mvpp2_tx_queue* %3, %struct.mvpp2_txq_pcpu* %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mvpp2_tx_queue*, align 8
  %10 = alloca %struct.mvpp2_tx_queue*, align 8
  %11 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mvpp2_port*, align 8
  %14 = alloca %struct.mvpp2_tx_desc*, align 8
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.mvpp2_tx_queue* %2, %struct.mvpp2_tx_queue** %9, align 8
  store %struct.mvpp2_tx_queue* %3, %struct.mvpp2_tx_queue** %10, align 8
  store %struct.mvpp2_txq_pcpu* %4, %struct.mvpp2_txq_pcpu** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %16)
  store %struct.mvpp2_port* %17, %struct.mvpp2_port** %13, align 8
  %18 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %10, align 8
  %19 = call %struct.mvpp2_tx_desc* @mvpp2_txq_next_desc_get(%struct.mvpp2_tx_queue* %18)
  store %struct.mvpp2_tx_desc* %19, %struct.mvpp2_tx_desc** %14, align 8
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %13, align 8
  %21 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %14, align 8
  %22 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %9, align 8
  %23 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mvpp2_txdesc_txq_set(%struct.mvpp2_port* %20, %struct.mvpp2_tx_desc* %21, i32 %24)
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %13, align 8
  %27 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %14, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @mvpp2_txdesc_size_set(%struct.mvpp2_port* %26, %struct.mvpp2_tx_desc* %27, i32 %28)
  %30 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %11, align 8
  %31 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %11, align 8
  %34 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %32, %38
  store i64 %39, i64* %15, align 8
  %40 = load %struct.mvpp2_port*, %struct.mvpp2_port** %13, align 8
  %41 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %14, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i32 @mvpp2_txdesc_dma_addr_set(%struct.mvpp2_port* %40, %struct.mvpp2_tx_desc* %41, i64 %42)
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %13, align 8
  %45 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %14, align 8
  %46 = load %struct.mvpp2_port*, %struct.mvpp2_port** %13, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32 @mvpp2_skb_tx_csum(%struct.mvpp2_port* %46, %struct.sk_buff* %47)
  %49 = load i32, i32* @MVPP2_TXD_F_DESC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MVPP2_TXD_PADDING_DISABLE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port* %44, %struct.mvpp2_tx_desc* %45, i32 %52)
  %54 = load %struct.mvpp2_port*, %struct.mvpp2_port** %13, align 8
  %55 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %11, align 8
  %56 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %14, align 8
  %57 = call i32 @mvpp2_txq_inc_put(%struct.mvpp2_port* %54, %struct.mvpp2_txq_pcpu* %55, i32* null, %struct.mvpp2_tx_desc* %56)
  ret void
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mvpp2_tx_desc* @mvpp2_txq_next_desc_get(%struct.mvpp2_tx_queue*) #1

declare dso_local i32 @mvpp2_txdesc_txq_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txdesc_size_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_txdesc_dma_addr_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i64) #1

declare dso_local i32 @mvpp2_txdesc_cmd_set(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32) #1

declare dso_local i32 @mvpp2_skb_tx_csum(%struct.mvpp2_port*, %struct.sk_buff*) #1

declare dso_local i32 @mvpp2_txq_inc_put(%struct.mvpp2_port*, %struct.mvpp2_txq_pcpu*, i32*, %struct.mvpp2_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
