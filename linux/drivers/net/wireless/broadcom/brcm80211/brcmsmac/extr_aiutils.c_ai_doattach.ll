; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_aiutils.c_ai_doattach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_aiutils.c_ai_doattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_info = type { i32, %struct.bcma_bus*, %struct.si_pub }
%struct.si_pub = type { i32, i32, i32, i32, i32 }
%struct.bcma_bus = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@gpiopullup = common dso_local global i32 0, align 4
@gpiopulldown = common dso_local global i32 0, align 4
@CC_CAP_PMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.si_info* (%struct.si_info*, %struct.bcma_bus*)* @ai_doattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.si_info* @ai_doattach(%struct.si_info* %0, %struct.bcma_bus* %1) #0 {
  %3 = alloca %struct.si_info*, align 8
  %4 = alloca %struct.si_info*, align 8
  %5 = alloca %struct.bcma_bus*, align 8
  %6 = alloca %struct.si_pub*, align 8
  %7 = alloca %struct.bcma_device*, align 8
  store %struct.si_info* %0, %struct.si_info** %4, align 8
  store %struct.bcma_bus* %1, %struct.bcma_bus** %5, align 8
  %8 = load %struct.si_info*, %struct.si_info** %4, align 8
  %9 = getelementptr inbounds %struct.si_info, %struct.si_info* %8, i32 0, i32 2
  store %struct.si_pub* %9, %struct.si_pub** %6, align 8
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %11 = load %struct.si_info*, %struct.si_info** %4, align 8
  %12 = getelementptr inbounds %struct.si_info, %struct.si_info* %11, i32 0, i32 1
  store %struct.bcma_bus* %10, %struct.bcma_bus** %12, align 8
  %13 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.si_info*, %struct.si_info** %4, align 8
  %17 = getelementptr inbounds %struct.si_info, %struct.si_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.bcma_device*, %struct.bcma_device** %20, align 8
  store %struct.bcma_device* %21, %struct.bcma_device** %7, align 8
  %22 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %23 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.si_pub*, %struct.si_pub** %6, align 8
  %27 = getelementptr inbounds %struct.si_pub, %struct.si_pub* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.si_pub*, %struct.si_pub** %6, align 8
  %33 = getelementptr inbounds %struct.si_pub, %struct.si_pub* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %35 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.si_pub*, %struct.si_pub** %6, align 8
  %39 = getelementptr inbounds %struct.si_pub, %struct.si_pub* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %41 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.si_pub*, %struct.si_pub** %6, align 8
  %45 = getelementptr inbounds %struct.si_pub, %struct.si_pub* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %47 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.si_pub*, %struct.si_pub** %6, align 8
  %51 = getelementptr inbounds %struct.si_pub, %struct.si_pub* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.si_info*, %struct.si_info** %4, align 8
  %53 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %54 = call i32 @ai_buscore_setup(%struct.si_info* %52, %struct.bcma_device* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %2
  br label %76

57:                                               ; preds = %2
  %58 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %59 = load i32, i32* @gpiopullup, align 4
  %60 = call i32 @CHIPCREGOFFS(i32 %59)
  %61 = call i32 @bcma_write32(%struct.bcma_device* %58, i32 %60, i32 0)
  %62 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %63 = load i32, i32* @gpiopulldown, align 4
  %64 = call i32 @CHIPCREGOFFS(i32 %63)
  %65 = call i32 @bcma_write32(%struct.bcma_device* %62, i32 %64, i32 0)
  %66 = load %struct.si_pub*, %struct.si_pub** %6, align 8
  %67 = call i32 @ai_get_cccaps(%struct.si_pub* %66)
  %68 = load i32, i32* @CC_CAP_PMU, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load %struct.si_pub*, %struct.si_pub** %6, align 8
  %73 = call i32 @si_pmu_measure_alpclk(%struct.si_pub* %72)
  br label %74

74:                                               ; preds = %71, %57
  %75 = load %struct.si_info*, %struct.si_info** %4, align 8
  store %struct.si_info* %75, %struct.si_info** %3, align 8
  br label %77

76:                                               ; preds = %56
  store %struct.si_info* null, %struct.si_info** %3, align 8
  br label %77

77:                                               ; preds = %76, %74
  %78 = load %struct.si_info*, %struct.si_info** %3, align 8
  ret %struct.si_info* %78
}

declare dso_local i32 @ai_buscore_setup(%struct.si_info*, %struct.bcma_device*) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @CHIPCREGOFFS(i32) #1

declare dso_local i32 @ai_get_cccaps(%struct.si_pub*) #1

declare dso_local i32 @si_pmu_measure_alpclk(%struct.si_pub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
