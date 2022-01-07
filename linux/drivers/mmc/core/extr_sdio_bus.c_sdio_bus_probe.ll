; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_bus.c_sdio_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_driver = type { i32 (%struct.sdio_func*, %struct.sdio_device_id*)* }
%struct.sdio_func = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sdio_device_id = type opaque
%struct.sdio_device_id.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@MMC_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sdio_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_bus_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdio_driver*, align 8
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca %struct.sdio_device_id.0*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sdio_driver* @to_sdio_driver(i32 %10)
  store %struct.sdio_driver* %11, %struct.sdio_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %12)
  store %struct.sdio_func* %13, %struct.sdio_func** %5, align 8
  %14 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %15 = load %struct.sdio_driver*, %struct.sdio_driver** %4, align 8
  %16 = call %struct.sdio_device_id.0* @sdio_match_device(%struct.sdio_func* %14, %struct.sdio_driver* %15)
  store %struct.sdio_device_id.0* %16, %struct.sdio_device_id.0** %6, align 8
  %17 = load %struct.sdio_device_id.0*, %struct.sdio_device_id.0** %6, align 8
  %18 = icmp ne %struct.sdio_device_id.0* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %87

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @dev_pm_domain_attach(%struct.device* %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %87

29:                                               ; preds = %22
  %30 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %31 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 @pm_runtime_get_sync(%struct.device* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %69

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %29
  %48 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %49 = call i32 @sdio_claim_host(%struct.sdio_func* %48)
  %50 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %51 = call i32 @sdio_set_block_size(%struct.sdio_func* %50, i32 0)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %53 = call i32 @sdio_release_host(%struct.sdio_func* %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %69

57:                                               ; preds = %47
  %58 = load %struct.sdio_driver*, %struct.sdio_driver** %4, align 8
  %59 = getelementptr inbounds %struct.sdio_driver, %struct.sdio_driver* %58, i32 0, i32 0
  %60 = load i32 (%struct.sdio_func*, %struct.sdio_device_id*)*, i32 (%struct.sdio_func*, %struct.sdio_device_id*)** %59, align 8
  %61 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %62 = load %struct.sdio_device_id.0*, %struct.sdio_device_id.0** %6, align 8
  %63 = bitcast %struct.sdio_device_id.0* %62 to %struct.sdio_device_id*
  %64 = call i32 %60(%struct.sdio_func* %61, %struct.sdio_device_id* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %87

69:                                               ; preds = %67, %56, %45
  %70 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %71 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = call i32 @pm_runtime_put_noidle(%struct.device* %81)
  br label %83

83:                                               ; preds = %80, %69
  %84 = load %struct.device*, %struct.device** %3, align 8
  %85 = call i32 @dev_pm_domain_detach(%struct.device* %84, i32 0)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %68, %27, %19
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.sdio_driver* @to_sdio_driver(i32) #1

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local %struct.sdio_device_id.0* @sdio_match_device(%struct.sdio_func*, %struct.sdio_driver*) #1

declare dso_local i32 @dev_pm_domain_attach(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @dev_pm_domain_detach(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
