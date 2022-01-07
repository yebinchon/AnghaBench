; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c___mdiobus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c___mdiobus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { {}*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mdiobus_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %9 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %8, i32 0, i32 1
  %10 = call i32 @mutex_is_locked(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %16 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.mii_bus*, i32, i32)**
  %18 = load i32 (%struct.mii_bus*, i32, i32)*, i32 (%struct.mii_bus*, i32, i32)** %17, align 8
  %19 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 %18(%struct.mii_bus* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @trace_mdio_access(%struct.mii_bus* %23, i32 1, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @trace_mdio_access(%struct.mii_bus*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
