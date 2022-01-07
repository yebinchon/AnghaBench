; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.nic = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@wol_magic = common dso_local global i32 0, align 4
@e100_configure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @e100_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.nic* @netdev_priv(%struct.net_device* %7)
  store %struct.nic* %8, %struct.nic** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WAKE_MAGIC, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.nic*, %struct.nic** %6, align 8
  %21 = getelementptr inbounds %struct.nic, %struct.nic* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @device_can_wakeup(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19, %13
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %59

29:                                               ; preds = %19
  %30 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @wol_magic, align 4
  %36 = load %struct.nic*, %struct.nic** %6, align 8
  %37 = getelementptr inbounds %struct.nic, %struct.nic* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %47

40:                                               ; preds = %29
  %41 = load i32, i32* @wol_magic, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.nic*, %struct.nic** %6, align 8
  %44 = getelementptr inbounds %struct.nic, %struct.nic* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %34
  %48 = load %struct.nic*, %struct.nic** %6, align 8
  %49 = getelementptr inbounds %struct.nic, %struct.nic* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_set_wakeup_enable(i32* %51, i32 %54)
  %56 = load %struct.nic*, %struct.nic** %6, align 8
  %57 = load i32, i32* @e100_configure, align 4
  %58 = call i32 @e100_exec_cb(%struct.nic* %56, i32* null, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %47, %26
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_can_wakeup(i32*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @e100_exec_cb(%struct.nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
