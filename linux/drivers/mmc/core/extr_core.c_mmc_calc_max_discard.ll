; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_calc_max_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_calc_max_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32, %struct.TYPE_2__, %struct.mmc_host* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_host = type { i64 }

@MMC_ERASE_ARG = common dso_local global i32 0, align 4
@MMC_TRIM_ARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: calculated max. discard sectors %u for timeout %u ms\0A\00", align 1
@MMC_ERASE_TIMEOUT_MS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_calc_max_discard(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %7 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %7, i32 0, i32 3
  %9 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  store %struct.mmc_host* %9, %struct.mmc_host** %4, align 8
  %10 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %11 = call i64 @mmc_card_mmc(%struct.mmc_card* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %2, align 4
  br label %70

24:                                               ; preds = %13, %1
  %25 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %26 = load i32, i32* @MMC_ERASE_ARG, align 4
  %27 = call i32 @mmc_do_calc_max_discard(%struct.mmc_card* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %29 = call i64 @mmc_can_trim(%struct.mmc_card* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %33 = load i32, i32* @MMC_TRIM_ARG, align 4
  %34 = call i32 @mmc_do_calc_max_discard(%struct.mmc_card* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %38
  br label %52

44:                                               ; preds = %24
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %44
  br label %52

52:                                               ; preds = %51, %43
  %53 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %54 = call i32 @mmc_hostname(%struct.mmc_host* %53)
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  br label %66

64:                                               ; preds = %52
  %65 = load i64, i64* @MMC_ERASE_TIMEOUT_MS, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i64 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i32 @mmc_do_calc_max_discard(%struct.mmc_card*, i32) #1

declare dso_local i64 @mmc_can_trim(%struct.mmc_card*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
