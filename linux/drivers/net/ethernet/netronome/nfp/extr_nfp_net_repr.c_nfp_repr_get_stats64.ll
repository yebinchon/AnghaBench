; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_get_stats64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_get_stats64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtnl_link_stats64 = type { i32 }
%struct.nfp_repr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rtnl_link_stats64*)* @nfp_repr_get_stats64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_repr_get_stats64(%struct.net_device* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.nfp_repr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %6)
  store %struct.nfp_repr* %7, %struct.nfp_repr** %5, align 8
  %8 = load %struct.nfp_repr*, %struct.nfp_repr** %5, align 8
  %9 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.nfp_repr*, %struct.nfp_repr** %5, align 8
  %19 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %42 [
    i32 129, label %23
    i32 130, label %36
    i32 128, label %36
  ]

23:                                               ; preds = %17
  %24 = load %struct.nfp_repr*, %struct.nfp_repr** %5, align 8
  %25 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i32 @__nfp_port_get_eth_port(%struct.TYPE_4__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %43

30:                                               ; preds = %23
  %31 = load %struct.nfp_repr*, %struct.nfp_repr** %5, align 8
  %32 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %35 = call i32 @nfp_repr_phy_port_get_stats64(%struct.TYPE_4__* %33, %struct.rtnl_link_stats64* %34)
  br label %43

36:                                               ; preds = %17, %17
  %37 = load %struct.nfp_repr*, %struct.nfp_repr** %5, align 8
  %38 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %41 = call i32 @nfp_repr_vnic_get_stats64(%struct.TYPE_4__* %39, %struct.rtnl_link_stats64* %40)
  br label %42

42:                                               ; preds = %17, %36
  br label %43

43:                                               ; preds = %16, %42, %30, %29
  ret void
}

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__nfp_port_get_eth_port(%struct.TYPE_4__*) #1

declare dso_local i32 @nfp_repr_phy_port_get_stats64(%struct.TYPE_4__*, %struct.rtnl_link_stats64*) #1

declare dso_local i32 @nfp_repr_vnic_get_stats64(%struct.TYPE_4__*, %struct.rtnl_link_stats64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
