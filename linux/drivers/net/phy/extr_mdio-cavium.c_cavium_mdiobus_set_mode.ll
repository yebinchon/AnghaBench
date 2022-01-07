; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-cavium.c_cavium_mdiobus_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-cavium.c_cavium_mdiobus_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cavium_mdiobus = type { i32, i64 }
%union.cvmx_smix_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SMI_CLK = common dso_local global i64 0, align 8
@C45 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cavium_mdiobus*, i32)* @cavium_mdiobus_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cavium_mdiobus_set_mode(%struct.cavium_mdiobus* %0, i32 %1) #0 {
  %3 = alloca %struct.cavium_mdiobus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_smix_clk, align 4
  store %struct.cavium_mdiobus* %0, %struct.cavium_mdiobus** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %3, align 8
  %8 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %3, align 8
  %14 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SMI_CLK, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @oct_mdio_readq(i64 %17)
  %19 = bitcast %union.cvmx_smix_clk* %5 to i32*
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @C45, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = bitcast %union.cvmx_smix_clk* %5 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = bitcast %union.cvmx_smix_clk* %5 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = bitcast %union.cvmx_smix_clk* %5 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %3, align 8
  %32 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SMI_CLK, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @oct_mdio_writeq(i32 %30, i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.cavium_mdiobus*, %struct.cavium_mdiobus** %3, align 8
  %39 = getelementptr inbounds %struct.cavium_mdiobus, %struct.cavium_mdiobus* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @oct_mdio_readq(i64) #1

declare dso_local i32 @oct_mdio_writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
