; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip_core.c_tulip_ethtool_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_tulip_core.c_tulip_ethtool_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.tulip_private = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @tulip_ethtool_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tulip_ethtool_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.tulip_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %7)
  store %struct.tulip_private* %8, %struct.tulip_private** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tulip_private*, %struct.tulip_private** %6, align 8
  %13 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %2
  %23 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tulip_private*, %struct.tulip_private** %6, align 8
  %27 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.tulip_private*, %struct.tulip_private** %6, align 8
  %30 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.tulip_private*, %struct.tulip_private** %6, align 8
  %34 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_set_wakeup_enable(i32* %32, i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %22, %19
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
