; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_init_pinctrl_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_init_pinctrl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdhci_tegra = type { i32, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [27 x i8] c"No pinctrl info, err: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sdmmc-1v8-drv\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"sdmmc-3v3-drv\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sdmmc-3v3\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Missing 3.3V pad state, err: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sdmmc-1v8\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Missing 1.8V pad state, err: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sdhci_tegra*)* @tegra_sdhci_init_pinctrl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sdhci_init_pinctrl_info(%struct.device* %0, %struct.sdhci_tegra* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sdhci_tegra*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sdhci_tegra* %1, %struct.sdhci_tegra** %5, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = call i32* @devm_pinctrl_get(%struct.device* %6)
  %8 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %9 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %8, i32 0, i32 2
  store i32* %7, i32** %9, align 8
  %10 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %11 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @IS_ERR(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %18 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @PTR_ERR(i32* %19)
  %21 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 -1, i32* %3, align 4
  br label %115

22:                                               ; preds = %2
  %23 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %24 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i8* @pinctrl_lookup_state(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %29 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %31 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %22
  %36 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %37 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %45 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %44, i32 0, i32 5
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %35
  br label %47

47:                                               ; preds = %46, %22
  %48 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %49 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i8* @pinctrl_lookup_state(i32* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %54 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %56 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @IS_ERR(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %47
  %61 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %62 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @PTR_ERR(i32* %63)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %70 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %69, i32 0, i32 4
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %68, %60
  br label %72

72:                                               ; preds = %71, %47
  %73 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %74 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i8* @pinctrl_lookup_state(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %79 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %78, i32 0, i32 3
  store i32* %77, i32** %79, align 8
  %80 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %81 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @IS_ERR(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %72
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %88 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @PTR_ERR(i32* %89)
  %91 = call i32 @dev_warn(%struct.device* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  store i32 -1, i32* %3, align 4
  br label %115

92:                                               ; preds = %72
  %93 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %94 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call i8* @pinctrl_lookup_state(i32* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %99 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %101 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @IS_ERR(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %92
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %108 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @PTR_ERR(i32* %109)
  %111 = call i32 @dev_warn(%struct.device* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  store i32 -1, i32* %3, align 4
  br label %115

112:                                              ; preds = %92
  %113 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %114 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %105, %85, %15
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @pinctrl_lookup_state(i32*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
