; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_find_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_find_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.nfp_net*, i64, %struct.sk_buff*)* @nfp_ccm_mbox_find_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @nfp_ccm_mbox_find_req(%struct.nfp_net* %0, i64 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %10 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call %struct.sk_buff* @__skb_peek(i32* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  br label %13

13:                                               ; preds = %3, %25
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = call i64 @__nfp_ccm_get_tag(%struct.sk_buff* %14)
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  br label %31

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = icmp eq %struct.sk_buff* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %31

25:                                               ; preds = %20
  %26 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %27 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call %struct.sk_buff* @skb_queue_next(i32* %28, %struct.sk_buff* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  br label %13

31:                                               ; preds = %24, %18
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %32
}

declare dso_local %struct.sk_buff* @__skb_peek(i32*) #1

declare dso_local i64 @__nfp_ccm_get_tag(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
