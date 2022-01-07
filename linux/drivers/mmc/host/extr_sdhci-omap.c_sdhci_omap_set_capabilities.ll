; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { %struct.device* }
%struct.device = type { i32 }
%struct.regulator = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"vqmmc\00", align 1
@SDHCI_OMAP_CAPA = common dso_local global i32 0, align 4
@CAPA_VS18 = common dso_local global i32 0, align 4
@CAPA_VS30 = common dso_local global i32 0, align 4
@CAPA_VS33 = common dso_local global i32 0, align 4
@IOV_3V3 = common dso_local global i32 0, align 4
@IOV_1V8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_omap_host*)* @sdhci_omap_set_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_omap_set_capabilities(%struct.sdhci_omap_host* %0) #0 {
  %2 = alloca %struct.sdhci_omap_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regulator*, align 8
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %2, align 8
  %8 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.regulator* @regulator_get(%struct.device* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %11, %struct.regulator** %6, align 8
  %12 = load %struct.regulator*, %struct.regulator** %6, align 8
  %13 = call i64 @IS_ERR(%struct.regulator* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.regulator*, %struct.regulator** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.regulator* %16)
  store i32 %17, i32* %4, align 4
  br label %54

18:                                               ; preds = %1
  %19 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %2, align 8
  %20 = load i32, i32* @SDHCI_OMAP_CAPA, align 4
  %21 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @CAPA_VS18, align 4
  %23 = load i32, i32* @CAPA_VS30, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CAPA_VS33, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.regulator*, %struct.regulator** %6, align 8
  %31 = load i32, i32* @IOV_3V3, align 4
  %32 = load i32, i32* @IOV_3V3, align 4
  %33 = call i64 @regulator_is_supported_voltage(%struct.regulator* %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load i32, i32* @CAPA_VS33, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %18
  %40 = load %struct.regulator*, %struct.regulator** %6, align 8
  %41 = load i32, i32* @IOV_1V8, align 4
  %42 = load i32, i32* @IOV_1V8, align 4
  %43 = call i64 @regulator_is_supported_voltage(%struct.regulator* %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @CAPA_VS18, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %2, align 8
  %51 = load i32, i32* @SDHCI_OMAP_CAPA, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %15
  %55 = load %struct.regulator*, %struct.regulator** %6, align 8
  %56 = call i32 @regulator_put(%struct.regulator* %55)
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.regulator* @regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local i64 @regulator_is_supported_voltage(%struct.regulator*, i32, i32) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i32) #1

declare dso_local i32 @regulator_put(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
