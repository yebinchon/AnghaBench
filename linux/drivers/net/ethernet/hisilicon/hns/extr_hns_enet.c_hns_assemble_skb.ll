; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_assemble_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_assemble_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ethhdr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@HNS_LB_TX_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*)* @hns_assemble_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @hns_assemble_skb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.sk_buff* @alloc_skb(i32 64, i32 %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_put(%struct.sk_buff* %13, i32 64)
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 3
  store %struct.net_device* %15, %struct.net_device** %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memset(i32* %20, i32 255, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = bitcast i32* %27 to %struct.ethhdr*
  store %struct.ethhdr* %28, %struct.ethhdr** %5, align 8
  %29 = load i32, i32* @ETH_P_IP, align 4
  %30 = call i32 @htons(i32 %29)
  %31 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %32 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, -2
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 %46, 2
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @memset(i32* %45, i32 170, i32 %48)
  %50 = load i32, i32* @HNS_LB_TX_RING, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %2, align 8
  br label %54

54:                                               ; preds = %12, %11
  %55 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %55
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
