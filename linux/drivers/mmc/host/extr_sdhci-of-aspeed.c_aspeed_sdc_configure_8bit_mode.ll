; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-aspeed.c_aspeed_sdc_configure_8bit_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-aspeed.c_aspeed_sdc_configure_8bit_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_sdc = type { i32, i64 }
%struct.aspeed_sdhci = type { i32 }

@ASPEED_SDC_INFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_sdc*, %struct.aspeed_sdhci*, i32)* @aspeed_sdc_configure_8bit_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_sdc_configure_8bit_mode(%struct.aspeed_sdc* %0, %struct.aspeed_sdhci* %1, i32 %2) #0 {
  %4 = alloca %struct.aspeed_sdc*, align 8
  %5 = alloca %struct.aspeed_sdhci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aspeed_sdc* %0, %struct.aspeed_sdc** %4, align 8
  store %struct.aspeed_sdhci* %1, %struct.aspeed_sdhci** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.aspeed_sdc*, %struct.aspeed_sdc** %4, align 8
  %9 = getelementptr inbounds %struct.aspeed_sdc, %struct.aspeed_sdc* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.aspeed_sdc*, %struct.aspeed_sdc** %4, align 8
  %12 = getelementptr inbounds %struct.aspeed_sdc, %struct.aspeed_sdc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ASPEED_SDC_INFO, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.aspeed_sdhci*, %struct.aspeed_sdhci** %5, align 8
  %21 = getelementptr inbounds %struct.aspeed_sdhci, %struct.aspeed_sdhci* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.aspeed_sdhci*, %struct.aspeed_sdhci** %5, align 8
  %27 = getelementptr inbounds %struct.aspeed_sdhci, %struct.aspeed_sdhci* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %25, %19
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.aspeed_sdc*, %struct.aspeed_sdc** %4, align 8
  %35 = getelementptr inbounds %struct.aspeed_sdc, %struct.aspeed_sdc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ASPEED_SDC_INFO, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load %struct.aspeed_sdc*, %struct.aspeed_sdc** %4, align 8
  %41 = getelementptr inbounds %struct.aspeed_sdc, %struct.aspeed_sdc* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
