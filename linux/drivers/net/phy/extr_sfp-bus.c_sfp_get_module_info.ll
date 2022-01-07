; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp_bus = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.ethtool_modinfo*)* }
%struct.ethtool_modinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfp_get_module_info(%struct.sfp_bus* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca %struct.sfp_bus*, align 8
  %4 = alloca %struct.ethtool_modinfo*, align 8
  store %struct.sfp_bus* %0, %struct.sfp_bus** %3, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %4, align 8
  %5 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %6 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, %struct.ethtool_modinfo*)*, i32 (i32, %struct.ethtool_modinfo*)** %8, align 8
  %10 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %11 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %4, align 8
  %14 = call i32 %9(i32 %12, %struct.ethtool_modinfo* %13)
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
