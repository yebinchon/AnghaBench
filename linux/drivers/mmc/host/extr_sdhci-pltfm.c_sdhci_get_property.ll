; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pltfm.c_sdhci_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pltfm.c_sdhci_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sdhci_host = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"sdhci,auto-cmd12\00", align 1
@SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"sdhci,1-bit-only\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@SDHCI_QUIRK_FORCE_1_BIT_DATA = common dso_local global i32 0, align 4
@SDHCI_QUIRK_INVERTED_WRITE_PROTECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"broken-cd\00", align 1
@SDHCI_QUIRK_BROKEN_CARD_DETECTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"no-1-8-v\00", align 1
@SDHCI_QUIRK2_NO_1_8_V = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"keep-power-in-suspend\00", align 1
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"enable-sdio-wakeup\00", align 1
@MMC_PM_WAKE_SDIO_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_get_property(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %4, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %5, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i64 @device_property_present(%struct.device* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12, align 4
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i64 @device_property_present(%struct.device* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i64 @device_property_read_u32(%struct.device* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %22
  %34 = load i32, i32* @SDHCI_QUIRK_FORCE_1_BIT_DATA, align 4
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %36 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %30, %26
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i64 @sdhci_wp_inverted(%struct.device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @SDHCI_QUIRK_INVERTED_WRITE_PROTECT, align 4
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = call i64 @device_property_present(%struct.device* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* @SDHCI_QUIRK_BROKEN_CARD_DETECTION, align 4
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %56 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %49
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i64 @device_property_present(%struct.device* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @SDHCI_QUIRK2_NO_1_8_V, align 4
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %66 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %71 = call i32 @sdhci_get_compatibility(%struct.platform_device* %70)
  %72 = load %struct.device*, %struct.device** %3, align 8
  %73 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %74 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %73, i32 0, i32 0
  %75 = call i64 @device_property_read_u32(%struct.device* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %74)
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = call i64 @device_property_present(%struct.device* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %81 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %82 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %80
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %79, %69
  %88 = load %struct.device*, %struct.device** %3, align 8
  %89 = call i64 @device_property_read_bool(%struct.device* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load %struct.device*, %struct.device** %3, align 8
  %93 = call i64 @device_property_read_bool(%struct.device* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91, %87
  %96 = load i32, i32* @MMC_PM_WAKE_SDIO_IRQ, align 4
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %98 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %91
  ret void
}

declare dso_local %struct.sdhci_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local i64 @device_property_present(%struct.device*, i8*) #1

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i64 @sdhci_wp_inverted(%struct.device*) #1

declare dso_local i32 @sdhci_get_compatibility(%struct.platform_device*) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
