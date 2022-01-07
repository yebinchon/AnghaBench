; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sd_search_final_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sd_search_final_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_usb_sdmmc = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Phase: [map:%x]\0A\00", align 1
@MAX_PHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Phase: [map:%x] [maxlen:%d] [final:%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_usb_sdmmc*, i64)* @sd_search_final_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_search_final_phase(%struct.rtsx_usb_sdmmc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_usb_sdmmc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rtsx_usb_sdmmc* %0, %struct.rtsx_usb_sdmmc** %4, align 8
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
  %14 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %15 = call i32 @sdmmc_dev(%struct.rtsx_usb_sdmmc* %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MAX_PHASE, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @get_phase_len(i64 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 1, %40 ]
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %47, 2
  %49 = add nsw i32 %46, %48
  %50 = load i32, i32* @MAX_PHASE, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %53 = call i32 @sdmmc_dev(%struct.rtsx_usb_sdmmc* %52)
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %45, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @sdmmc_dev(%struct.rtsx_usb_sdmmc*) #1

declare dso_local i32 @get_phase_len(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
