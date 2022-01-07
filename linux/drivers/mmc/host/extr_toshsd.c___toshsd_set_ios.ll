; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c___toshsd_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c___toshsd_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i32 }
%struct.toshsd_host = type { i64, i32 }

@HCLK = common dso_local global i32 0, align 4
@SD_PCICFG_CLKMODE = common dso_local global i32 0, align 4
@SD_PCICFG_CLKMODE_DIV_DISABLE = common dso_local global i32 0, align 4
@SD_CARDCLK_DIV_DISABLE = common dso_local global i32 0, align 4
@SD_CARDCLK_ENABLE_CLOCK = common dso_local global i32 0, align 4
@SD_CARDCLOCKCTRL = common dso_local global i64 0, align 8
@SD_PCICFG_POWER1 = common dso_local global i32 0, align 4
@SD_PCICFG_PWR1_OFF = common dso_local global i32 0, align 4
@SD_PCICFG_PWR1_33V = common dso_local global i32 0, align 4
@SD_PCICFG_POWER2 = common dso_local global i32 0, align 4
@SD_PCICFG_PWR2_AUTO = common dso_local global i32 0, align 4
@SD_CARDOPT_REQUIRED = common dso_local global i32 0, align 4
@SD_CARDOPT_C2_MODULE_ABSENT = common dso_local global i32 0, align 4
@SD_CARDOPT_DATA_XFR_WIDTH_1 = common dso_local global i32 0, align 4
@SD_CARDOPTIONSETUP = common dso_local global i64 0, align 8
@SD_CARDOPT_DATA_XFR_WIDTH_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @__toshsd_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__toshsd_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.toshsd_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.toshsd_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.toshsd_host* %9, %struct.toshsd_host** %5, align 8
  %10 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %23, %14
  %16 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HCLK, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sdiv i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 2
  store i32 %25, i32* %7, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 2
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %33 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SD_PCICFG_CLKMODE, align 4
  %36 = load i32, i32* @SD_PCICFG_CLKMODE_DIV_DISABLE, align 4
  %37 = call i32 @pci_write_config_byte(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @SD_CARDCLK_DIV_DISABLE, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %47

41:                                               ; preds = %26
  %42 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %43 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SD_PCICFG_CLKMODE, align 4
  %46 = call i32 @pci_write_config_byte(i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %41, %31
  %48 = load i32, i32* @SD_CARDCLK_ENABLE_CLOCK, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %53 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SD_CARDCLOCKCTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite16(i32 %51, i64 %56)
  %58 = call i32 @mdelay(i32 10)
  br label %66

59:                                               ; preds = %2
  %60 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %61 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SD_CARDCLOCKCTRL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @iowrite16(i32 0, i64 %64)
  br label %66

66:                                               ; preds = %59, %47
  %67 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %93 [
    i32 130, label %70
    i32 128, label %78
    i32 129, label %79
  ]

70:                                               ; preds = %66
  %71 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %72 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SD_PCICFG_POWER1, align 4
  %75 = load i32, i32* @SD_PCICFG_PWR1_OFF, align 4
  %76 = call i32 @pci_write_config_byte(i32 %73, i32 %74, i32 %75)
  %77 = call i32 @mdelay(i32 1)
  br label %93

78:                                               ; preds = %66
  br label %93

79:                                               ; preds = %66
  %80 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %81 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SD_PCICFG_POWER1, align 4
  %84 = load i32, i32* @SD_PCICFG_PWR1_33V, align 4
  %85 = call i32 @pci_write_config_byte(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %87 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SD_PCICFG_POWER2, align 4
  %90 = load i32, i32* @SD_PCICFG_PWR2_AUTO, align 4
  %91 = call i32 @pci_write_config_byte(i32 %88, i32 %89, i32 %90)
  %92 = call i32 @mdelay(i32 20)
  br label %93

93:                                               ; preds = %66, %79, %78, %70
  %94 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %125 [
    i32 132, label %97
    i32 131, label %111
  ]

97:                                               ; preds = %93
  %98 = load i32, i32* @SD_CARDOPT_REQUIRED, align 4
  %99 = call i32 @SD_CARDOPT_DATA_RESP_TIMEOUT(i32 14)
  %100 = or i32 %98, %99
  %101 = load i32, i32* @SD_CARDOPT_C2_MODULE_ABSENT, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @SD_CARDOPT_DATA_XFR_WIDTH_1, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %106 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SD_CARDOPTIONSETUP, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @iowrite16(i32 %104, i64 %109)
  br label %125

111:                                              ; preds = %93
  %112 = load i32, i32* @SD_CARDOPT_REQUIRED, align 4
  %113 = call i32 @SD_CARDOPT_DATA_RESP_TIMEOUT(i32 14)
  %114 = or i32 %112, %113
  %115 = load i32, i32* @SD_CARDOPT_C2_MODULE_ABSENT, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SD_CARDOPT_DATA_XFR_WIDTH_4, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.toshsd_host*, %struct.toshsd_host** %5, align 8
  %120 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SD_CARDOPTIONSETUP, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @iowrite16(i32 %118, i64 %123)
  br label %125

125:                                              ; preds = %93, %111, %97
  ret void
}

declare dso_local %struct.toshsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @SD_CARDOPT_DATA_RESP_TIMEOUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
