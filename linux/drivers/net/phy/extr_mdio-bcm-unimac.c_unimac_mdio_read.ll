; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-unimac.c_unimac_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-unimac.c_unimac_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.unimac_mdio_priv* }
%struct.unimac_mdio_priv = type { i32 (i32)*, i32 }

@MDIO_RD = common dso_local global i32 0, align 4
@MDIO_PMD_SHIFT = common dso_local global i32 0, align 4
@MDIO_REG_SHIFT = common dso_local global i32 0, align 4
@MDIO_CMD = common dso_local global i32 0, align 4
@MDIO_READ_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @unimac_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unimac_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.unimac_mdio_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 1
  %13 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %12, align 8
  store %struct.unimac_mdio_priv* %13, %struct.unimac_mdio_priv** %8, align 8
  %14 = load i32, i32* @MDIO_RD, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MDIO_PMD_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MDIO_REG_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %8, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MDIO_CMD, align 4
  %26 = call i32 @unimac_mdio_writel(%struct.unimac_mdio_priv* %23, i32 %24, i32 %25)
  %27 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %8, align 8
  %28 = call i32 @unimac_mdio_start(%struct.unimac_mdio_priv* %27)
  %29 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %8, align 8
  %30 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %8, align 8
  %33 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %62

40:                                               ; preds = %3
  %41 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %8, align 8
  %42 = load i32, i32* @MDIO_CMD, align 4
  %43 = call i32 @unimac_mdio_readl(%struct.unimac_mdio_priv* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %45 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @MDIO_READ_FAIL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %62

59:                                               ; preds = %51, %40
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 65535
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %56, %38
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @unimac_mdio_writel(%struct.unimac_mdio_priv*, i32, i32) #1

declare dso_local i32 @unimac_mdio_start(%struct.unimac_mdio_priv*) #1

declare dso_local i32 @unimac_mdio_readl(%struct.unimac_mdio_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
