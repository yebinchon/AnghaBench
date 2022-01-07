; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_net = type { i32 }
%struct.nfp_net_dp = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nfp_net_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca %struct.nfp_net_dp*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %9)
  store %struct.nfp_net* %10, %struct.nfp_net** %6, align 8
  %11 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @nfp_app_check_mtu(i32 %13, %struct.net_device* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %23 = call %struct.nfp_net_dp* @nfp_net_clone_dp(%struct.nfp_net* %22)
  store %struct.nfp_net_dp* %23, %struct.nfp_net_dp** %7, align 8
  %24 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %25 = icmp ne %struct.nfp_net_dp* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %32 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %34 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %35 = call i32 @nfp_net_ring_reconfig(%struct.nfp_net* %33, %struct.nfp_net_dp* %34, i32* null)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %26, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_app_check_mtu(i32, %struct.net_device*, i32) #1

declare dso_local %struct.nfp_net_dp* @nfp_net_clone_dp(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_ring_reconfig(%struct.nfp_net*, %struct.nfp_net_dp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
