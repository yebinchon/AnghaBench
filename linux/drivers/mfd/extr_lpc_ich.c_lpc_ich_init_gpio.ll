; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_init_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_init_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.resource = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.lpc_ich_priv = type { i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"I/O space for ACPI uninitialized\0A\00", align 1
@lpc_ich_gpio_cell = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@gpio_ich_res = common dso_local global %struct.resource* null, align 8
@ICH_RES_GPE0 = common dso_local global i64 0, align 8
@ACPIBASE_GPE_OFF = common dso_local global i32 0, align 4
@ACPIBASE_GPE_END = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"I/O space for GPIO uninitialized\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ICH_RES_GPIO = common dso_local global i64 0, align 8
@lpc_chipset_info = common dso_local global %struct.TYPE_5__* null, align 8
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Resource conflict(s) found affecting %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @lpc_ich_init_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_ich_init_gpio(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.lpc_ich_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.lpc_ich_priv* %10, %struct.lpc_ich_priv** %3, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %13 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_read_config_dword(%struct.pci_dev* %11, i32 %14, i32* %4)
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 65408
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @dev_notice(i32* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpc_ich_gpio_cell, i32 0, i32 1), align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpc_ich_gpio_cell, i32 0, i32 1), align 4
  br label %52

26:                                               ; preds = %1
  %27 = load %struct.resource*, %struct.resource** @gpio_ich_res, align 8
  %28 = load i64, i64* @ICH_RES_GPE0, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %27, i64 %28
  store %struct.resource* %29, %struct.resource** %8, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ACPIBASE_GPE_OFF, align 4
  %32 = add nsw i32 %30, %31
  %33 = load %struct.resource*, %struct.resource** %8, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @ACPIBASE_GPE_END, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = call i32 @acpi_check_resource_conflict(%struct.resource* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %26
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpc_ich_gpio_cell, i32 0, i32 1), align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpc_ich_gpio_cell, i32 0, i32 1), align 4
  store i32 1, i32* %7, align 4
  br label %51

48:                                               ; preds = %26
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = call i32 @lpc_ich_enable_acpi_space(%struct.pci_dev* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %20
  %53 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %54 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %55 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_read_config_dword(%struct.pci_dev* %53, i32 %56, i32* %4)
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 65408
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = call i32 @dev_notice(i32* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %122

68:                                               ; preds = %52
  %69 = load %struct.resource*, %struct.resource** @gpio_ich_res, align 8
  %70 = load i64, i64* @ICH_RES_GPIO, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %69, i64 %70
  store %struct.resource* %71, %struct.resource** %8, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.resource*, %struct.resource** %8, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpc_chipset_info, align 8
  %76 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %77 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %91 [
    i32 128, label %82
    i32 129, label %82
  ]

82:                                               ; preds = %68, %68
  %83 = load %struct.resource*, %struct.resource** %8, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 128
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load %struct.resource*, %struct.resource** %8, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %100

91:                                               ; preds = %68
  %92 = load %struct.resource*, %struct.resource** %8, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 64
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = load %struct.resource*, %struct.resource** %8, align 8
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %91, %82
  %101 = load %struct.resource*, %struct.resource** %8, align 8
  %102 = call i32 @lpc_ich_check_conflict_gpio(%struct.resource* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  br label %122

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpc_chipset_info, align 8
  %109 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %3, align 8
  %110 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32 %107, i32* %113, align 4
  %114 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %115 = call i32 @lpc_ich_enable_gpio_space(%struct.pci_dev* %114)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %117 = call i32 @lpc_ich_finalize_gpio_cell(%struct.pci_dev* %116)
  %118 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 0
  %120 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %121 = call i32 @mfd_add_devices(i32* %119, i32 %120, %struct.TYPE_4__* @lpc_ich_gpio_cell, i32 1, i32* null, i32 0, i32* null)
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %106, %105, %62
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lpc_ich_gpio_cell, i32 0, i32 0), align 4
  %127 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local %struct.lpc_ich_priv* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @acpi_check_resource_conflict(%struct.resource*) #1

declare dso_local i32 @lpc_ich_enable_acpi_space(%struct.pci_dev*) #1

declare dso_local i32 @lpc_ich_check_conflict_gpio(%struct.resource*) #1

declare dso_local i32 @lpc_ich_enable_gpio_space(%struct.pci_dev*) #1

declare dso_local i32 @lpc_ich_finalize_gpio_cell(%struct.pci_dev*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
