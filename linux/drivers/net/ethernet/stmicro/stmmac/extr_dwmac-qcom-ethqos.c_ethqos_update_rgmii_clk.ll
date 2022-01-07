; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_ethqos_update_rgmii_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-qcom-ethqos.c_ethqos_update_rgmii_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_ethqos = type { i32, i32 }

@RGMII_1000_NOM_CLK_FREQ = common dso_local global i32 0, align 4
@RGMII_ID_MODE_100_LOW_SVS_CLK_FREQ = common dso_local global i32 0, align 4
@RGMII_ID_MODE_10_LOW_SVS_CLK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_ethqos*, i32)* @ethqos_update_rgmii_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ethqos_update_rgmii_clk(%struct.qcom_ethqos* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_ethqos*, align 8
  %4 = alloca i32, align 4
  store %struct.qcom_ethqos* %0, %struct.qcom_ethqos** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 128, label %6
    i32 129, label %10
    i32 130, label %14
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @RGMII_1000_NOM_CLK_FREQ, align 4
  %8 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  br label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @RGMII_ID_MODE_100_LOW_SVS_CLK_FREQ, align 4
  %12 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @RGMII_ID_MODE_10_LOW_SVS_CLK_FREQ, align 4
  %16 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %17 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %2, %14, %10, %6
  %19 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %20 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qcom_ethqos*, %struct.qcom_ethqos** %3, align 8
  %23 = getelementptr inbounds %struct.qcom_ethqos, %struct.qcom_ethqos* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_set_rate(i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
