; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_bpf = type { i32 }
%struct.nfp_net = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_bpf*)* @nfp_net_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_xdp(%struct.net_device* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %7)
  store %struct.nfp_net* %8, %struct.nfp_net** %6, align 8
  %9 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %10 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %30 [
    i32 129, label %12
    i32 128, label %16
    i32 131, label %20
    i32 130, label %25
  ]

12:                                               ; preds = %2
  %13 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %14 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %15 = call i32 @nfp_net_xdp_setup_drv(%struct.nfp_net* %13, %struct.netdev_bpf* %14)
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %18 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %19 = call i32 @nfp_net_xdp_setup_hw(%struct.nfp_net* %17, %struct.netdev_bpf* %18)
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %22 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %21, i32 0, i32 2
  %23 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %24 = call i32 @xdp_attachment_query(i32* %22, %struct.netdev_bpf* %23)
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %27 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %26, i32 0, i32 1
  %28 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %29 = call i32 @xdp_attachment_query(i32* %27, %struct.netdev_bpf* %28)
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %32 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %35 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %36 = call i32 @nfp_app_bpf(i32 %33, %struct.nfp_net* %34, %struct.netdev_bpf* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %25, %20, %16, %12
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_net_xdp_setup_drv(%struct.nfp_net*, %struct.netdev_bpf*) #1

declare dso_local i32 @nfp_net_xdp_setup_hw(%struct.nfp_net*, %struct.netdev_bpf*) #1

declare dso_local i32 @xdp_attachment_query(i32*, %struct.netdev_bpf*) #1

declare dso_local i32 @nfp_app_bpf(i32, %struct.nfp_net*, %struct.netdev_bpf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
