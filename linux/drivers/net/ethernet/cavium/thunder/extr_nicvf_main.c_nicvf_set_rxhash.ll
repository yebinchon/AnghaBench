; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_set_rxhash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_set_rxhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cqe_rx_t = type { i32, i32 }
%struct.sk_buff = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.cqe_rx_t*, %struct.sk_buff*)* @nicvf_set_rxhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_set_rxhash(%struct.net_device* %0, %struct.cqe_rx_t* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cqe_rx_t*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cqe_rx_t* %1, %struct.cqe_rx_t** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NETIF_F_RXHASH, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %37

16:                                               ; preds = %3
  %17 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %5, align 8
  %18 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %30 [
    i32 129, label %20
    i32 128, label %20
    i32 130, label %25
  ]

20:                                               ; preds = %16, %16
  %21 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %5, align 8
  %23 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %32

25:                                               ; preds = %16
  %26 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %5, align 8
  %28 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %32

30:                                               ; preds = %16
  %31 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %25, %20
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @skb_set_hash(%struct.sk_buff* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %15
  ret void
}

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
