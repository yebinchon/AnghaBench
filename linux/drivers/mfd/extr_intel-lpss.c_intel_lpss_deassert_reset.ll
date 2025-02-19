; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_deassert_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_deassert_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lpss = type { i64 }

@LPSS_PRIV_RESETS_FUNC = common dso_local global i32 0, align 4
@LPSS_PRIV_RESETS_IDMA = common dso_local global i32 0, align 4
@LPSS_PRIV_RESETS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_lpss*)* @intel_lpss_deassert_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_lpss_deassert_reset(%struct.intel_lpss* %0) #0 {
  %2 = alloca %struct.intel_lpss*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_lpss* %0, %struct.intel_lpss** %2, align 8
  %4 = load i32, i32* @LPSS_PRIV_RESETS_FUNC, align 4
  %5 = load i32, i32* @LPSS_PRIV_RESETS_IDMA, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %9 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LPSS_PRIV_RESETS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
