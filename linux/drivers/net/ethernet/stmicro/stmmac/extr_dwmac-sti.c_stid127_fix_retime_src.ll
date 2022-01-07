; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_stid127_fix_retime_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sti.c_stid127_fix_retime_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_dwmac = type { i64, i64, i32, i32, i32 }

@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@STID127_ETH_SEL_INTERNAL_NOTEXT_TXCLK = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RMII = common dso_local global i64 0, align 8
@STID127_ETH_SEL_INTERNAL_NOTEXT_PHYCLK = common dso_local global i64 0, align 8
@DWMAC_50MHZ = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@DWMAC_125MHZ = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@DWMAC_25MHZ = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DWMAC_2_5MHZ = common dso_local global i64 0, align 8
@STID127_RETIME_SRC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @stid127_fix_retime_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stid127_fix_retime_src(i8* %0, i64 %1) #0 {
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
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %15 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @STID127_ETH_SEL_INTERNAL_NOTEXT_TXCLK, align 8
  store i64 %20, i64* %8, align 8
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %23 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PHY_INTERFACE_MODE_RMII, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %29 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* @STID127_ETH_SEL_INTERNAL_NOTEXT_PHYCLK, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @DWMAC_50MHZ, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %32, %27
  br label %65

36:                                               ; preds = %21
  %37 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %38 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @IS_PHY_IF_MODE_RGMII(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load i64, i64* @STID127_ETH_SEL_INTERNAL_NOTEXT_TXCLK, align 8
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @SPEED_1000, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @DWMAC_125MHZ, align 8
  store i64 %48, i64* %7, align 8
  br label %63

49:                                               ; preds = %42
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @SPEED_100, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @DWMAC_25MHZ, align 8
  store i64 %54, i64* %7, align 8
  br label %62

55:                                               ; preds = %49
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @SPEED_10, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* @DWMAC_2_5MHZ, align 8
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %59, %55
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %35
  br label %66

66:                                               ; preds = %65, %19
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %71 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @clk_set_rate(i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.sti_dwmac*, %struct.sti_dwmac** %5, align 8
  %77 = getelementptr inbounds %struct.sti_dwmac, %struct.sti_dwmac* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i32, i32* @STID127_RETIME_SRC_MASK, align 4
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @regmap_update_bits(i32 %78, i64 %79, i32 %80, i64 %81)
  ret void
}

declare dso_local i64 @IS_PHY_IF_MODE_RGMII(i64) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
