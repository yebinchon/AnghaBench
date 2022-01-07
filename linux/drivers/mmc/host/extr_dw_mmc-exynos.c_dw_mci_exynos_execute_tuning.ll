; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-exynos.c_dw_mci_exynos_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci_slot = type { %struct.mmc_host*, %struct.dw_mci* }
%struct.mmc_host = type { i32 }
%struct.dw_mci = type { %struct.dw_mci_exynos_priv_data* }
%struct.dw_mci_exynos_priv_data = type { i64 }

@TMOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci_slot*, i32)* @dw_mci_exynos_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_exynos_execute_tuning(%struct.dw_mci_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_mci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_mci*, align 8
  %6 = alloca %struct.dw_mci_exynos_priv_data*, align 8
  %7 = alloca %struct.mmc_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dw_mci_slot* %0, %struct.dw_mci_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %14 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %13, i32 0, i32 1
  %15 = load %struct.dw_mci*, %struct.dw_mci** %14, align 8
  store %struct.dw_mci* %15, %struct.dw_mci** %5, align 8
  %16 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %17 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %16, i32 0, i32 0
  %18 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %17, align 8
  store %struct.dw_mci_exynos_priv_data* %18, %struct.dw_mci_exynos_priv_data** %6, align 8
  %19 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %20 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %19, i32 0, i32 0
  %21 = load %struct.mmc_host*, %struct.mmc_host** %20, align 8
  store %struct.mmc_host* %21, %struct.mmc_host** %7, align 8
  store i32 0, i32* %10, align 4
  store i64 -1, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %23 = call i32 @dw_mci_exynos_get_clksmpl(%struct.dw_mci* %22)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %40, %2
  %25 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %26 = load i32, i32* @TMOUT, align 4
  %27 = call i32 @mci_writel(%struct.dw_mci* %25, i32 %26, i32 -1)
  %28 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %29 = call i32 @dw_mci_exynos_move_next_clksmpl(%struct.dw_mci* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mmc_send_tuning(%struct.mmc_host* %30, i32 %31, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %34, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %24, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @dw_mci_exynos_get_best_clksmpl(i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @dw_mci_exynos_set_clksmpl(%struct.dw_mci* %50, i64 %51)
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.dw_mci_exynos_priv_data*, %struct.dw_mci_exynos_priv_data** %6, align 8
  %55 = getelementptr inbounds %struct.dw_mci_exynos_priv_data, %struct.dw_mci_exynos_priv_data* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32, i32* %12, align 4
  ret i32 %60
}

declare dso_local i32 @dw_mci_exynos_get_clksmpl(%struct.dw_mci*) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @dw_mci_exynos_move_next_clksmpl(%struct.dw_mci*) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local i64 @dw_mci_exynos_get_best_clksmpl(i32) #1

declare dso_local i32 @dw_mci_exynos_set_clksmpl(%struct.dw_mci*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
