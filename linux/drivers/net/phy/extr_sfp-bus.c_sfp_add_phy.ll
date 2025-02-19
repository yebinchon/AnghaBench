; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_add_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_add_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp_bus = type { %struct.phy_device*, i32 }
%struct.phy_device = type { i32 }
%struct.sfp_upstream_ops = type { i32 (i32, %struct.phy_device.0*)* }
%struct.phy_device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfp_add_phy(%struct.sfp_bus* %0, %struct.phy_device* %1) #0 {
  %3 = alloca %struct.sfp_bus*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.sfp_upstream_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.sfp_bus* %0, %struct.sfp_bus** %3, align 8
  store %struct.phy_device* %1, %struct.phy_device** %4, align 8
  %7 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %8 = call %struct.sfp_upstream_ops* @sfp_get_upstream_ops(%struct.sfp_bus* %7)
  store %struct.sfp_upstream_ops* %8, %struct.sfp_upstream_ops** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %5, align 8
  %10 = icmp ne %struct.sfp_upstream_ops* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %5, align 8
  %13 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %12, i32 0, i32 0
  %14 = load i32 (i32, %struct.phy_device.0*)*, i32 (i32, %struct.phy_device.0*)** %13, align 8
  %15 = icmp ne i32 (i32, %struct.phy_device.0*)* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %5, align 8
  %18 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %17, i32 0, i32 0
  %19 = load i32 (i32, %struct.phy_device.0*)*, i32 (i32, %struct.phy_device.0*)** %18, align 8
  %20 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %21 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = bitcast %struct.phy_device* %23 to %struct.phy_device.0*
  %25 = call i32 %19(i32 %22, %struct.phy_device.0* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %16, %11, %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %32 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %31, i32 0, i32 0
  store %struct.phy_device* %30, %struct.phy_device** %32, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.sfp_upstream_ops* @sfp_get_upstream_ops(%struct.sfp_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
