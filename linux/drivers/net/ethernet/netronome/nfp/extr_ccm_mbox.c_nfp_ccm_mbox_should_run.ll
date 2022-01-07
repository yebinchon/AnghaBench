; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_should_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_should_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }
%struct.sk_buff = type { i64 }
%struct.nfp_ccm_mbox_cmsg_cb = type { i64 }

@NFP_NET_MBOX_CMSG_STATE_NEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.sk_buff*)* @nfp_ccm_mbox_should_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_ccm_mbox_should_run(%struct.nfp_net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfp_ccm_mbox_cmsg_cb*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.nfp_ccm_mbox_cmsg_cb*
  store %struct.nfp_ccm_mbox_cmsg_cb* %10, %struct.nfp_ccm_mbox_cmsg_cb** %5, align 8
  %11 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NFP_NET_MBOX_CMSG_STATE_NEXT, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
