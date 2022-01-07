; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sunxi.c_sun7i_gmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sunxi.c_sun7i_gmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sunxi_priv_data = type { i64, i32, i32, i64 }

@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@SUN7I_GMAC_GMII_RGMII_RATE = common dso_local global i32 0, align 4
@SUN7I_GMAC_MII_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*)* @sun7i_gmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun7i_gmac_init(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sunxi_priv_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sunxi_priv_data*
  store %struct.sunxi_priv_data* %9, %struct.sunxi_priv_data** %6, align 8
  %10 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %11 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %16 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @regulator_enable(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %26 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %32 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SUN7I_GMAC_GMII_RGMII_RATE, align 4
  %35 = call i32 @clk_set_rate(i32 %33, i32 %34)
  %36 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %37 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_prepare_enable(i32 %38)
  %40 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %41 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  br label %57

42:                                               ; preds = %24
  %43 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %44 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SUN7I_GMAC_MII_RATE, align 4
  %47 = call i32 @clk_set_rate(i32 %45, i32 %46)
  %48 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %49 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_prepare(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %30
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_prepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
