; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { i32, i32, i32 }

@netdev_set_wol.net_addr = internal constant [4 x i32] [i32 192, i32 168, i32 1, i32 1], align 16
@EINVAL = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @netdev_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.dev_priv*, align 8
  %7 = alloca %struct.dev_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.dev_priv* %9, %struct.dev_priv** %6, align 8
  %10 = load %struct.dev_priv*, %struct.dev_priv** %6, align 8
  %11 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %10, i32 0, i32 0
  %12 = load %struct.dev_info*, %struct.dev_info** %11, align 8
  store %struct.dev_info* %12, %struct.dev_info** %7, align 8
  %13 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dev_info*, %struct.dev_info** %7, align 8
  %17 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dev_info*, %struct.dev_info** %7, align 8
  %30 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load i32, i32* @WAKE_PHY, align 4
  %37 = load %struct.dev_info*, %struct.dev_info** %7, align 8
  %38 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %25
  %42 = load %struct.dev_info*, %struct.dev_info** %7, align 8
  %43 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %42, i32 0, i32 2
  %44 = load %struct.dev_info*, %struct.dev_info** %7, align 8
  %45 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hw_enable_wol(i32* %43, i32 %46, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @netdev_set_wol.net_addr, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hw_enable_wol(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
