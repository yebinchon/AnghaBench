; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-ipq806x.c_get_clk_div_rgmii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-ipq806x.c_get_clk_div_rgmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq806x_gmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@NSS_COMMON_CLK_DIV_RGMII_1000 = common dso_local global i32 0, align 4
@NSS_COMMON_CLK_DIV_RGMII_100 = common dso_local global i32 0, align 4
@NSS_COMMON_CLK_DIV_RGMII_10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Speed %dMbps not supported in RGMII\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq806x_gmac*, i32)* @get_clk_div_rgmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clk_div_rgmii(%struct.ipq806x_gmac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipq806x_gmac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.ipq806x_gmac* %0, %struct.ipq806x_gmac** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ipq806x_gmac*, %struct.ipq806x_gmac** %4, align 8
  %9 = getelementptr inbounds %struct.ipq806x_gmac, %struct.ipq806x_gmac* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %19 [
    i32 128, label %13
    i32 129, label %15
    i32 130, label %17
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @NSS_COMMON_CLK_DIV_RGMII_1000, align 4
  store i32 %14, i32* %7, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @NSS_COMMON_CLK_DIV_RGMII_100, align 4
  store i32 %16, i32* %7, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @NSS_COMMON_CLK_DIV_RGMII_10, align 4
  store i32 %18, i32* %7, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %17, %15, %13
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
