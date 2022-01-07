; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_configure_wake_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_configure_wake_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i64, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pinctrl = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to request wake IRQ\0A\00", align 1
@OMAP_HSMMC_SWAKEUP_MISSING = common dso_local global i32 0, align 4
@PINCTRL_STATE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"missing default pinctrl state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PINCTRL_STATE_IDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"missing idle pinctrl state\0A\00", align 1
@HCTL = common dso_local global i32 0, align 4
@IWE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"no SDIO IRQ support, falling back to polling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*)* @omap_hsmmc_configure_wake_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_configure_wake_irq(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  %6 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %115

20:                                               ; preds = %12
  %21 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %22 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dev_pm_set_dedicated_wake_irq(%struct.TYPE_8__* %23, i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @mmc_dev(i32 %33)
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %107

36:                                               ; preds = %20
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OMAP_HSMMC_SWAKEUP_MISSING, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %36
  %46 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call %struct.pinctrl* @devm_pinctrl_get(%struct.TYPE_8__* %48)
  store %struct.pinctrl* %49, %struct.pinctrl** %5, align 8
  %50 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %51 = call i64 @IS_ERR(%struct.pinctrl* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %55 = call i32 @PTR_ERR(%struct.pinctrl* %54)
  store i32 %55, i32* %4, align 4
  br label %102

56:                                               ; preds = %45
  %57 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %58 = load i32, i32* @PINCTRL_STATE_DEFAULT, align 4
  %59 = call %struct.pinctrl* @pinctrl_lookup_state(%struct.pinctrl* %57, i32 %58)
  %60 = call i64 @IS_ERR(%struct.pinctrl* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %64 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 @dev_info(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %68 = call i32 @devm_pinctrl_put(%struct.pinctrl* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %102

71:                                               ; preds = %56
  %72 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %73 = load i32, i32* @PINCTRL_STATE_IDLE, align 4
  %74 = call %struct.pinctrl* @pinctrl_lookup_state(%struct.pinctrl* %72, i32 %73)
  %75 = call i64 @IS_ERR(%struct.pinctrl* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %79 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 @dev_info(%struct.TYPE_8__* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %83 = call i32 @devm_pinctrl_put(%struct.pinctrl* %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %102

86:                                               ; preds = %71
  %87 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %88 = call i32 @devm_pinctrl_put(%struct.pinctrl* %87)
  br label %89

89:                                               ; preds = %86, %36
  %90 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %91 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @HCTL, align 4
  %94 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %95 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @HCTL, align 4
  %98 = call i32 @OMAP_HSMMC_READ(i32 %96, i32 %97)
  %99 = load i32, i32* @IWE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @OMAP_HSMMC_WRITE(i32 %92, i32 %93, i32 %100)
  store i32 0, i32* %2, align 4
  br label %115

102:                                              ; preds = %77, %62, %53
  %103 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %104 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = call i32 @dev_pm_clear_wake_irq(%struct.TYPE_8__* %105)
  br label %107

107:                                              ; preds = %102, %30
  %108 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %109 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %108, i32 0, i32 1
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = call i32 @dev_warn(%struct.TYPE_8__* %110, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %113 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %107, %89, %17
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @dev_pm_set_dedicated_wake_irq(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local %struct.pinctrl* @devm_pinctrl_get(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl*) #1

declare dso_local %struct.pinctrl* @pinctrl_lookup_state(%struct.pinctrl*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @devm_pinctrl_put(%struct.pinctrl*) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @dev_pm_clear_wake_irq(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
