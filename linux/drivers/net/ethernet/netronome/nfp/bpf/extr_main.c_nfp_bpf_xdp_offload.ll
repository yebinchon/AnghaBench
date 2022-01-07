; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_xdp_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_xdp_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_net = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_BPF = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_net*, %struct.bpf_prog*, %struct.netlink_ext_ack*)* @nfp_bpf_xdp_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_xdp_offload(%struct.nfp_app* %0, %struct.nfp_net* %1, %struct.bpf_prog* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_app*, align 8
  %7 = alloca %struct.nfp_net*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %6, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %7, align 8
  store %struct.bpf_prog* %2, %struct.bpf_prog** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %13 = call i32 @nfp_net_ebpf_capable(%struct.nfp_net* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %60

18:                                               ; preds = %4
  %19 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NFP_NET_CFG_CTRL_BPF, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %29 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %27, %18
  %34 = phi i1 [ false, %18 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %37 = icmp ne %struct.bpf_prog* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %60

42:                                               ; preds = %38, %33
  %43 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %44 = icmp ne %struct.bpf_prog* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %60

54:                                               ; preds = %48, %45, %42
  %55 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %56 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %59 = call i32 @nfp_net_bpf_offload(%struct.nfp_net* %55, %struct.bpf_prog* %56, i32 %57, %struct.netlink_ext_ack* %58)
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %51, %41, %15
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @nfp_net_ebpf_capable(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_bpf_offload(%struct.nfp_net*, %struct.bpf_prog*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
