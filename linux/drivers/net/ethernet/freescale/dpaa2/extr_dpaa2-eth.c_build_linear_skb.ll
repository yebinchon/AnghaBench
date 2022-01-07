; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_build_linear_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_build_linear_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dpaa2_eth_channel = type { i32 }
%struct.dpaa2_fd = type { i32 }

@DPAA2_ETH_RX_BUF_RAW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.dpaa2_eth_channel*, %struct.dpaa2_fd*, i8*)* @build_linear_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @build_linear_skb(%struct.dpaa2_eth_channel* %0, %struct.dpaa2_fd* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.dpaa2_eth_channel*, align 8
  %6 = alloca %struct.dpaa2_fd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dpaa2_eth_channel* %0, %struct.dpaa2_eth_channel** %5, align 8
  store %struct.dpaa2_fd* %1, %struct.dpaa2_fd** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %11 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %6, align 8
  %12 = call i32 @dpaa2_fd_get_offset(%struct.dpaa2_fd* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.dpaa2_fd*, %struct.dpaa2_fd** %6, align 8
  %14 = call i32 @dpaa2_fd_get_len(%struct.dpaa2_fd* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %5, align 8
  %16 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @DPAA2_ETH_RX_BUF_RAW_SIZE, align 4
  %21 = call %struct.sk_buff* @build_skb(i8* %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %37

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @skb_reserve(%struct.sk_buff* %30, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @skb_put(%struct.sk_buff* %33, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  br label %37

37:                                               ; preds = %29, %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %38
}

declare dso_local i32 @dpaa2_fd_get_offset(%struct.dpaa2_fd*) #1

declare dso_local i32 @dpaa2_fd_get_len(%struct.dpaa2_fd*) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
