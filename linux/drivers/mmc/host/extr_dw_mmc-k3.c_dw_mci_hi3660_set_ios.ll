; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi3660_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-k3.c_dw_mci_hi3660_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i64, i64, i32, i32, %struct.k3_priv* }
%struct.k3_priv = type { i32 }
%struct.mmc_ios = type { i32, i32 }

@GENCLK_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to set rate %luHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.mmc_ios*)* @dw_mci_hi3660_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_hi3660_set_ios(%struct.dw_mci* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.k3_priv*, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %9 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %10 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %9, i32 0, i32 4
  %11 = load %struct.k3_priv*, %struct.k3_priv** %10, align 8
  store %struct.k3_priv* %11, %struct.k3_priv** %8, align 8
  %12 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.k3_priv*, %struct.k3_priv** %8, align 8
  %21 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %2
  br label %71

25:                                               ; preds = %16
  %26 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GENCLK_DIV, align 4
  %30 = add nsw i32 %29, 1
  %31 = mul nsw i32 %28, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  %33 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %34 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @clk_set_rate(i32 %35, i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %25
  %41 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %42 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %71

46:                                               ; preds = %25
  %47 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %48 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @clk_get_rate(i32 %49)
  store i64 %50, i64* %7, align 8
  %51 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %52 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dw_mci_hs_set_timing(%struct.dw_mci* %51, i32 %54, i32 -1)
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* @GENCLK_DIV, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %56, %59
  %61 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %62 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %64 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %66 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.k3_priv*, %struct.k3_priv** %8, align 8
  %70 = getelementptr inbounds %struct.k3_priv, %struct.k3_priv* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %46, %40, %24
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dw_mci_hs_set_timing(%struct.dw_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
