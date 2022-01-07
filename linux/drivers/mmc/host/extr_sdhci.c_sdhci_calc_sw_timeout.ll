; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_calc_sw_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci.c_sdhci_calc_sw_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { i64, %struct.mmc_ios }
%struct.mmc_ios = type { i32 }
%struct.mmc_command = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@MMC_CMD_TRANSFER_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, %struct.mmc_command*)* @sdhci_calc_sw_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_calc_sw_timeout(%struct.sdhci_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca %struct.mmc_ios*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %13 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %15 = load %struct.mmc_data*, %struct.mmc_data** %14, align 8
  store %struct.mmc_data* %15, %struct.mmc_data** %5, align 8
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %16, i32 0, i32 2
  %18 = load %struct.mmc_host*, %struct.mmc_host** %17, align 8
  store %struct.mmc_host* %18, %struct.mmc_host** %6, align 8
  %19 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 1
  store %struct.mmc_ios* %20, %struct.mmc_ios** %7, align 8
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %8, align 1
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %27 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %28 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %29 = call i32 @sdhci_target_timeout(%struct.sdhci_host* %26, %struct.mmc_command* %27, %struct.mmc_data* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @NSEC_PER_USEC, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %34 = icmp ne %struct.mmc_data* %33, null
  br i1 %34, label %35, label %75

35:                                               ; preds = %2
  %36 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %37 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 2
  %41 = load %struct.mmc_host*, %struct.mmc_host** %40, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %51

46:                                               ; preds = %35
  %47 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %48 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = zext i32 %49 to i64
  br label %51

51:                                               ; preds = %46, %45
  %52 = phi i64 [ %43, %45 ], [ %50, %46 ]
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @NSEC_PER_SEC, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = sdiv i32 8, %58
  %60 = mul nsw i32 %56, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @do_div(i32 %61, i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %12, align 4
  %66 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %74 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %2
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %78 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %51
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %81 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i64, i64* @MMC_CMD_TRANSFER_TIME, align 8
  %86 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %87 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  br label %92

92:                                               ; preds = %84, %79
  ret void
}

declare dso_local i32 @sdhci_target_timeout(%struct.sdhci_host*, %struct.mmc_command*, %struct.mmc_data*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
