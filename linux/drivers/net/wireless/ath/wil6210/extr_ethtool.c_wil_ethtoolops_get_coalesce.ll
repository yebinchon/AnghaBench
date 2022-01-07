; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_ethtool.c_wil_ethtoolops_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_ethtool.c_wil_ethtoolops_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ethtoolops_get_coalesce\0A\00", align 1
@RGF_DMA_ITR_TX_CNT_CTL = common dso_local global i32 0, align 4
@BIT_DMA_ITR_TX_CNT_CTL_EN = common dso_local global i32 0, align 4
@RGF_DMA_ITR_TX_CNT_TRSH = common dso_local global i32 0, align 4
@RGF_DMA_ITR_RX_CNT_CTL = common dso_local global i32 0, align 4
@BIT_DMA_ITR_RX_CNT_CTL_EN = common dso_local global i32 0, align 4
@RGF_DMA_ITR_RX_CNT_TRSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @wil_ethtoolops_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_ethtoolops_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.wil6210_priv* @ndev_to_wil(%struct.net_device* %12)
  store %struct.wil6210_priv* %13, %struct.wil6210_priv** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %15 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %17 = call i32 @wil_pm_runtime_get(%struct.wil6210_priv* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %24 = load i32, i32* @RGF_DMA_ITR_TX_CNT_CTL, align 4
  %25 = call i32 @wil_r(%struct.wil6210_priv* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BIT_DMA_ITR_TX_CNT_CTL_EN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %32 = load i32, i32* @RGF_DMA_ITR_TX_CNT_TRSH, align 4
  %33 = call i32 @wil_r(%struct.wil6210_priv* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %36 = load i32, i32* @RGF_DMA_ITR_RX_CNT_CTL, align 4
  %37 = call i32 @wil_r(%struct.wil6210_priv* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @BIT_DMA_ITR_RX_CNT_CTL_EN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %44 = load i32, i32* @RGF_DMA_ITR_RX_CNT_TRSH, align 4
  %45 = call i32 @wil_r(%struct.wil6210_priv* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %48 = call i32 @wil_pm_runtime_put(%struct.wil6210_priv* %47)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %46, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.wil6210_priv* @ndev_to_wil(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_pm_runtime_get(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_r(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @wil_pm_runtime_put(%struct.wil6210_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
