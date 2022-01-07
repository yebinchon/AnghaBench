; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_check_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.c_nfp_bpf_check_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NFP_NET_CFG_CTRL_BPF = common dso_local global i32 0, align 4
@NFP_NET_CFG_BPF_INL_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"BPF offload active, MTU over %u not supported\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.net_device*, i32)* @nfp_bpf_check_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_check_mtu(%struct.nfp_app* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_net*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %10)
  store %struct.nfp_net* %11, %struct.nfp_net** %8, align 8
  %12 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %13 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @NFP_NET_CFG_CTRL_BPF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

21:                                               ; preds = %3
  %22 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %23 = load i32, i32* @NFP_NET_CFG_BPF_INL_MTU, align 4
  %24 = call i32 @nn_readb(%struct.nfp_net* %22, i32 %23)
  %25 = mul nsw i32 %24, 64
  %26 = sub nsw i32 %25, 32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @nn_info(%struct.nfp_net* %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %30, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nn_readb(%struct.nfp_net*, i32) #1

declare dso_local i32 @nn_info(%struct.nfp_net*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
