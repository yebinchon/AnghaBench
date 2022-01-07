; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-aspeed.c_aspeed_sdhci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-aspeed.c_aspeed_sdhci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.sdhci_host = type { i32 }
%struct.aspeed_sdhci = type { i32, i32 }
%struct.resource = type { i32 }

@aspeed_sdhci_pdata = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Configuring for slot %d\0A\00", align 1
@ASPEED_SDC_S0MMC8 = common dso_local global i32 0, align 4
@ASPEED_SDC_S1MMC8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to enable SDIO clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_sdhci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_sdhci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.aspeed_sdhci*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %10, i32* @aspeed_sdhci_pdata, i32 8)
  store %struct.sdhci_host* %11, %struct.sdhci_host** %6, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %13 = call i64 @IS_ERR(%struct.sdhci_host* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.sdhci_host* %16)
  store i32 %17, i32* %2, align 4
  br label %114

18:                                               ; preds = %1
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %20 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %19)
  store %struct.sdhci_pltfm_host* %20, %struct.sdhci_pltfm_host** %4, align 8
  %21 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %22 = call %struct.aspeed_sdhci* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %21)
  store %struct.aspeed_sdhci* %22, %struct.aspeed_sdhci** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_get_drvdata(i32 %26)
  %28 = load %struct.aspeed_sdhci*, %struct.aspeed_sdhci** %5, align 8
  %29 = getelementptr inbounds %struct.aspeed_sdhci, %struct.aspeed_sdhci* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %7, align 8
  %33 = load %struct.aspeed_sdhci*, %struct.aspeed_sdhci** %5, align 8
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = call i32 @aspeed_sdhci_calculate_slot(%struct.aspeed_sdhci* %33, %struct.resource* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %18
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %114

40:                                               ; preds = %18
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %114

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_info(%struct.TYPE_4__* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ASPEED_SDC_S0MMC8, align 4
  br label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @ASPEED_SDC_S1MMC8, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.aspeed_sdhci*, %struct.aspeed_sdhci** %5, align 8
  %61 = getelementptr inbounds %struct.aspeed_sdhci, %struct.aspeed_sdhci* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = call i32 @sdhci_get_of_property(%struct.platform_device* %62)
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call %struct.sdhci_host* @devm_clk_get(%struct.TYPE_4__* %65, i32* null)
  %67 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %68 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %67, i32 0, i32 0
  store %struct.sdhci_host* %66, %struct.sdhci_host** %68, align 8
  %69 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %70 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %69, i32 0, i32 0
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %70, align 8
  %72 = call i64 @IS_ERR(%struct.sdhci_host* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %76 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %75, i32 0, i32 0
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %76, align 8
  %78 = call i32 @PTR_ERR(%struct.sdhci_host* %77)
  store i32 %78, i32* %2, align 4
  br label %114

79:                                               ; preds = %58
  %80 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %81 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %80, i32 0, i32 0
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %81, align 8
  %83 = call i32 @clk_prepare_enable(%struct.sdhci_host* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(%struct.TYPE_4__* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %110

90:                                               ; preds = %79
  %91 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %92 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mmc_of_parse(i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %105

98:                                               ; preds = %90
  %99 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %100 = call i32 @sdhci_add_host(%struct.sdhci_host* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %105

104:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %114

105:                                              ; preds = %103, %97
  %106 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %107 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %106, i32 0, i32 0
  %108 = load %struct.sdhci_host*, %struct.sdhci_host** %107, align 8
  %109 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %108)
  br label %110

110:                                              ; preds = %105, %86
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = call i32 @sdhci_pltfm_free(%struct.platform_device* %111)
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %104, %74, %43, %38, %15
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.aspeed_sdhci* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @aspeed_sdhci_calculate_slot(%struct.aspeed_sdhci*, %struct.resource*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local %struct.sdhci_host* @devm_clk_get(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @mmc_of_parse(i32) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
