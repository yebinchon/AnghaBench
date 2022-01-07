; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_mark_all_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_mark_all_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nfp_ccm_mbox_cmsg_cb = type { i32, i32 }

@NFP_NET_MBOX_CMSG_STATE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*, %struct.sk_buff*, i32)* @nfp_ccm_mbox_mark_all_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_ccm_mbox_mark_all_err(%struct.nfp_net* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_ccm_mbox_cmsg_cb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  br label %14

14:                                               ; preds = %31, %3
  %15 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call %struct.sk_buff* @__skb_dequeue(%struct.TYPE_4__* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.nfp_ccm_mbox_cmsg_cb*
  store %struct.nfp_ccm_mbox_cmsg_cb* %23, %struct.nfp_ccm_mbox_cmsg_cb** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %7, align 8
  %26 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = call i32 (...) @smp_wmb()
  %28 = load i32, i32* @NFP_NET_MBOX_CMSG_STATE_DONE, align 4
  %29 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %7, align 8
  %30 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %14
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = icmp ne %struct.sk_buff* %32, %33
  br i1 %34, label %14, label %35

35:                                               ; preds = %31
  %36 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %37 = call i32 @nfp_ccm_mbox_mark_next_runner(%struct.nfp_net* %36)
  %38 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %39 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.TYPE_4__*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @nfp_ccm_mbox_mark_next_runner(%struct.nfp_net*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
