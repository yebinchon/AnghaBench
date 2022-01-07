; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@MDIO_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @cpmac_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmac_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %17, %3
  %9 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %10 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CPMAC_MDIO_ACCESS(i32 0)
  %13 = call i32 @cpmac_read(i32 %11, i32 %12)
  %14 = load i32, i32* @MDIO_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = call i32 (...) @cpu_relax()
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %21 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CPMAC_MDIO_ACCESS(i32 0)
  %24 = load i32, i32* @MDIO_BUSY, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @MDIO_REG(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @MDIO_PHY(i32 %28)
  %30 = or i32 %27, %29
  %31 = call i32 @cpmac_write(i32 %22, i32 %23, i32 %30)
  br label %32

32:                                               ; preds = %41, %19
  %33 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %34 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CPMAC_MDIO_ACCESS(i32 0)
  %37 = call i32 @cpmac_read(i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @MDIO_BUSY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 (...) @cpu_relax()
  br label %32

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @MDIO_DATA(i32 %44)
  ret i32 %45
}

declare dso_local i32 @cpmac_read(i32, i32) #1

declare dso_local i32 @CPMAC_MDIO_ACCESS(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @MDIO_REG(i32) #1

declare dso_local i32 @MDIO_PHY(i32) #1

declare dso_local i32 @MDIO_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
