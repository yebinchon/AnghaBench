; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_clock_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_clock_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ahb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"clock(s) is/are not initialized\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to enable cmd clk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to enable ref clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to enable rtc clk: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_ahb_clock_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ahb_clock_enable(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_ahb*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = call %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k* %6)
  store %struct.ath10k_ahb* %7, %struct.ath10k_ahb** %4, align 8
  %8 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @IS_ERR_OR_NULL(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_ERR_OR_NULL(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR_OR_NULL(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %13, %1
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %74

30:                                               ; preds = %19
  %31 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %32 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_prepare_enable(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %74

41:                                               ; preds = %30
  %42 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %43 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_prepare_enable(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %69

52:                                               ; preds = %41
  %53 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %54 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_prepare_enable(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %64

63:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %76

64:                                               ; preds = %59
  %65 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %66 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @clk_disable_unprepare(i32 %67)
  br label %69

69:                                               ; preds = %64, %48
  %70 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %4, align 8
  %71 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @clk_disable_unprepare(i32 %72)
  br label %74

74:                                               ; preds = %69, %37, %25
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %63
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
