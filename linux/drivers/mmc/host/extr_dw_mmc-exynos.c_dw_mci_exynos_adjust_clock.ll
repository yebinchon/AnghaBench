; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_adjust_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_adjust_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i64, i64, i32, i32, %struct.dw_mci_exynos_priv_data* }
%struct.dw_mci_exynos_priv_data = type { i32 }

@EXYNOS_CCLKIN_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to set clk-rate %u error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, i32)* @dw_mci_exynos_adjust_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_exynos_adjust_clock(%struct.dw_mci* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_mci_exynos_priv_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %10 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %9, i32 0, i32 4
  %11 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %10, align 8
  store %struct.dw_mci_exynos_priv_data* %11, %struct.dw_mci_exynos_priv_data** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %16 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  br label %71

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EXYNOS_CCLKIN_MIN, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @EXYNOS_CCLKIN_MIN, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %30 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %71

34:                                               ; preds = %27
  %35 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %36 = call i32 @dw_mci_exynos_get_ciu_div(%struct.dw_mci* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %38 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul i32 %40, %41
  %43 = call i32 @clk_set_rate(i32 %39, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %48 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %34
  %56 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %57 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @clk_get_rate(i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = udiv i64 %60, %62
  %64 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %65 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %5, align 8
  %68 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %70 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %55, %33, %20
  ret void
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dw_mci_exynos_get_ciu_div(%struct.dw_mci*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
