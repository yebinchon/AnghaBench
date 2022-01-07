; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.ravb_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @ravb_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.ravb_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ravb_private* %8, %struct.ravb_private** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAKE_MAGIC, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WAKE_MAGIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %30 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %32 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %36 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @device_set_wakeup_enable(i32* %34, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %19, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
