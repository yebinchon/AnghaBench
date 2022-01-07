; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83867.c_dp83867_config_port_mirroring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83867.c_dp83867_config_port_mirroring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }
%struct.dp83867_private = type { i64 }

@DP83867_PORT_MIRROING_EN = common dso_local global i64 0, align 8
@DP83867_DEVADDR = common dso_local global i32 0, align 4
@DP83867_CFG4 = common dso_local global i32 0, align 4
@DP83867_CFG4_PORT_MIRROR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83867_config_port_mirroring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83867_config_port_mirroring(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.dp83867_private*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.dp83867_private*
  store %struct.dp83867_private* %7, %struct.dp83867_private** %3, align 8
  %8 = load %struct.dp83867_private*, %struct.dp83867_private** %3, align 8
  %9 = getelementptr inbounds %struct.dp83867_private, %struct.dp83867_private* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DP83867_PORT_MIRROING_EN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %15 = load i32, i32* @DP83867_DEVADDR, align 4
  %16 = load i32, i32* @DP83867_CFG4, align 4
  %17 = load i32, i32* @DP83867_CFG4_PORT_MIRROR_EN, align 4
  %18 = call i32 @phy_set_bits_mmd(%struct.phy_device* %14, i32 %15, i32 %16, i32 %17)
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %21 = load i32, i32* @DP83867_DEVADDR, align 4
  %22 = load i32, i32* @DP83867_CFG4, align 4
  %23 = load i32, i32* @DP83867_CFG4_PORT_MIRROR_EN, align 4
  %24 = call i32 @phy_clear_bits_mmd(%struct.phy_device* %20, i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %13
  ret i32 0
}

declare dso_local i32 @phy_set_bits_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_clear_bits_mmd(%struct.phy_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
