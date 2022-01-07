; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_dll_poll_ck_out_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_dll_poll_ck_out_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.sdhci_msm_offset = type { i64 }

@CORE_CK_OUT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: CK_OUT_EN bit is not %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @msm_dll_poll_ck_out_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_dll_poll_ck_out_en(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca %struct.sdhci_msm_offset*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 50, i64* %6, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 1
  %12 = load %struct.mmc_host*, %struct.mmc_host** %11, align 8
  store %struct.mmc_host* %12, %struct.mmc_host** %8, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %14 = call %struct.sdhci_msm_offset* @sdhci_priv_msm_offset(%struct.sdhci_host* %13)
  store %struct.sdhci_msm_offset* %14, %struct.sdhci_msm_offset** %9, align 8
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %9, align 8
  %19 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  %23 = load i32, i32* @CORE_CK_OUT_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %46, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %6, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %39 = call i32 @mmc_dev(%struct.mmc_host* %38)
  %40 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %41 = call i32 @mmc_hostname(%struct.mmc_host* %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %63

46:                                               ; preds = %33
  %47 = call i32 @udelay(i32 1)
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %49 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %9, align 8
  %52 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = call i32 @readl_relaxed(i64 %54)
  %56 = load i32, i32* @CORE_CK_OUT_EN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %7, align 4
  br label %29

62:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.sdhci_msm_offset* @sdhci_priv_msm_offset(%struct.sdhci_host*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
