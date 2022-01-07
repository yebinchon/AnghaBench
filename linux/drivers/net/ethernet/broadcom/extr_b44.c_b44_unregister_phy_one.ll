; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_unregister_phy_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_unregister_phy_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { %struct.mii_bus*, %struct.net_device* }
%struct.mii_bus = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_unregister_phy_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_unregister_phy_one(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  store %struct.b44* %0, %struct.b44** %2, align 8
  %5 = load %struct.b44*, %struct.b44** %2, align 8
  %6 = getelementptr inbounds %struct.b44, %struct.b44* %5, i32 0, i32 1
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.b44*, %struct.b44** %2, align 8
  %9 = getelementptr inbounds %struct.b44, %struct.b44* %8, i32 0, i32 0
  %10 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  store %struct.mii_bus* %10, %struct.mii_bus** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @phy_disconnect(i32 %13)
  %15 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %16 = call i32 @mdiobus_unregister(%struct.mii_bus* %15)
  %17 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %18 = call i32 @mdiobus_free(%struct.mii_bus* %17)
  ret void
}

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
