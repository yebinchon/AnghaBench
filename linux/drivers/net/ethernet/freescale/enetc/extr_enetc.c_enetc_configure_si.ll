; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_configure_si.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_configure_si.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_ndev_priv = type { i32, %struct.enetc_si* }
%struct.enetc_si = type { i64, i32, %struct.enetc_hw }
%struct.enetc_hw = type { i32 }

@ENETC_SICAR0 = common dso_local global i32 0, align 4
@ENETC_SICAR_RD_COHERENT = common dso_local global i32 0, align 4
@ENETC_SICAR_WR_COHERENT = common dso_local global i32 0, align 4
@ENETC_SICAR1 = common dso_local global i32 0, align 4
@ENETC_SICAR_MSI = common dso_local global i32 0, align 4
@ENETC_SIMR = common dso_local global i32 0, align 4
@ENETC_SIMR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_ndev_priv*)* @enetc_configure_si to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_configure_si(%struct.enetc_ndev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enetc_ndev_priv*, align 8
  %4 = alloca %struct.enetc_si*, align 8
  %5 = alloca %struct.enetc_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.enetc_ndev_priv* %0, %struct.enetc_ndev_priv** %3, align 8
  %7 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %8 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %7, i32 0, i32 1
  %9 = load %struct.enetc_si*, %struct.enetc_si** %8, align 8
  store %struct.enetc_si* %9, %struct.enetc_si** %4, align 8
  %10 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %11 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %10, i32 0, i32 2
  store %struct.enetc_hw* %11, %struct.enetc_hw** %5, align 8
  %12 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %13 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %14 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %13, i32 0, i32 1
  %15 = call i32 @enetc_setup_cbdr(%struct.enetc_hw* %12, i32* %14)
  %16 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %17 = load i32, i32* @ENETC_SICAR0, align 4
  %18 = load i32, i32* @ENETC_SICAR_RD_COHERENT, align 4
  %19 = load i32, i32* @ENETC_SICAR_WR_COHERENT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @enetc_wr(%struct.enetc_hw* %16, i32 %17, i32 %20)
  %22 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %23 = load i32, i32* @ENETC_SICAR1, align 4
  %24 = load i32, i32* @ENETC_SICAR_MSI, align 4
  %25 = call i32 @enetc_wr(%struct.enetc_hw* %22, i32 %23, i32 %24)
  %26 = load %struct.enetc_hw*, %struct.enetc_hw** %5, align 8
  %27 = load i32, i32* @ENETC_SIMR, align 4
  %28 = load i32, i32* @ENETC_SIMR_EN, align 4
  %29 = call i32 @enetc_wr(%struct.enetc_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %31 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %1
  %35 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %36 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %37 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @enetc_setup_default_rss_table(%struct.enetc_si* %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %1
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @enetc_setup_cbdr(%struct.enetc_hw*, i32*) #1

declare dso_local i32 @enetc_wr(%struct.enetc_hw*, i32, i32) #1

declare dso_local i32 @enetc_setup_default_rss_table(%struct.enetc_si*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
