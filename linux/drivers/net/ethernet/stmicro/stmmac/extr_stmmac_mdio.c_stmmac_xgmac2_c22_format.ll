; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_xgmac2_c22_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_mdio.c_stmmac_xgmac2_c22_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MII_XGMAC_MAX_C22ADDR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MII_XGMAC_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@XGMAC_MDIO_C22P = common dso_local global i64 0, align 8
@MII_XGMAC_C22P_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*, i32, i32, i32*)* @stmmac_xgmac2_c22_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_xgmac2_c22_format(%struct.stmmac_priv* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MII_XGMAC_MAX_C22ADDR, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %71

24:                                               ; preds = %4
  %25 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %26 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @MII_XGMAC_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @readl_poll_timeout(i64 %30, i32 %31, i32 %37, i32 100, i32 10000)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %71

43:                                               ; preds = %24
  %44 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %45 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XGMAC_MDIO_C22P, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* @MII_XGMAC_C22P_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %60 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XGMAC_MDIO_C22P, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 31
  %69 = or i32 %66, %68
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %43, %40, %21
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
