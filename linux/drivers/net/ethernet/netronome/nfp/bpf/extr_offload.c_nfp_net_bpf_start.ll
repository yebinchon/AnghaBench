; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_net_bpf_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_net_bpf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@NFP_NET_CFG_CTRL_BPF = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"FW command error while enabling BPF\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*, %struct.netlink_ext_ack*)* @nfp_net_bpf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_bpf_start(%struct.nfp_net* %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca %struct.netlink_ext_ack*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %4, align 8
  %6 = load i32, i32* @NFP_NET_CFG_CTRL_BPF, align 4
  %7 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %6
  store i32 %11, i32* %9, align 4
  %12 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %13 = load i32, i32* @NFP_NET_CFG_CTRL, align 4
  %14 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nn_writel(%struct.nfp_net* %12, i32 %13, i32 %17)
  %19 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %20 = load i32, i32* @NFP_NET_CFG_UPDATE_GEN, align 4
  %21 = call i32 @nfp_net_reconfig(%struct.nfp_net* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %4, align 8
  %26 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %2
  ret void
}

declare dso_local i32 @nn_writel(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nfp_net_reconfig(%struct.nfp_net*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
