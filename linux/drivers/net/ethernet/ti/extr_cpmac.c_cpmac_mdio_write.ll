; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@MDIO_BUSY = common dso_local global i32 0, align 4
@MDIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @cpmac_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmac_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %18, %4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CPMAC_MDIO_ACCESS(i32 0)
  %14 = call i32 @cpmac_read(i32 %12, i32 %13)
  %15 = load i32, i32* @MDIO_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = call i32 (...) @cpu_relax()
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %22 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @CPMAC_MDIO_ACCESS(i32 0)
  %25 = load i32, i32* @MDIO_BUSY, align 4
  %26 = load i32, i32* @MDIO_WRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @MDIO_REG(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @MDIO_PHY(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @MDIO_DATA(i32 %34)
  %36 = or i32 %33, %35
  %37 = call i32 @cpmac_write(i32 %23, i32 %24, i32 %36)
  ret i32 0
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
