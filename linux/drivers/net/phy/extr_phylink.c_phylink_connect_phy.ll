; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_connect_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_connect_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.phy_device = type { i64 }

@PHY_INTERFACE_MODE_NA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phylink_connect_phy(%struct.phylink* %0, %struct.phy_device* %1) #0 {
  %3 = alloca %struct.phylink*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.phylink* %0, %struct.phylink** %3, align 8
  store %struct.phy_device* %1, %struct.phy_device** %4, align 8
  %5 = load %struct.phylink*, %struct.phylink** %3, align 8
  %6 = getelementptr inbounds %struct.phylink, %struct.phylink* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_INTERFACE_MODE_NA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.phylink*, %struct.phylink** %3, align 8
  %15 = getelementptr inbounds %struct.phylink, %struct.phylink* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.phylink*, %struct.phylink** %3, align 8
  %17 = getelementptr inbounds %struct.phylink, %struct.phylink* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.phylink*, %struct.phylink** %3, align 8
  %20 = getelementptr inbounds %struct.phylink, %struct.phylink* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  br label %22

22:                                               ; preds = %10, %2
  %23 = load %struct.phylink*, %struct.phylink** %3, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = load %struct.phylink*, %struct.phylink** %3, align 8
  %26 = getelementptr inbounds %struct.phylink, %struct.phylink* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @__phylink_connect_phy(%struct.phylink* %23, %struct.phy_device* %24, i64 %27)
  ret i32 %28
}

declare dso_local i32 @__phylink_connect_phy(%struct.phylink*, %struct.phy_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
