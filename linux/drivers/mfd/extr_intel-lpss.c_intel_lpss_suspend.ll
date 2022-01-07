; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_lpss = type { i64, i64, i32* }

@LPSS_PRIV_REG_COUNT = common dso_local global i32 0, align 4
@LPSS_DEV_UART = common dso_local global i64 0, align 8
@LPSS_PRIV_RESETS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_lpss_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.intel_lpss*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.intel_lpss* @dev_get_drvdata(%struct.device* %5)
  store %struct.intel_lpss* %6, %struct.intel_lpss** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LPSS_PRIV_REG_COUNT, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %13 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = mul i32 %15, 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %21 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %31 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LPSS_DEV_UART, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %37 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LPSS_PRIV_RESETS, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 0, i64 %40)
  br label %42

42:                                               ; preds = %35, %29
  ret i32 0
}

declare dso_local %struct.intel_lpss* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
