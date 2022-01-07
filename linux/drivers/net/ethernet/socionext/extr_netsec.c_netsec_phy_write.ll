; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.netsec_priv* }
%struct.netsec_priv = type { i32 }

@GMAC_REG_GDR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@GMAC_REG_GAR = common dso_local global i32 0, align 4
@NETSEC_GMAC_GAR_REG_SHIFT_PA = common dso_local global i32 0, align 4
@NETSEC_GMAC_GAR_REG_SHIFT_GR = common dso_local global i32 0, align 4
@NETSEC_GMAC_GAR_REG_GW = common dso_local global i32 0, align 4
@NETSEC_GMAC_GAR_REG_GB = common dso_local global i32 0, align 4
@GMAC_REG_SHIFT_CR_GAR = common dso_local global i32 0, align 4
@MII_PHYSID1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @netsec_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_phy_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netsec_priv*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.netsec_priv*, %struct.netsec_priv** %13, align 8
  store %struct.netsec_priv* %14, %struct.netsec_priv** %11, align 8
  %15 = load %struct.netsec_priv*, %struct.netsec_priv** %11, align 8
  %16 = load i32, i32* @GMAC_REG_GDR, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @netsec_mac_write(%struct.netsec_priv* %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %59

23:                                               ; preds = %4
  %24 = load %struct.netsec_priv*, %struct.netsec_priv** %11, align 8
  %25 = load i32, i32* @GMAC_REG_GAR, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NETSEC_GMAC_GAR_REG_SHIFT_PA, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @NETSEC_GMAC_GAR_REG_SHIFT_GR, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* @NETSEC_GMAC_GAR_REG_GW, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @NETSEC_GMAC_GAR_REG_GB, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.netsec_priv*, %struct.netsec_priv** %11, align 8
  %38 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netsec_clk_type(i32 %39)
  %41 = load i32, i32* @GMAC_REG_SHIFT_CR_GAR, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %36, %42
  %44 = call i64 @netsec_mac_write(%struct.netsec_priv* %24, i32 %25, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %23
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %59

49:                                               ; preds = %23
  %50 = load %struct.netsec_priv*, %struct.netsec_priv** %11, align 8
  %51 = load i32, i32* @GMAC_REG_GAR, align 4
  %52 = load i32, i32* @NETSEC_GMAC_GAR_REG_GB, align 4
  %53 = call i32 @netsec_mac_wait_while_busy(%struct.netsec_priv* %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MII_PHYSID1, align 4
  %57 = call i32 @netsec_phy_read(%struct.mii_bus* %54, i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %49, %46, %20
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @netsec_mac_write(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @netsec_clk_type(i32) #1

declare dso_local i32 @netsec_mac_wait_while_busy(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @netsec_phy_read(%struct.mii_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
