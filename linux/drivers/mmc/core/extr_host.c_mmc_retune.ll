; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_host.c_mmc_retune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_host.c_mmc_retune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_retune(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

14:                                               ; preds = %10
  %15 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19, %14
  store i32 0, i32* %2, align 4
  br label %71

30:                                               ; preds = %24
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mmc_hs400_to_hs200(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %67

49:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mmc_execute_tuning(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %67

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %63 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mmc_hs200_to_hs400(i32 %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %57, %48
  %68 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %69 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %29, %13
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @mmc_hs400_to_hs200(i32) #1

declare dso_local i32 @mmc_execute_tuning(i32) #1

declare dso_local i32 @mmc_hs200_to_hs400(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
