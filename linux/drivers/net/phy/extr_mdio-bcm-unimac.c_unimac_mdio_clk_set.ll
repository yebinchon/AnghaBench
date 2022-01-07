; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-unimac.c_unimac_mdio_clk_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bcm-unimac.c_unimac_mdio_clk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unimac_mdio_priv = type { i32, i32 }

@MDIO_CLK_DIV_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Incorrect MDIO clock frequency, ignoring\0A\00", align 1
@MDIO_CFG = common dso_local global i32 0, align 4
@MDIO_CLK_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unimac_mdio_priv*)* @unimac_mdio_clk_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unimac_mdio_clk_set(%struct.unimac_mdio_priv* %0) #0 {
  %2 = alloca %struct.unimac_mdio_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.unimac_mdio_priv* %0, %struct.unimac_mdio_priv** %2, align 8
  %6 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %2, align 8
  %7 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %2, align 8
  %13 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i64 250000000, i64* %3, align 8
  br label %22

17:                                               ; preds = %11
  %18 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %2, align 8
  %19 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @clk_get_rate(i32 %20)
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %2, align 8
  %25 = getelementptr inbounds %struct.unimac_mdio_priv, %struct.unimac_mdio_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %23, %28
  %30 = sub i64 %29, 1
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MDIO_CLK_DIV_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %58

39:                                               ; preds = %22
  %40 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %2, align 8
  %41 = load i32, i32* @MDIO_CFG, align 4
  %42 = call i32 @unimac_mdio_readl(%struct.unimac_mdio_priv* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @MDIO_CLK_DIV_MASK, align 4
  %44 = load i32, i32* @MDIO_CLK_DIV_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MDIO_CLK_DIV_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load %struct.unimac_mdio_priv*, %struct.unimac_mdio_priv** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @MDIO_CFG, align 4
  %57 = call i32 @unimac_mdio_writel(%struct.unimac_mdio_priv* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %39, %37, %10
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @unimac_mdio_readl(%struct.unimac_mdio_priv*, i32) #1

declare dso_local i32 @unimac_mdio_writel(%struct.unimac_mdio_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
