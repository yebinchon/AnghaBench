; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_bpf = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netdev_bpf*)* @ixgbe_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_xdp(%struct.net_device* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbe_adapter* %8, %struct.ixgbe_adapter** %6, align 8
  %9 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %10 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %47 [
    i32 129, label %12
    i32 130, label %18
    i32 128, label %36
  ]

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %15 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ixgbe_xdp_setup(%struct.net_device* %13, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %23
  %33 = phi i32 [ %30, %23 ], [ 0, %31 ]
  %34 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %35 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %3, align 4
  br label %50

36:                                               ; preds = %2
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %38 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %39 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %43 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ixgbe_xsk_umem_setup(%struct.ixgbe_adapter* %37, i32 %41, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %36, %32, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_xdp_setup(%struct.net_device*, i32) #1

declare dso_local i32 @ixgbe_xsk_umem_setup(%struct.ixgbe_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
