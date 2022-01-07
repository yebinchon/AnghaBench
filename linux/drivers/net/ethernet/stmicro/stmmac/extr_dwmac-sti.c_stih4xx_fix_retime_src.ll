; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_stih4xx_fix_retime_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_stih4xx_fix_retime_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_dwmac = type { i64, i64, i64, i32, i32, i64 }

@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@TX_RETIME_SRC_TXCLK = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RMII = common dso_local global i64 0, align 8
@TX_RETIME_SRC_PHYCLK = common dso_local global i64 0, align 8
@TX_RETIME_SRC_CLKGEN = common dso_local global i64 0, align 8
@DWMAC_50MHZ = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@DWMAC_125MHZ = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@DWMAC_25MHZ = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DWMAC_2_5MHZ = common dso_local global i64 0, align 8
@STIH4XX_RETIME_SRC_MASK = common dso_local global i32 0, align 4
@stih4xx_tx_retime_val = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @stih4xx_fix_retime_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stih4xx_fix_retime_src(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sti_dwmac*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.sti_dwmac*
  store %struct.sti_dwmac* %10, %struct.sti_dwmac** %5, align 8
  %11 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %12 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %15 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %18 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i64, i64* @TX_RETIME_SRC_TXCLK, align 8
  store i64 %23, i64* %6, align 8
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %26 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PHY_INTERFACE_MODE_RMII, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %32 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* @TX_RETIME_SRC_PHYCLK, align 8
  store i64 %36, i64* %6, align 8
  br label %40

37:                                               ; preds = %30
  %38 = load i64, i64* @TX_RETIME_SRC_CLKGEN, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* @DWMAC_50MHZ, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %37, %35
  br label %70

41:                                               ; preds = %24
  %42 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %43 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @IS_PHY_IF_MODE_RGMII(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @SPEED_1000, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @DWMAC_125MHZ, align 8
  store i64 %52, i64* %8, align 8
  br label %68

53:                                               ; preds = %47
  %54 = load i64, i64* @TX_RETIME_SRC_CLKGEN, align 8
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @SPEED_100, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @DWMAC_25MHZ, align 8
  store i64 %59, i64* %8, align 8
  br label %67

60:                                               ; preds = %53
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @SPEED_10, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @DWMAC_2_5MHZ, align 8
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %64, %60
  br label %67

67:                                               ; preds = %66, %58
  br label %68

68:                                               ; preds = %67, %51
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69, %40
  br label %71

71:                                               ; preds = %70, %22
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @TX_RETIME_SRC_CLKGEN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %80 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @clk_set_rate(i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %78, %75, %71
  %85 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %86 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* @STIH4XX_RETIME_SRC_MASK, align 4
  %90 = load i32*, i32** @stih4xx_tx_retime_val, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @regmap_update_bits(i32 %87, i64 %88, i32 %89, i32 %93)
  ret void
}

declare dso_local i64 @IS_PHY_IF_MODE_RGMII(i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
