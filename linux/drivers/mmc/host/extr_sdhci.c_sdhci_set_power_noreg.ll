; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_power_noreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_set_power_noreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32, i32 }

@MMC_POWER_OFF = common dso_local global i8 0, align 1
@SDHCI_POWER_180 = common dso_local global i32 0, align 4
@SDHCI_POWER_300 = common dso_local global i32 0, align 4
@SDHCI_POWER_330 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: Invalid vdd %#x\0A\00", align 1
@SDHCI_POWER_CONTROL = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON = common dso_local global i32 0, align 4
@SDHCI_QUIRK_SINGLE_POWER_WRITE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER = common dso_local global i32 0, align 4
@SDHCI_POWER_ON = common dso_local global i32 0, align 4
@SDHCI_QUIRK_DELAY_AFTER_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_set_power_noreg(%struct.sdhci_host* %0, i8 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i8 %1, i8* %5, align 1
  store i16 %2, i16* %6, align 2
  store i32 0, i32* %7, align 4
  %8 = load i8, i8* %5, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @MMC_POWER_OFF, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load i16, i16* %6, align 2
  %15 = zext i16 %14 to i32
  %16 = shl i32 1, %15
  switch i32 %16, label %23 [
    i32 133, label %17
    i32 132, label %17
    i32 131, label %19
    i32 130, label %19
    i32 129, label %21
    i32 128, label %21
  ]

17:                                               ; preds = %13, %13
  %18 = load i32, i32* @SDHCI_POWER_180, align 4
  store i32 %18, i32* %7, align 4
  br label %30

19:                                               ; preds = %13, %13
  %20 = load i32, i32* @SDHCI_POWER_300, align 4
  store i32 %20, i32* %7, align 4
  br label %30

21:                                               ; preds = %13, %13
  %22 = load i32, i32* @SDHCI_POWER_330, align 4
  store i32 %22, i32* %7, align 4
  br label %30

23:                                               ; preds = %13
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %25 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mmc_hostname(i32 %26)
  %28 = load i16, i16* %6, align 2
  %29 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27, i16 zeroext %28)
  br label %30

30:                                               ; preds = %23, %21, %19, %17
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %108

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %41 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %46 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %47 = call i32 @sdhci_writeb(%struct.sdhci_host* %45, i32 0, i32 %46)
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %49 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %56 = call i32 @sdhci_runtime_pm_bus_off(%struct.sdhci_host* %55)
  br label %57

57:                                               ; preds = %54, %44
  br label %108

58:                                               ; preds = %38
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %60 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SDHCI_QUIRK_SINGLE_POWER_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %67 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %68 = call i32 @sdhci_writeb(%struct.sdhci_host* %66, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %65, %58
  %70 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %71 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %80 = call i32 @sdhci_writeb(%struct.sdhci_host* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = load i32, i32* @SDHCI_POWER_ON, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @SDHCI_POWER_CONTROL, align 4
  %88 = call i32 @sdhci_writeb(%struct.sdhci_host* %85, i32 %86, i32 %87)
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %90 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SDHCI_QUIRK2_CARD_ON_NEEDS_BUS_ON, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %97 = call i32 @sdhci_runtime_pm_bus_on(%struct.sdhci_host* %96)
  br label %98

98:                                               ; preds = %95, %81
  %99 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %100 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SDHCI_QUIRK_DELAY_AFTER_POWER, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = call i32 @mdelay(i32 10)
  br label %107

107:                                              ; preds = %105, %98
  br label %108

108:                                              ; preds = %37, %107, %57
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32, i16 zeroext) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sdhci_writeb(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_runtime_pm_bus_off(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_runtime_pm_bus_on(%struct.sdhci_host*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
