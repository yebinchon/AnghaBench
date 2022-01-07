; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-spear.c_sdhci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-spear.c_sdhci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device* }
%struct.sdhci_host = type { i8*, i64, i32, i32, i32*, %struct.sdhci_host* }
%struct.resource = type { i32 }
%struct.spear_sdhci = type { %struct.sdhci_host* }

@.str = private unnamed_addr constant [34 x i8] c"cannot allocate memory for sdhci\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map iomem: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sdhci\00", align 1
@sdhci_pltfm_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_ADMA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Error getting clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Error enabling clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Error setting desired clk, clk=%lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"spear-sdhci probe failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.spear_sdhci*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi %struct.device* [ %18, %14 ], [ %21, %19 ]
  store %struct.device* %23, %struct.device** %7, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call %struct.sdhci_host* @sdhci_alloc_host(%struct.device* %24, i32 8)
  store %struct.sdhci_host* %25, %struct.sdhci_host** %4, align 8
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %27 = call i64 @IS_ERR(%struct.sdhci_host* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %31 = call i32 @PTR_ERR(%struct.sdhci_host* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %153

35:                                               ; preds = %22
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %5, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = call %struct.sdhci_host* @devm_ioremap_resource(%struct.device* %40, %struct.resource* %41)
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %44 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %43, i32 0, i32 5
  store %struct.sdhci_host* %42, %struct.sdhci_host** %44, align 8
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %46 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %45, i32 0, i32 5
  %47 = load %struct.sdhci_host*, %struct.sdhci_host** %46, align 8
  %48 = call i64 @IS_ERR(%struct.sdhci_host* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %35
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %52 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %51, i32 0, i32 5
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.sdhci_host* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %150

59:                                               ; preds = %35
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %61 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %63 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %62, i32 0, i32 4
  store i32* @sdhci_pltfm_ops, i32** %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = call i64 @platform_get_irq(%struct.platform_device* %64, i32 0)
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %67 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %69 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %150

75:                                               ; preds = %59
  %76 = load i32, i32* @SDHCI_QUIRK_BROKEN_ADMA, align 4
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %78 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %80 = call %struct.spear_sdhci* @sdhci_priv(%struct.sdhci_host* %79)
  store %struct.spear_sdhci* %80, %struct.spear_sdhci** %6, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call %struct.sdhci_host* @devm_clk_get(%struct.device* %82, i32* null)
  %84 = load %struct.spear_sdhci*, %struct.spear_sdhci** %6, align 8
  %85 = getelementptr inbounds %struct.spear_sdhci, %struct.spear_sdhci* %84, i32 0, i32 0
  store %struct.sdhci_host* %83, %struct.sdhci_host** %85, align 8
  %86 = load %struct.spear_sdhci*, %struct.spear_sdhci** %6, align 8
  %87 = getelementptr inbounds %struct.spear_sdhci, %struct.spear_sdhci* %86, i32 0, i32 0
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %87, align 8
  %89 = call i64 @IS_ERR(%struct.sdhci_host* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %75
  %92 = load %struct.spear_sdhci*, %struct.spear_sdhci** %6, align 8
  %93 = getelementptr inbounds %struct.spear_sdhci, %struct.spear_sdhci* %92, i32 0, i32 0
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %93, align 8
  %95 = call i32 @PTR_ERR(%struct.sdhci_host* %94)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %150

99:                                               ; preds = %75
  %100 = load %struct.spear_sdhci*, %struct.spear_sdhci** %6, align 8
  %101 = getelementptr inbounds %struct.spear_sdhci, %struct.spear_sdhci* %100, i32 0, i32 0
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %101, align 8
  %103 = call i32 @clk_prepare_enable(%struct.sdhci_host* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %150

110:                                              ; preds = %99
  %111 = load %struct.spear_sdhci*, %struct.spear_sdhci** %6, align 8
  %112 = getelementptr inbounds %struct.spear_sdhci, %struct.spear_sdhci* %111, i32 0, i32 0
  %113 = load %struct.sdhci_host*, %struct.sdhci_host** %112, align 8
  %114 = call i32 @clk_set_rate(%struct.sdhci_host* %113, i32 50000000)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load %struct.spear_sdhci*, %struct.spear_sdhci** %6, align 8
  %121 = getelementptr inbounds %struct.spear_sdhci, %struct.spear_sdhci* %120, i32 0, i32 0
  %122 = load %struct.sdhci_host*, %struct.sdhci_host** %121, align 8
  %123 = call i32 @clk_get_rate(%struct.sdhci_host* %122)
  %124 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %117, %110
  %126 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %127 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @mmc_gpiod_request_cd(i32 %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0, i32 0, i32* null)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @EPROBE_DEFER, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %145

135:                                              ; preds = %125
  %136 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %137 = call i32 @sdhci_add_host(%struct.sdhci_host* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %145

141:                                              ; preds = %135
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %144 = call i32 @platform_set_drvdata(%struct.platform_device* %142, %struct.sdhci_host* %143)
  store i32 0, i32* %2, align 4
  br label %159

145:                                              ; preds = %140, %134
  %146 = load %struct.spear_sdhci*, %struct.spear_sdhci** %6, align 8
  %147 = getelementptr inbounds %struct.spear_sdhci, %struct.spear_sdhci* %146, i32 0, i32 0
  %148 = load %struct.sdhci_host*, %struct.sdhci_host** %147, align 8
  %149 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %148)
  br label %150

150:                                              ; preds = %145, %106, %91, %72, %50
  %151 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %152 = call i32 @sdhci_free_host(%struct.sdhci_host* %151)
  br label %153

153:                                              ; preds = %150, %29
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @dev_err(%struct.device* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %153, %141
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.sdhci_host* @sdhci_alloc_host(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.sdhci_host* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.spear_sdhci* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_host* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @clk_set_rate(%struct.sdhci_host*, i32) #1

declare dso_local i32 @clk_get_rate(%struct.sdhci_host*) #1

declare dso_local i32 @mmc_gpiod_request_cd(i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sdhci_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_free_host(%struct.sdhci_host*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
