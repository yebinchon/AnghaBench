; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_search_final_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_search_final_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_sdmmc = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"phase error: [map:%x]\0A\00", align 1
@RTSX_PHASE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"phase: [map:%x] [maxlen:%d] [final:%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_pci_sdmmc*, i64)* @sd_search_final_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_search_final_phase(%struct.realtek_pci_sdmmc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.realtek_pci_sdmmc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.realtek_pci_sdmmc* %0, %struct.realtek_pci_sdmmc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 255, i32* %10, align 4
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %15 = call i32 @sdmmc_dev(%struct.realtek_pci_sdmmc* %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @RTSX_PHASE_MAX, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @sd_get_phase_len(i64 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  br label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 1, %39 ]
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* @RTSX_PHASE_MAX, align 4
  %50 = srem i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %52 = call i32 @sdmmc_dev(%struct.realtek_pci_sdmmc* %51)
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %44, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @sdmmc_dev(%struct.realtek_pci_sdmmc*) #1

declare dso_local i32 @sd_get_phase_len(i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
