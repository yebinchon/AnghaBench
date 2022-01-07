; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_unregister_mdio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_unregister_mdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, i32, %struct.phy_device* }
%struct.phy_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netsec_priv*)* @netsec_unregister_mdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netsec_unregister_mdio(%struct.netsec_priv* %0) #0 {
  %2 = alloca %struct.netsec_priv*, align 8
  %3 = alloca %struct.phy_device*, align 8
  store %struct.netsec_priv* %0, %struct.netsec_priv** %2, align 8
  %4 = load %struct.netsec_priv*, %struct.netsec_priv** %2, align 8
  %5 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %4, i32 0, i32 2
  %6 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  store %struct.phy_device* %6, %struct.phy_device** %3, align 8
  %7 = load %struct.netsec_priv*, %struct.netsec_priv** %2, align 8
  %8 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_of_node(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = icmp ne %struct.phy_device* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = call i32 @phy_device_remove(%struct.phy_device* %16)
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = call i32 @phy_device_free(%struct.phy_device* %18)
  br label %20

20:                                               ; preds = %15, %12, %1
  %21 = load %struct.netsec_priv*, %struct.netsec_priv** %2, align 8
  %22 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mdiobus_unregister(i32 %23)
  ret void
}

declare dso_local i32 @dev_of_node(i32) #1

declare dso_local i32 @phy_device_remove(%struct.phy_device*) #1

declare dso_local i32 @phy_device_free(%struct.phy_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
