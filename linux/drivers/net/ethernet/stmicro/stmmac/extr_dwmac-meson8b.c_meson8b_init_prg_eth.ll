; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-meson8b.c_meson8b_init_prg_eth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-meson8b.c_meson8b_init_prg_eth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson8b_dwmac = type { i32, i32, i32, i32 }

@PRG_ETH0 = common dso_local global i32 0, align 4
@PRG_ETH0_INVERTED_RMII_CLK = common dso_local global i32 0, align 4
@PRG_ETH0_TXDLY_MASK = common dso_local global i32 0, align 4
@PRG_ETH0_TXDLY_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to set RGMII TX clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to enable the RGMII TX clock\0A\00", align 1
@clk_disable_unprepare = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unsupported phy-mode %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PRG_ETH0_TX_AND_PHY_REF_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson8b_dwmac*)* @meson8b_init_prg_eth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson8b_init_prg_eth(%struct.meson8b_dwmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson8b_dwmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.meson8b_dwmac* %0, %struct.meson8b_dwmac** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %7 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %72 [
    i32 132, label %9
    i32 130, label %9
    i32 131, label %14
    i32 129, label %14
    i32 128, label %62
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %11 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %1, %1, %9
  %15 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %16 = load i32, i32* @PRG_ETH0, align 4
  %17 = load i32, i32* @PRG_ETH0_INVERTED_RMII_CLK, align 4
  %18 = call i32 @meson8b_dwmac_mask_bits(%struct.meson8b_dwmac* %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %20 = load i32, i32* @PRG_ETH0, align 4
  %21 = load i32, i32* @PRG_ETH0_TXDLY_MASK, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PRG_ETH0_TXDLY_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = call i32 @meson8b_dwmac_mask_bits(%struct.meson8b_dwmac* %19, i32 %20, i32 %21, i32 %24)
  %26 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %27 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_set_rate(i32 %28, i32 125000000)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %14
  %33 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %34 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %89

38:                                               ; preds = %14
  %39 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %40 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_prepare_enable(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %47 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %89

51:                                               ; preds = %38
  %52 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %53 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @clk_disable_unprepare, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to void (i8*)*
  %58 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %59 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @devm_add_action_or_reset(i32 %54, void (i8*)* %57, i32 %60)
  br label %83

62:                                               ; preds = %1
  %63 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %64 = load i32, i32* @PRG_ETH0, align 4
  %65 = load i32, i32* @PRG_ETH0_INVERTED_RMII_CLK, align 4
  %66 = load i32, i32* @PRG_ETH0_INVERTED_RMII_CLK, align 4
  %67 = call i32 @meson8b_dwmac_mask_bits(%struct.meson8b_dwmac* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %69 = load i32, i32* @PRG_ETH0, align 4
  %70 = load i32, i32* @PRG_ETH0_TXDLY_MASK, align 4
  %71 = call i32 @meson8b_dwmac_mask_bits(%struct.meson8b_dwmac* %68, i32 %69, i32 %70, i32 0)
  br label %83

72:                                               ; preds = %1
  %73 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %74 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %77 = getelementptr inbounds %struct.meson8b_dwmac, %struct.meson8b_dwmac* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @phy_modes(i32 %78)
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %89

83:                                               ; preds = %62, %51
  %84 = load %struct.meson8b_dwmac*, %struct.meson8b_dwmac** %3, align 8
  %85 = load i32, i32* @PRG_ETH0, align 4
  %86 = load i32, i32* @PRG_ETH0_TX_AND_PHY_REF_CLK, align 4
  %87 = load i32, i32* @PRG_ETH0_TX_AND_PHY_REF_CLK, align 4
  %88 = call i32 @meson8b_dwmac_mask_bits(%struct.meson8b_dwmac* %84, i32 %85, i32 %86, i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %83, %72, %45, %32
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @meson8b_dwmac_mask_bits(%struct.meson8b_dwmac*, i32, i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(i32, void (i8*)*, i32) #1

declare dso_local i32 @phy_modes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
