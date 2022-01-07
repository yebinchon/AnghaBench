; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_ich.c_lpc_ich_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.lpc_ich_priv = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPIBASE = common dso_local global i32 0, align 4
@ACPICTRL_PMCBASE = common dso_local global i32 0, align 4
@LPC_ICH5 = common dso_local global i64 0, align 8
@GPIOBASE_ICH0 = common dso_local global i32 0, align 4
@GPIOCTRL_ICH0 = common dso_local global i32 0, align 4
@GPIOBASE_ICH6 = common dso_local global i32 0, align 4
@GPIOCTRL_ICH6 = common dso_local global i32 0, align 4
@lpc_chipset_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"No MFD cells added\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @lpc_ich_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_ich_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.lpc_ich_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lpc_ich_priv* @devm_kzalloc(i32* %10, i32 40, i32 %11)
  store %struct.lpc_ich_priv* %12, %struct.lpc_ich_priv** %6, align 8
  %13 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %14 = icmp ne %struct.lpc_ich_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %118

18:                                               ; preds = %2
  %19 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %23 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %25 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 8
  %26 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %27 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %26, i32 0, i32 2
  store i32 -1, i32* %27, align 4
  %28 = load i32, i32* @ACPIBASE, align 4
  %29 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %30 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @ACPICTRL_PMCBASE, align 4
  %32 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %33 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %35 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %34, i32 0, i32 3
  store i32 -1, i32* %35, align 8
  %36 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %37 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LPC_ICH5, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %18
  %42 = load i32, i32* @GPIOBASE_ICH0, align 4
  %43 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %44 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @GPIOCTRL_ICH0, align 4
  %46 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %47 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  br label %55

48:                                               ; preds = %18
  %49 = load i32, i32* @GPIOBASE_ICH6, align 4
  %50 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %51 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @GPIOCTRL_ICH6, align 4
  %53 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %54 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %58 = call i32 @pci_set_drvdata(%struct.pci_dev* %56, %struct.lpc_ich_priv* %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lpc_chipset_info, align 8
  %60 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %61 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @lpc_ich_init_wdt(%struct.pci_dev* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %67
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lpc_chipset_info, align 8
  %76 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %77 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = call i32 @lpc_ich_init_gpio(%struct.pci_dev* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 1, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lpc_chipset_info, align 8
  %92 = load %struct.lpc_ich_priv*, %struct.lpc_ich_priv** %6, align 8
  %93 = getelementptr inbounds %struct.lpc_ich_priv, %struct.lpc_ich_priv* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = call i32 @lpc_ich_init_spi(%struct.pci_dev* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  store i32 1, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %99
  br label %106

106:                                              ; preds = %105, %90
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 0
  %112 = call i32 @dev_warn(i32* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %113 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %114 = call i32 @lpc_ich_restore_config_space(%struct.pci_dev* %113)
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %118

117:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %109, %15
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.lpc_ich_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.lpc_ich_priv*) #1

declare dso_local i32 @lpc_ich_init_wdt(%struct.pci_dev*) #1

declare dso_local i32 @lpc_ich_init_gpio(%struct.pci_dev*) #1

declare dso_local i32 @lpc_ich_init_spi(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @lpc_ich_restore_config_space(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
