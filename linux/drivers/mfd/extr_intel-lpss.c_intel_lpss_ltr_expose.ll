; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_ltr_expose.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_ltr_expose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lpss = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@intel_lpss_ltr_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_lpss*)* @intel_lpss_ltr_expose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_lpss_ltr_expose(%struct.intel_lpss* %0) #0 {
  %2 = alloca %struct.intel_lpss*, align 8
  store %struct.intel_lpss* %0, %struct.intel_lpss** %2, align 8
  %3 = load i32, i32* @intel_lpss_ltr_set, align 4
  %4 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %5 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %3, i32* %8, align 4
  %9 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %10 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @dev_pm_qos_expose_latency_tolerance(%struct.TYPE_4__* %11)
  ret void
}

declare dso_local i32 @dev_pm_qos_expose_latency_tolerance(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
