; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_gmac0_rgmii_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_gmac0_rgmii_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, i32*, i32 }

@SPEED_1000 = common dso_local global i32 0, align 4
@INTF_MODE_RGMII_1000 = common dso_local global i32 0, align 4
@INTF_MODE_RGMII_10_100 = common dso_local global i32 0, align 4
@INTF_MODE = common dso_local global i32 0, align 4
@ETHSYS_CLKCFG0 = common dso_local global i32 0, align 4
@ETHSYS_TRGMII_CLK_SEL362_5 = common dso_local global i32 0, align 4
@MTK_CLK_TRGPLL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to set trgmii pll: %d\0A\00", align 1
@RCK_CTRL_RGMII_1000 = common dso_local global i32 0, align 4
@RCK_CTRL_RGMII_10_100 = common dso_local global i32 0, align 4
@TRGMII_RCK_CTRL = common dso_local global i32 0, align 4
@TCK_CTRL_RGMII_1000 = common dso_local global i32 0, align 4
@TCK_CTRL_RGMII_10_100 = common dso_local global i32 0, align 4
@TRGMII_TCK_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_eth*, i32)* @mtk_gmac0_rgmii_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_gmac0_rgmii_adjust(%struct.mtk_eth* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SPEED_1000, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @INTF_MODE_RGMII_1000, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @INTF_MODE_RGMII_10_100, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @INTF_MODE, align 4
  %19 = call i32 @mtk_w32(%struct.mtk_eth* %16, i32 %17, i32 %18)
  %20 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ETHSYS_CLKCFG0, align 4
  %24 = load i32, i32* @ETHSYS_TRGMII_CLK_SEL362_5, align 4
  %25 = load i32, i32* @ETHSYS_TRGMII_CLK_SEL362_5, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SPEED_1000, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 250000000, i32 500000000
  store i32 %31, i32* %5, align 4
  %32 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @MTK_CLK_TRGPLL, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @clk_set_rate(i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %14
  %43 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %44 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %14
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SPEED_1000, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @RCK_CTRL_RGMII_1000, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @RCK_CTRL_RGMII_10_100, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %5, align 4
  %58 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @TRGMII_RCK_CTRL, align 4
  %61 = call i32 @mtk_w32(%struct.mtk_eth* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SPEED_1000, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @TCK_CTRL_RGMII_1000, align 4
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @TCK_CTRL_RGMII_10_100, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %5, align 4
  %71 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @TRGMII_TCK_CTRL, align 4
  %74 = call i32 @mtk_w32(%struct.mtk_eth* %71, i32 %72, i32 %73)
  ret void
}

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
