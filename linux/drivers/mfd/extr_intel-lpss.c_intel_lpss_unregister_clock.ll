; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_unregister_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_unregister_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lpss = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_lpss*)* @intel_lpss_unregister_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_lpss_unregister_clock(%struct.intel_lpss* %0) #0 {
  %2 = alloca %struct.intel_lpss*, align 8
  store %struct.intel_lpss* %0, %struct.intel_lpss** %2, align 8
  %3 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %4 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @IS_ERR_OR_NULL(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %11 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clkdev_drop(i32 %12)
  %14 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %15 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @intel_lpss_unregister_clock_tree(i32 %16)
  br label %18

18:                                               ; preds = %9, %8
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @clkdev_drop(i32) #1

declare dso_local i32 @intel_lpss_unregister_clock_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
