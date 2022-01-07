; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_set_regulator_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_set_regulator_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_msm_host = type { i32, i32, %struct.sdhci_msm_offset*, %struct.mmc_host* }
%struct.sdhci_msm_offset = type { i64 }
%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.regulator* }
%struct.regulator = type { i32 }
%struct.sdhci_host = type { i64 }

@CORE_1_8V_SUPPORT = common dso_local global i32 0, align 4
@CORE_3_0V_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: 1.8/3V not supported for vqmmc\0A\00", align 1
@CORE_IO_PAD_PWR_SWITCH_EN = common dso_local global i32 0, align 4
@REQ_IO_HIGH = common dso_local global i32 0, align 4
@CORE_IO_PAD_PWR_SWITCH = common dso_local global i32 0, align 4
@REQ_IO_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: supported caps: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_msm_host*)* @sdhci_msm_set_regulator_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_msm_set_regulator_caps(%struct.sdhci_msm_host* %0) #0 {
  %2 = alloca %struct.sdhci_msm_host*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_host*, align 8
  %8 = alloca %struct.sdhci_msm_offset*, align 8
  %9 = alloca i32, align 4
  store %struct.sdhci_msm_host* %0, %struct.sdhci_msm_host** %2, align 8
  %10 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %10, i32 0, i32 3
  %12 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  store %struct.mmc_host* %12, %struct.mmc_host** %3, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.regulator*, %struct.regulator** %15, align 8
  store %struct.regulator* %16, %struct.regulator** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %17)
  store %struct.sdhci_host* %18, %struct.sdhci_host** %7, align 8
  %19 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %2, align 8
  %20 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %19, i32 0, i32 2
  %21 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %20, align 8
  store %struct.sdhci_msm_offset* %21, %struct.sdhci_msm_offset** %8, align 8
  %22 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.regulator*, %struct.regulator** %24, align 8
  %26 = call i32 @IS_ERR(%struct.regulator* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %1
  %29 = load %struct.regulator*, %struct.regulator** %4, align 8
  %30 = call i64 @regulator_is_supported_voltage(%struct.regulator* %29, i32 1700000, i32 1950000)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @CORE_1_8V_SUPPORT, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.regulator*, %struct.regulator** %4, align 8
  %38 = call i64 @regulator_is_supported_voltage(%struct.regulator* %37, i32 2700000, i32 3600000)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @CORE_3_0V_SUPPORT, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %49 = call i32 @mmc_hostname(%struct.mmc_host* %48)
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %52
  %56 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %2, align 8
  %57 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %60 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %8, align 8
  %63 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @readl_relaxed(i64 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @CORE_IO_PAD_PWR_SWITCH_EN, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @REQ_IO_HIGH, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %55
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @CORE_3_0V_SUPPORT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @CORE_IO_PAD_PWR_SWITCH, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %99

84:                                               ; preds = %74, %55
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @REQ_IO_LOW, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @CORE_1_8V_SUPPORT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89, %84
  %95 = load i32, i32* @CORE_IO_PAD_PWR_SWITCH, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %89
  br label %99

99:                                               ; preds = %98, %79
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %102 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %8, align 8
  %105 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = call i32 @writel_relaxed(i32 %100, i64 %107)
  br label %109

109:                                              ; preds = %99, %52
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %2, align 8
  %112 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %116 = call i32 @mmc_hostname(%struct.mmc_host* %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %117)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @IS_ERR(%struct.regulator*) #1

declare dso_local i64 @regulator_is_supported_voltage(%struct.regulator*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
