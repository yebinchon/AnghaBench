; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c___sdhci_msm_check_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c___sdhci_msm_check_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i32, i64, i32 }

@SDHCI_CTRL_VDD_180 = common dso_local global i32 0, align 4
@REQ_IO_LOW = common dso_local global i32 0, align 4
@REQ_IO_HIGH = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@REQ_BUS_OFF = common dso_local global i32 0, align 4
@REQ_BUS_ON = common dso_local global i32 0, align 4
@SDHCI_TRNS_READ = common dso_local global i32 0, align 4
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i32 0, align 4
@MMC_SEND_TUNING_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32, i32)* @__sdhci_msm_check_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sdhci_msm_check_write(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_msm_host*, align 8
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %7, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %13 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.sdhci_msm_host* %13, %struct.sdhci_msm_host** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %82 [
    i32 131, label %15
    i32 129, label %26
    i32 130, label %39
    i32 128, label %48
    i32 132, label %52
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SDHCI_CTRL_VDD_180, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @REQ_IO_LOW, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @REQ_IO_HIGH, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %9, align 4
  br label %82

26:                                               ; preds = %3
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @REQ_BUS_OFF, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %31, %26
  br label %82

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @REQ_BUS_OFF, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @REQ_BUS_ON, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %9, align 4
  br label %82

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %8, align 8
  %51 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %82

52:                                               ; preds = %3
  %53 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %8, align 8
  %54 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %82

58:                                               ; preds = %52
  %59 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %8, align 8
  %60 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SDHCI_TRNS_READ, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @SDHCI_GET_CMD(i32 %66)
  %68 = load i32, i32* @MMC_SEND_TUNING_BLOCK_HS200, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @SDHCI_GET_CMD(i32 %71)
  %73 = load i32, i32* @MMC_SEND_TUNING_BLOCK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %77 = call i32 @sdhci_msm_set_cdr(%struct.sdhci_host* %76, i32 1)
  br label %81

78:                                               ; preds = %70, %65, %58
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %80 = call i32 @sdhci_msm_set_cdr(%struct.sdhci_host* %79, i32 0)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %3, %81, %57, %48, %46, %38, %24
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %8, align 8
  %87 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = call i32 (...) @mb()
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @SDHCI_GET_CMD(i32) #1

declare dso_local i32 @sdhci_msm_set_cdr(%struct.sdhci_host*, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
