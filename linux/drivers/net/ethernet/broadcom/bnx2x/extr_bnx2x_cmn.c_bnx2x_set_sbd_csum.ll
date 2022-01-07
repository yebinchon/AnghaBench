; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_sbd_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_sbd_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.sk_buff = type { i32 }
%struct.eth_tx_start_bd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETH_TX_BD_FLAGS_L4_CSUM = common dso_local global i32 0, align 4
@XMIT_CSUM_ENC_V6 = common dso_local global i32 0, align 4
@XMIT_CSUM_V6 = common dso_local global i32 0, align 4
@ETH_TX_BD_FLAGS_IPV6 = common dso_local global i32 0, align 4
@XMIT_CSUM_TCP = common dso_local global i32 0, align 4
@ETH_TX_BD_FLAGS_IS_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.sk_buff*, %struct.eth_tx_start_bd*, i32)* @bnx2x_set_sbd_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_sbd_csum(%struct.bnx2x* %0, %struct.sk_buff* %1, %struct.eth_tx_start_bd* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.eth_tx_start_bd*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.eth_tx_start_bd* %2, %struct.eth_tx_start_bd** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @ETH_TX_BD_FLAGS_L4_CSUM, align 4
  %10 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %7, align 8
  %11 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %9
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @XMIT_CSUM_ENC_V6, align 4
  %17 = load i32, i32* @XMIT_CSUM_V6, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @ETH_TX_BD_FLAGS_IPV6, align 4
  %23 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %7, align 8
  %24 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @XMIT_CSUM_TCP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ETH_TX_BD_FLAGS_IS_UDP, align 4
  %35 = load %struct.eth_tx_start_bd*, %struct.eth_tx_start_bd** %7, align 8
  %36 = getelementptr inbounds %struct.eth_tx_start_bd, %struct.eth_tx_start_bd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
