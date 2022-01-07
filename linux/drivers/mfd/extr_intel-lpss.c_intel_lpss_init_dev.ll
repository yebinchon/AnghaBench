; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lpss = type { i64, i64 }

@LPSS_PRIV_SSP_REG_DIS_DMA_FIN = common dso_local global i32 0, align 4
@LPSS_PRIV_RESETS = common dso_local global i64 0, align 8
@LPSS_DEV_SPI = common dso_local global i64 0, align 8
@LPSS_PRIV_SSP_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_lpss*)* @intel_lpss_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_lpss_init_dev(%struct.intel_lpss* %0) #0 {
  %2 = alloca %struct.intel_lpss*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_lpss* %0, %struct.intel_lpss** %2, align 8
  %4 = load i32, i32* @LPSS_PRIV_SSP_REG_DIS_DMA_FIN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %6 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LPSS_PRIV_RESETS, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 0, i64 %9)
  %11 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %12 = call i32 @intel_lpss_deassert_reset(%struct.intel_lpss* %11)
  %13 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %14 = call i32 @intel_lpss_set_remap_addr(%struct.intel_lpss* %13)
  %15 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %16 = call i32 @intel_lpss_has_idma(%struct.intel_lpss* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %21 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LPSS_DEV_SPI, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.intel_lpss*, %struct.intel_lpss** %2, align 8
  %28 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LPSS_PRIV_SSP_REG, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %18, %25, %19
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @intel_lpss_deassert_reset(%struct.intel_lpss*) #1

declare dso_local i32 @intel_lpss_set_remap_addr(%struct.intel_lpss*) #1

declare dso_local i32 @intel_lpss_has_idma(%struct.intel_lpss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
