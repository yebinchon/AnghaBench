; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mt7621_gmac0_rgmii_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mt7621_gmac0_rgmii_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, i32 }

@ETHSYS_SYSCFG = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_TRGMII = common dso_local global i64 0, align 8
@SYSCFG_DRAM_TYPE_DDR2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TRGMII mode with DDR2 memory is not supported!\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETHSYS_TRGMII_MT7621_DDR_PLL = common dso_local global i32 0, align 4
@ETHSYS_CLKCFG0 = common dso_local global i32 0, align 4
@ETHSYS_TRGMII_MT7621_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*, i64)* @mt7621_gmac0_rgmii_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_gmac0_rgmii_adjust(%struct.mtk_eth* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_eth*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %8 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ETHSYS_SYSCFG, align 4
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %6)
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @PHY_INTERFACE_MODE_TRGMII, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SYSCFG_DRAM_TYPE_DDR2, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %43

27:                                               ; preds = %15, %2
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @PHY_INTERFACE_MODE_TRGMII, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ETHSYS_TRGMII_MT7621_DDR_PLL, align 4
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  store i32 %35, i32* %6, align 4
  %36 = load %struct.mtk_eth*, %struct.mtk_eth** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ETHSYS_CLKCFG0, align 4
  %40 = load i32, i32* @ETHSYS_TRGMII_MT7621_MASK, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %34, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
