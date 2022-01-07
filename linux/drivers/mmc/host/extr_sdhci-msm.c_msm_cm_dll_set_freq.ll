; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_cm_dll_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_msm_cm_dll_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64 }
%struct.sdhci_msm_offset = type { i64 }

@CMUX_SHIFT_PHASE_MASK = common dso_local global i32 0, align 4
@CMUX_SHIFT_PHASE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @msm_cm_dll_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_cm_dll_set_freq(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_msm_offset*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %7 = call %struct.sdhci_msm_offset* @sdhci_priv_msm_offset(%struct.sdhci_host* %6)
  store %struct.sdhci_msm_offset* %7, %struct.sdhci_msm_offset** %5, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %9 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %10, 112000000
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %15 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %16, 125000000
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %61

19:                                               ; preds = %13
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %21 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 137000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 2, i32* %3, align 4
  br label %60

25:                                               ; preds = %19
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %27 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 150000000
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 3, i32* %3, align 4
  br label %59

31:                                               ; preds = %25
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 %34, 162000000
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 4, i32* %3, align 4
  br label %58

37:                                               ; preds = %31
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %40, 175000000
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 5, i32* %3, align 4
  br label %57

43:                                               ; preds = %37
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %45 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sle i32 %46, 187000000
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 6, i32* %3, align 4
  br label %56

49:                                               ; preds = %43
  %50 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %51 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sle i32 %52, 200000000
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 7, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %42
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58, %30
  br label %60

60:                                               ; preds = %59, %24
  br label %61

61:                                               ; preds = %60, %18
  br label %62

62:                                               ; preds = %61, %12
  %63 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %64 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %5, align 8
  %67 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = call i32 @readl_relaxed(i64 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @CMUX_SHIFT_PHASE_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @CMUX_SHIFT_PHASE_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %82 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %5, align 8
  %85 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = call i32 @writel_relaxed(i32 %80, i64 %87)
  ret void
}

declare dso_local %struct.sdhci_msm_offset* @sdhci_priv_msm_offset(%struct.sdhci_host*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
