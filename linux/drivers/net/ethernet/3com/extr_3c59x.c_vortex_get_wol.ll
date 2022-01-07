; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_vortex_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_vortex_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.vortex_private = type { i64 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @vortex_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.vortex_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.vortex_private* @netdev_priv(%struct.net_device* %6)
  store %struct.vortex_private* %7, %struct.vortex_private** %5, align 8
  %8 = load %struct.vortex_private*, %struct.vortex_private** %5, align 8
  %9 = call i32 @VORTEX_PCI(%struct.vortex_private* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* @WAKE_MAGIC, align 4
  %14 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.vortex_private*, %struct.vortex_private** %5, align 8
  %19 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load i32, i32* @WAKE_MAGIC, align 4
  %24 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %11, %22, %12
  ret void
}

declare dso_local %struct.vortex_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @VORTEX_PCI(%struct.vortex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
