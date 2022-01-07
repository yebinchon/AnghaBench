; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_select_drive_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_select_drive_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.mmc_host* }
%struct.mmc_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mmc_card*, i32, i32, i32, i32*)* }

@SD_DRIVER_TYPE_B = common dso_local global i32 0, align 4
@MMC_CAP_DRIVER_TYPE_A = common dso_local global i32 0, align 4
@SD_DRIVER_TYPE_A = common dso_local global i32 0, align 4
@MMC_CAP_DRIVER_TYPE_C = common dso_local global i32 0, align 4
@SD_DRIVER_TYPE_C = common dso_local global i32 0, align 4
@MMC_CAP_DRIVER_TYPE_D = common dso_local global i32 0, align 4
@SD_DRIVER_TYPE_D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_select_drive_strength(%struct.mmc_card* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mmc_host*, align 8
  %11 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 0
  %14 = load %struct.mmc_host*, %struct.mmc_host** %13, align 8
  store %struct.mmc_host* %14, %struct.mmc_host** %10, align 8
  %15 = load i32, i32* @SD_DRIVER_TYPE_B, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.mmc_card*, i32, i32, i32, i32*)*, i32 (%struct.mmc_card*, i32, i32, i32, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.mmc_card*, i32, i32, i32, i32*)* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MMC_CAP_DRIVER_TYPE_A, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @SD_DRIVER_TYPE_A, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MMC_CAP_DRIVER_TYPE_C, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @SD_DRIVER_TYPE_C, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %48 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MMC_CAP_DRIVER_TYPE_D, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @SD_DRIVER_TYPE_D, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %59 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.mmc_card*, i32, i32, i32, i32*)*, i32 (%struct.mmc_card*, i32, i32, i32, i32*)** %61, align 8
  %63 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 %62(%struct.mmc_card* %63, i32 %64, i32 %65, i32 %66, i32* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %57, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
