; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_calc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_calc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, i32 }
%struct.mmc_command = type { i32, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32 }

@SDHCI_QUIRK_BROKEN_TIMEOUT_VAL = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_DISABLE_HW_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Too large timeout 0x%x requested for CMD%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, %struct.mmc_command*, i32*)* @sdhci_calc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_calc_timeout(%struct.sdhci_host* %0, %struct.mmc_command* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %5, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  store i32 1, i32* %12, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SDHCI_QUIRK_BROKEN_TIMEOUT_VAL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 14, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %22 = icmp eq %struct.mmc_command* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 14, i32* %4, align 4
  br label %79

24:                                               ; preds = %20
  %25 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 2
  %27 = load %struct.mmc_data*, %struct.mmc_data** %26, align 8
  store %struct.mmc_data* %27, %struct.mmc_data** %9, align 8
  %28 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %29 = icmp ne %struct.mmc_data* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 14, i32* %4, align 4
  br label %79

36:                                               ; preds = %30, %24
  %37 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %38 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %39 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %40 = call i32 @sdhci_target_timeout(%struct.sdhci_host* %37, %struct.mmc_command* %38, %struct.mmc_data* %39)
  store i32 %40, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 8192000, %43
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %57, %36
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %54, 15
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %58

57:                                               ; preds = %49
  br label %45

58:                                               ; preds = %56, %45
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 15
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %63 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SDHCI_QUIRK2_DISABLE_HW_TIMEOUT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %61
  store i32 14, i32* %8, align 4
  br label %77

75:                                               ; preds = %58
  %76 = load i32*, i32** %7, align 8
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %35, %23, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @sdhci_target_timeout(%struct.sdhci_host*, %struct.mmc_command*, %struct.mmc_data*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
