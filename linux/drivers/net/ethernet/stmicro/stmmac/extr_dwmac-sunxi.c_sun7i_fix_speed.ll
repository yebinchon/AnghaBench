; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sunxi.c_sun7i_fix_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sunxi.c_sun7i_fix_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_priv_data = type { i64, i32, i32 }

@PHY_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@SUN7I_GMAC_GMII_RGMII_RATE = common dso_local global i32 0, align 4
@SUN7I_GMAC_MII_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sun7i_fix_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun7i_fix_speed(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sunxi_priv_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.sunxi_priv_data*
  store %struct.sunxi_priv_data* %7, %struct.sunxi_priv_data** %5, align 8
  %8 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %9 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PHY_INTERFACE_MODE_GMII, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %16 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %21 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable(i32 %22)
  %24 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %25 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %28 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_unprepare(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 1000
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %35 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SUN7I_GMAC_GMII_RGMII_RATE, align 4
  %38 = call i32 @clk_set_rate(i32 %36, i32 %37)
  %39 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %40 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_prepare_enable(i32 %41)
  %43 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %44 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %43, i32 0, i32 1
  store i32 1, i32* %44, align 8
  br label %55

45:                                               ; preds = %26
  %46 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %47 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SUN7I_GMAC_MII_RATE, align 4
  %50 = call i32 @clk_set_rate(i32 %48, i32 %49)
  %51 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %52 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_prepare(i32 %53)
  br label %55

55:                                               ; preds = %13, %45, %33
  ret void
}

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_prepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
