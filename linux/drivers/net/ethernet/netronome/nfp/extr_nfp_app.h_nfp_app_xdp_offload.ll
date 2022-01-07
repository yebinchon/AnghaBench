; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.h_nfp_app_xdp_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.h_nfp_app_xdp_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.nfp_net = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)* @nfp_app_xdp_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_app_xdp_offload(%struct.nfp_app* %0, %struct.nfp_net* %1, %struct.bpf_prog* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.nfp_net*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %7, align 8
  store %struct.bpf_prog* %2, %struct.bpf_prog** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %10 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %11 = icmp ne %struct.nfp_app* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %14 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)**
  %18 = load i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)*, i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)** %17, align 8
  %19 = icmp ne i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %12, %4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %35

23:                                               ; preds = %12
  %24 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)**
  %29 = load i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)*, i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)** %28, align 8
  %30 = load %struct.nfp_app*, %struct.nfp_app** %6, align 8
  %31 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %34 = call i32 %29(%struct.nfp_app* %30, %struct.nfp_net* %31, %struct.bpf_prog* %32, %struct.netlink_ext_ack* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
