; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_forward_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_forward_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.veth_rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.veth_rq*, i32)* @veth_forward_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_forward_skb(%struct.net_device* %0, %struct.sk_buff* %1, %struct.veth_rq* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.veth_rq*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.veth_rq* %2, %struct.veth_rq** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call i64 @__dev_forward_skb(%struct.net_device* %9, %struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %27

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.veth_rq*, %struct.veth_rq** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @veth_xdp_rx(%struct.veth_rq* %18, %struct.sk_buff* %19)
  br label %24

21:                                               ; preds = %14
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32 @netif_rx(%struct.sk_buff* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %20, %17 ], [ %23, %21 ]
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %24, %13
  %28 = phi i64 [ %11, %13 ], [ %26, %24 ]
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

declare dso_local i64 @__dev_forward_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @veth_xdp_rx(%struct.veth_rq*, %struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
