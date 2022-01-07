; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i64, i64 }
%struct.macb = type { i32 }

@MACB_WOL_HAS_MAGIC_PACKET = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i64 0, align 8
@MACB_WOL_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @macb_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.macb*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.macb* @netdev_priv(%struct.net_device* %6)
  store %struct.macb* %7, %struct.macb** %5, align 8
  %8 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.macb*, %struct.macb** %5, align 8
  %13 = getelementptr inbounds %struct.macb, %struct.macb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MACB_WOL_HAS_MAGIC_PACKET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load i64, i64* @WAKE_MAGIC, align 8
  %20 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.macb*, %struct.macb** %5, align 8
  %23 = getelementptr inbounds %struct.macb, %struct.macb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MACB_WOL_ENABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load i64, i64* @WAKE_MAGIC, align 8
  %30 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = or i64 %32, %29
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %28, %18
  br label %35

35:                                               ; preds = %34, %2
  ret void
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
