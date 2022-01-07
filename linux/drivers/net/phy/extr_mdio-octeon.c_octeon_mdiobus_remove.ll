; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-octeon.c_octeon_mdiobus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-octeon.c_octeon_mdiobus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cavium_mdiobus = type { i64, i32 }
%union.cvmx_smix_en = type { i64 }

@SMI_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @octeon_mdiobus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mdiobus_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cavium_mdiobus*, align 8
  %4 = alloca %union.cvmx_smix_en, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.cavium_mdiobus* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.cavium_mdiobus* %6, %struct.cavium_mdiobus** %3, align 8
  %7 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %3, align 8
  %8 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @mdiobus_unregister(i32 %9)
  %11 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %3, align 8
  %12 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mdiobus_free(i32 %13)
  %15 = bitcast %union.cvmx_smix_en* %4 to i64*
  store i64 0, i64* %15, align 8
  %16 = bitcast %union.cvmx_smix_en* %4 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %3, align 8
  %19 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SMI_EN, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @oct_mdio_writeq(i64 %17, i64 %22)
  ret i32 0
}

declare dso_local %struct.cavium_mdiobus* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @mdiobus_free(i32) #1

declare dso_local i32 @oct_mdio_writeq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
