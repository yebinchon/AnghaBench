; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_get_rxhash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_get_rxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.eth_fast_path_rx_cqe = type { i32, i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@ETH_FAST_PATH_RX_CQE_RSS_HASH_FLG = common dso_local global i32 0, align 4
@ETH_FAST_PATH_RX_CQE_RSS_HASH_TYPE = common dso_local global i32 0, align 4
@TCP_IPV4_HASH_TYPE = common dso_local global i32 0, align 4
@TCP_IPV6_HASH_TYPE = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.eth_fast_path_rx_cqe*, i32*)* @bnx2x_get_rxhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_rxhash(%struct.bnx2x* %0, %struct.eth_fast_path_rx_cqe* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.eth_fast_path_rx_cqe*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.eth_fast_path_rx_cqe* %1, %struct.eth_fast_path_rx_cqe** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NETIF_F_RXHASH, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %3
  %18 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %6, align 8
  %19 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ETH_FAST_PATH_RX_CQE_RSS_HASH_FLG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %17
  %25 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %6, align 8
  %26 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ETH_FAST_PATH_RX_CQE_RSS_HASH_TYPE, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @TCP_IPV4_HASH_TYPE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @TCP_IPV6_HASH_TYPE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %24
  %38 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %6, align 8
  %45 = getelementptr inbounds %struct.eth_fast_path_rx_cqe, %struct.eth_fast_path_rx_cqe* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %17, %3
  %49 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
