; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-sun4i.c_sun4i_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-sun4i.c_sun4i_mdio_write.c"
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
@EMAC_MAC_MWTD_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @sun4i_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sun4i_mdio_data*, align 8
  %11 = alloca i64, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %13, align 8
  store %struct.sun4i_mdio_data* %14, %struct.sun4i_mdio_data** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 8
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %10, align 8
  %20 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EMAC_MAC_MADR_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %10, align 8
  %26 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EMAC_MAC_MCMD_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 1, i64 %29)
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @MDIO_TIMEOUT, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %50, %4
  %35 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %10, align 8
  %36 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EMAC_MAC_MIND_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @time_is_before_jiffies(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %66

50:                                               ; preds = %43
  %51 = call i32 @msleep(i32 1)
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %10, align 8
  %54 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EMAC_MAC_MCMD_REG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 0, i64 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.sun4i_mdio_data*, %struct.sun4i_mdio_data** %10, align 8
  %61 = getelementptr inbounds %struct.sun4i_mdio_data, %struct.sun4i_mdio_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EMAC_MAC_MWTD_REG, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %52, %47
  %67 = load i32, i32* %5, align 4
  ret i32 %67
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
