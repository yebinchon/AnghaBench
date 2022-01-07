; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_rhine_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.rhine_private = type { i32, i32, i32 }

@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@rqWOL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @rhine_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rhine_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.rhine_private*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %8)
  store %struct.rhine_private* %9, %struct.rhine_private** %6, align 8
  %10 = load i32, i32* @WAKE_PHY, align 4
  %11 = load i32, i32* @WAKE_MAGIC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WAKE_UCAST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAKE_MCAST, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @WAKE_BCAST, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %20 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @rqWOL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %28
  %40 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %41 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_irq(i32* %41)
  %43 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %47 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rhine_private*, %struct.rhine_private** %6, align 8
  %49 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock_irq(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %36, %25
  %52 = load i32, i32* %3, align 4
  ret i32 %52
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
