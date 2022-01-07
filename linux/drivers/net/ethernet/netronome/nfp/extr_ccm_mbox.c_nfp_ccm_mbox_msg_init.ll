; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_msg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_ccm_mbox.c_nfp_ccm_mbox_msg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nfp_ccm_mbox_cmsg_cb = type { i32, i32, i32, i64, i32 }

@NFP_NET_MBOX_CMSG_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32)* @nfp_ccm_mbox_msg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_ccm_mbox_msg_init(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_ccm_mbox_cmsg_cb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.nfp_ccm_mbox_cmsg_cb*
  store %struct.nfp_ccm_mbox_cmsg_cb* %12, %struct.nfp_ccm_mbox_cmsg_cb** %7, align 8
  %13 = load i32, i32* @NFP_NET_MBOX_CMSG_STATE_QUEUED, align 4
  %14 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %7, align 8
  %15 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %7, align 8
  %17 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %7, align 8
  %20 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %7, align 8
  %23 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nfp_ccm_mbox_cmsg_cb*, %struct.nfp_ccm_mbox_cmsg_cb** %7, align 8
  %25 = getelementptr inbounds %struct.nfp_ccm_mbox_cmsg_cb, %struct.nfp_ccm_mbox_cmsg_cb* %24, i32 0, i32 2
  store i32 0, i32* %25, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
