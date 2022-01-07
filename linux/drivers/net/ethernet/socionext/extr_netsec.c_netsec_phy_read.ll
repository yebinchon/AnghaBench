; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.netsec_priv* }
%struct.netsec_priv = type { i32 }

@GMAC_REG_GAR = common dso_local global i32 0, align 4
@NETSEC_GMAC_GAR_REG_GB = common dso_local global i32 0, align 4
@NETSEC_GMAC_GAR_REG_SHIFT_PA = common dso_local global i32 0, align 4
@NETSEC_GMAC_GAR_REG_SHIFT_GR = common dso_local global i32 0, align 4
@GMAC_REG_SHIFT_CR_GAR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@GMAC_REG_GDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @netsec_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_phy_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netsec_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.netsec_priv*, %struct.netsec_priv** %12, align 8
  store %struct.netsec_priv* %13, %struct.netsec_priv** %8, align 8
  %14 = load %struct.netsec_priv*, %struct.netsec_priv** %8, align 8
  %15 = load i32, i32* @GMAC_REG_GAR, align 4
  %16 = load i32, i32* @NETSEC_GMAC_GAR_REG_GB, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NETSEC_GMAC_GAR_REG_SHIFT_PA, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NETSEC_GMAC_GAR_REG_SHIFT_GR, align 4
  %23 = shl i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load %struct.netsec_priv*, %struct.netsec_priv** %8, align 8
  %26 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netsec_clk_type(i32 %27)
  %29 = load i32, i32* @GMAC_REG_SHIFT_CR_GAR, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %24, %30
  %32 = call i64 @netsec_mac_write(%struct.netsec_priv* %14, i32 %15, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %3
  %38 = load %struct.netsec_priv*, %struct.netsec_priv** %8, align 8
  %39 = load i32, i32* @GMAC_REG_GAR, align 4
  %40 = load i32, i32* @NETSEC_GMAC_GAR_REG_GB, align 4
  %41 = call i32 @netsec_mac_wait_while_busy(%struct.netsec_priv* %38, i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %37
  %47 = load %struct.netsec_priv*, %struct.netsec_priv** %8, align 8
  %48 = load i32, i32* @GMAC_REG_GDR, align 4
  %49 = call i32 @netsec_mac_read(%struct.netsec_priv* %47, i32 %48, i32* %9)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %52, %44, %34
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @netsec_mac_write(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @netsec_clk_type(i32) #1

declare dso_local i32 @netsec_mac_wait_while_busy(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @netsec_mac_read(%struct.netsec_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
