; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_xgmac2_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_xgmac2_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.stmmac_priv = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@MII_XGMAC_BUSY = common dso_local global i32 0, align 4
@MII_ADDR_C45 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MII_XGMAC_SADDR = common dso_local global i32 0, align 4
@MII_XGMAC_WRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @stmmac_xgmac2_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_xgmac2_mdio_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.stmmac_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %19 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %10, align 8
  %21 = load %struct.net_device*, %struct.net_device** %10, align 8
  %22 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %21)
  store %struct.stmmac_priv* %22, %struct.stmmac_priv** %11, align 8
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %30 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @MII_XGMAC_BUSY, align 4
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MII_ADDR_C45, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %130

43:                                               ; preds = %4
  %44 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @stmmac_xgmac2_c22_format(%struct.stmmac_priv* %44, i32 %45, i32 %46, i32* %14)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %5, align 4
  br label %130

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %55 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %58 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %56, %62
  %64 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %65 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %63, %69
  %71 = load i32, i32* %16, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @MII_XGMAC_SADDR, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* @MII_XGMAC_WRITE, align 4
  %79 = load i32, i32* %16, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %16, align 4
  %81 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %82 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @MII_XGMAC_BUSY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @readl_poll_timeout(i64 %86, i32 %87, i32 %93, i32 100, i32 10000)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %53
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %130

99:                                               ; preds = %53
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %102 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = call i32 @writel(i32 %100, i64 %106)
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %110 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = zext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = call i32 @writel(i32 %108, i64 %114)
  %116 = load %struct.stmmac_priv*, %struct.stmmac_priv** %11, align 8
  %117 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @MII_XGMAC_BUSY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @readl_poll_timeout(i64 %121, i32 %122, i32 %128, i32 100, i32 10000)
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %99, %96, %50, %40
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @stmmac_xgmac2_c22_format(%struct.stmmac_priv*, i32, i32, i32*) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
