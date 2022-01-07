; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-oxnas.c_oxnas_dwmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-oxnas.c_oxnas_dwmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.oxnas_dwmac = type { i32, i32, i32 }

@OXNAS_DWMAC_CTRL_REGOFFSET = common dso_local global i32 0, align 4
@DWMAC_CKEN_GTX = common dso_local global i32 0, align 4
@DWMAC_SIMPLE_MUX = common dso_local global i32 0, align 4
@DWMAC_AUTO_TX_SOURCE = common dso_local global i32 0, align 4
@DWMAC_CKEN_TX_OUT = common dso_local global i32 0, align 4
@DWMAC_CKEN_TXN_OUT = common dso_local global i32 0, align 4
@DWMAC_CKEN_TX_IN = common dso_local global i32 0, align 4
@DWMAC_CKEN_RX_OUT = common dso_local global i32 0, align 4
@DWMAC_CKEN_RXN_OUT = common dso_local global i32 0, align 4
@DWMAC_CKEN_RX_IN = common dso_local global i32 0, align 4
@OXNAS_DWMAC_DELAY_REGOFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*)* @oxnas_dwmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_dwmac_init(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.oxnas_dwmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.oxnas_dwmac*
  store %struct.oxnas_dwmac* %10, %struct.oxnas_dwmac** %6, align 8
  %11 = load %struct.oxnas_dwmac*, %struct.oxnas_dwmac** %6, align 8
  %12 = getelementptr inbounds %struct.oxnas_dwmac, %struct.oxnas_dwmac* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_reset(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.oxnas_dwmac*, %struct.oxnas_dwmac** %6, align 8
  %21 = getelementptr inbounds %struct.oxnas_dwmac, %struct.oxnas_dwmac* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_prepare_enable(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %90

28:                                               ; preds = %19
  %29 = load %struct.oxnas_dwmac*, %struct.oxnas_dwmac** %6, align 8
  %30 = getelementptr inbounds %struct.oxnas_dwmac, %struct.oxnas_dwmac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OXNAS_DWMAC_CTRL_REGOFFSET, align 4
  %33 = call i32 @regmap_read(i32 %31, i32 %32, i32* %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.oxnas_dwmac*, %struct.oxnas_dwmac** %6, align 8
  %38 = getelementptr inbounds %struct.oxnas_dwmac, %struct.oxnas_dwmac* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_disable_unprepare(i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %90

42:                                               ; preds = %28
  %43 = load i32, i32* @DWMAC_CKEN_GTX, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = load i32, i32* @DWMAC_SIMPLE_MUX, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* @DWMAC_AUTO_TX_SOURCE, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = or i32 %47, %49
  %51 = load i32, i32* @DWMAC_CKEN_TX_OUT, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @DWMAC_CKEN_TXN_OUT, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* @DWMAC_CKEN_TX_IN, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* @DWMAC_CKEN_RX_OUT, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = or i32 %59, %61
  %63 = load i32, i32* @DWMAC_CKEN_RXN_OUT, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = or i32 %62, %64
  %66 = load i32, i32* @DWMAC_CKEN_RX_IN, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = or i32 %65, %67
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.oxnas_dwmac*, %struct.oxnas_dwmac** %6, align 8
  %72 = getelementptr inbounds %struct.oxnas_dwmac, %struct.oxnas_dwmac* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @OXNAS_DWMAC_CTRL_REGOFFSET, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @regmap_write(i32 %73, i32 %74, i32 %75)
  %77 = call i32 @DWMAC_TX_VARDELAY(i32 4)
  %78 = call i32 @DWMAC_TXN_VARDELAY(i32 2)
  %79 = or i32 %77, %78
  %80 = call i32 @DWMAC_RX_VARDELAY(i32 10)
  %81 = or i32 %79, %80
  %82 = call i32 @DWMAC_RXN_VARDELAY(i32 8)
  %83 = or i32 %81, %82
  store i32 %83, i32* %7, align 4
  %84 = load %struct.oxnas_dwmac*, %struct.oxnas_dwmac** %6, align 8
  %85 = getelementptr inbounds %struct.oxnas_dwmac, %struct.oxnas_dwmac* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @OXNAS_DWMAC_DELAY_REGOFFSET, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @regmap_write(i32 %86, i32 %87, i32 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %42, %36, %26, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @device_reset(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DWMAC_TX_VARDELAY(i32) #1

declare dso_local i32 @DWMAC_TXN_VARDELAY(i32) #1

declare dso_local i32 @DWMAC_RX_VARDELAY(i32) #1

declare dso_local i32 @DWMAC_RXN_VARDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
