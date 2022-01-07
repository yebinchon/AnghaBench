; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_mark_next_runner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_mark_next_runner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nfp_ccm_mbox_cmsg_cb = type { i64, i32 }
%struct.sk_buff = type { i64 }

@NFP_NET_MBOX_CMSG_STATE_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*)* @nfp_ccm_mbox_mark_next_runner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_ccm_mbox_mark_next_runner(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca %struct.nfp_ccm_mbox_cmsg_cb*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %5 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %6 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = call %struct.sk_buff* @skb_peek(i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.nfp_ccm_mbox_cmsg_cb*
  store %struct.nfp_ccm_mbox_cmsg_cb* %17, %struct.nfp_ccm_mbox_cmsg_cb** %3, align 8
  %18 = load i32, i32* @NFP_NET_MBOX_CMSG_STATE_NEXT, align 4
  %19 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %3, align 8
  %22 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %12
  %26 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %27 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %31 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @queue_work(i32 %29, i32* %32)
  br label %34

34:                                               ; preds = %11, %25, %12
  ret void
}

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
