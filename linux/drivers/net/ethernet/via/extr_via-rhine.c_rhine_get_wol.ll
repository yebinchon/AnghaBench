; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.rhine_private = type { i32, i32, i32 }

@rqWOL = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @rhine_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rhine_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.rhine_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %6)
  store %struct.rhine_private* %7, %struct.rhine_private** %5, align 8
  %8 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %9 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @rqWOL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %17 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load i32, i32* @WAKE_PHY, align 4
  %20 = load i32, i32* @WAKE_MAGIC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @WAKE_UCAST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WAKE_MCAST, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WAKE_BCAST, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %31 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rhine_private*, %struct.rhine_private** %5, align 8
  %36 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_irq(i32* %36)
  br label %38

38:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
