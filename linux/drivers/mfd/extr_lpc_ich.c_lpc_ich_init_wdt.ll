; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_init_wdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_init_wdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.lpc_ich_priv = type { i64, i32 }
%struct.resource = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"I/O space for ACPI uninitialized\0A\00", align 1
@ICH_RES_IO_TCO = common dso_local global i32 0, align 4
@ACPIBASE_TCO_OFF = common dso_local global i64 0, align 8
@ACPIBASE_TCO_END = common dso_local global i64 0, align 8
@ICH_RES_IO_SMI = common dso_local global i32 0, align 4
@ACPIBASE_SMI_OFF = common dso_local global i64 0, align 8
@ACPIBASE_SMI_END = common dso_local global i64 0, align 8
@lpc_chipset_info = common dso_local global %struct.TYPE_5__* null, align 8
@lpc_ich_wdt_cell = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@RCBABASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"RCBA is disabled by hardware/BIOS, device disabled\0A\00", align 1
@ICH_RES_MEM_GCS_PMC = common dso_local global i32 0, align 4
@ACPIBASE_GCS_OFF = common dso_local global i64 0, align 8
@ACPIBASE_GCS_END = common dso_local global i64 0, align 8
@ACPICTRL_PMCBASE = common dso_local global i32 0, align 4
@ACPIBASE_PMC_OFF = common dso_local global i64 0, align 8
@ACPIBASE_PMC_END = common dso_local global i64 0, align 8
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @lpc_ich_init_wdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_ich_init_wdt(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.lpc_ich_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.lpc_ich_priv* %10, %struct.lpc_ich_priv** %4, align 8
  %11 = call i64 (...) @acpi_has_watchdog()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %159

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %4, align 8
  %19 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pci_read_config_dword(%struct.pci_dev* %17, i32 %20, i32* %5)
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 65408
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %16
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @dev_notice(i32* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %157

32:                                               ; preds = %16
  %33 = load i32, i32* @ICH_RES_IO_TCO, align 4
  %34 = call %struct.resource* @wdt_io_res(i32 %33)
  store %struct.resource* %34, %struct.resource** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @ACPIBASE_TCO_OFF, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @ACPIBASE_TCO_END, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.resource*, %struct.resource** %8, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @ICH_RES_IO_SMI, align 4
  %48 = call %struct.resource* @wdt_io_res(i32 %47)
  store %struct.resource* %48, %struct.resource** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @ACPIBASE_SMI_OFF, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.resource*, %struct.resource** %8, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @ACPIBASE_SMI_END, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.resource*, %struct.resource** %8, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %62 = call i32 @lpc_ich_enable_acpi_space(%struct.pci_dev* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpc_chipset_info, align 8
  %64 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %4, align 8
  %65 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %32
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpc_ich_wdt_cell, i32 0, i32 0), align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpc_ich_wdt_cell, i32 0, i32 0), align 4
  br label %146

74:                                               ; preds = %32
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpc_chipset_info, align 8
  %76 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %4, align 8
  %77 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %113

83:                                               ; preds = %74
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = load i32, i32* @RCBABASE, align 4
  %86 = call i32 @pci_read_config_dword(%struct.pci_dev* %84, i32 %85, i32* %5)
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, -16384
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %83
  %93 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = call i32 @dev_notice(i32* %94, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %157

98:                                               ; preds = %83
  %99 = load i32, i32* @ICH_RES_MEM_GCS_PMC, align 4
  %100 = call %struct.resource* @wdt_mem_res(i32 %99)
  store %struct.resource* %100, %struct.resource** %8, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* @ACPIBASE_GCS_OFF, align 8
  %104 = add nsw i64 %102, %103
  %105 = load %struct.resource*, %struct.resource** %8, align 8
  %106 = getelementptr inbounds %struct.resource, %struct.resource* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @ACPIBASE_GCS_END, align 8
  %110 = add nsw i64 %108, %109
  %111 = load %struct.resource*, %struct.resource** %8, align 8
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %145

113:                                              ; preds = %74
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpc_chipset_info, align 8
  %115 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %4, align 8
  %116 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %122, label %144

122:                                              ; preds = %113
  %123 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %124 = call i32 @lpc_ich_enable_pmc_space(%struct.pci_dev* %123)
  %125 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %126 = load i32, i32* @ACPICTRL_PMCBASE, align 4
  %127 = call i32 @pci_read_config_dword(%struct.pci_dev* %125, i32 %126, i32* %5)
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, -512
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* @ICH_RES_MEM_GCS_PMC, align 4
  %131 = call %struct.resource* @wdt_mem_res(i32 %130)
  store %struct.resource* %131, %struct.resource** %8, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* @ACPIBASE_PMC_OFF, align 8
  %135 = add nsw i64 %133, %134
  %136 = load %struct.resource*, %struct.resource** %8, align 8
  %137 = getelementptr inbounds %struct.resource, %struct.resource* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* @ACPIBASE_PMC_END, align 8
  %141 = add nsw i64 %139, %140
  %142 = load %struct.resource*, %struct.resource** %8, align 8
  %143 = getelementptr inbounds %struct.resource, %struct.resource* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %122, %113
  br label %145

145:                                              ; preds = %144, %98
  br label %146

146:                                              ; preds = %145, %71
  %147 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %148 = call i32 @lpc_ich_finalize_wdt_cell(%struct.pci_dev* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %157

152:                                              ; preds = %146
  %153 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %154 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 0
  %155 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %156 = call i32 @mfd_add_devices(i32* %154, i32 %155, %struct.TYPE_4__* @lpc_ich_wdt_cell, i32 1, i32* null, i32 0, i32* null)
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %152, %151, %92, %26
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %13
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @acpi_has_watchdog(...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local %struct.resource* @wdt_io_res(i32) #1

declare dso_local i32 @lpc_ich_enable_acpi_space(%struct.pci_dev*) #1

declare dso_local %struct.resource* @wdt_mem_res(i32) #1

declare dso_local i32 @lpc_ich_enable_pmc_space(%struct.pci_dev*) #1

declare dso_local i32 @lpc_ich_finalize_wdt_cell(%struct.pci_dev*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
