; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-sun4i.c_sun4i_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-sun4i.c_sun4i_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.sun4i_mdio_data* }
%struct.sun4i_mdio_data = type { i64 }

@EMAC_MAC_MADR_REG = common dso_local global i64 0, align 8
@EMAC_MAC_MCMD_REG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MDIO_TIMEOUT = common dso_local global i64 0, align 8
@EMAC_MAC_MIND_REG = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@EMAC_MAC_MRDD_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @sun4i_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sun4i_mdio_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %12, align 8
  store %struct.sun4i_mdio_data* %13, %struct.sun4i_mdio_data** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %8, align 8
  %19 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EMAC_MAC_MADR_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %8, align 8
  %25 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EMAC_MAC_MCMD_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 1, i64 %28)
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* @MDIO_TIMEOUT, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %49, %3
  %34 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %8, align 8
  %35 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EMAC_MAC_MIND_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @time_is_before_jiffies(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %65

49:                                               ; preds = %42
  %50 = call i32 @msleep(i32 1)
  br label %33

51:                                               ; preds = %33
  %52 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %8, align 8
  %53 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EMAC_MAC_MCMD_REG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %8, align 8
  %59 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EMAC_MAC_MRDD_REG, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @readl(i64 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %51, %46
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
