; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.bcm_sysport_priv = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@WAKE_FILTER = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @bcm_sysport_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.bcm_sysport_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcm_sysport_priv* %10, %struct.bcm_sysport_priv** %6, align 8
  %11 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %12 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load i32, i32* @WAKE_MAGIC, align 4
  %16 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @WAKE_FILTER, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = call i32 @device_can_wakeup(%struct.device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %93

26:                                               ; preds = %2
  %27 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %93

37:                                               ; preds = %26
  %38 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %46 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i32 %47, i32 %50, i32 4)
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = call i32 @device_set_wakeup_enable(%struct.device* %58, i32 1)
  %60 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %61 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %66 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @enable_irq_wake(i32 %67)
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %71 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  br label %87

72:                                               ; preds = %52
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = call i32 @device_set_wakeup_enable(%struct.device* %73, i32 0)
  %75 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %76 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %81 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @disable_irq_wake(i32 %82)
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %86 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %69
  %88 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %6, align 8
  %92 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %34, %23
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_can_wakeup(%struct.device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @device_set_wakeup_enable(%struct.device*, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
