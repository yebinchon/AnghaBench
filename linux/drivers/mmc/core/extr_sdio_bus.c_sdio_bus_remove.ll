; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_driver = type { i32, i32 (%struct.sdio_func*)* }
%struct.sdio_func = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MMC_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"WARNING: driver %s did not remove its interrupt handler!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sdio_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_bus_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sdio_driver*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sdio_driver* @to_sdio_driver(i32 %7)
  store %struct.sdio_driver* %8, %struct.sdio_driver** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %9)
  store %struct.sdio_func* %10, %struct.sdio_func** %4, align 8
  %11 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call i32 @pm_runtime_get_sync(%struct.device* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.sdio_driver*, %struct.sdio_driver** %3, align 8
  %26 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %25, i32 0, i32 1
  %27 = load i32 (%struct.sdio_func*)*, i32 (%struct.sdio_func*)** %26, align 8
  %28 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %29 = call i32 %27(%struct.sdio_func* %28)
  %30 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %31 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = load %struct.sdio_driver*, %struct.sdio_driver** %3, align 8
  %36 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %40 = call i32 @sdio_claim_host(%struct.sdio_func* %39)
  %41 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %42 = call i32 @sdio_release_irq(%struct.sdio_func* %41)
  %43 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %44 = call i32 @sdio_release_host(%struct.sdio_func* %43)
  br label %45

45:                                               ; preds = %34, %24
  %46 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %47 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.device*, %struct.device** %2, align 8
  %58 = call i32 @pm_runtime_put_noidle(%struct.device* %57)
  br label %59

59:                                               ; preds = %56, %45
  %60 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %61 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.device*, %struct.device** %2, align 8
  %72 = call i32 @pm_runtime_put_sync(%struct.device* %71)
  br label %73

73:                                               ; preds = %70, %59
  %74 = load %struct.device*, %struct.device** %2, align 8
  %75 = call i32 @dev_pm_domain_detach(%struct.device* %74, i32 0)
  ret i32 0
}

declare dso_local %struct.sdio_driver* @to_sdio_driver(i32) #1

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @dev_pm_domain_detach(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
