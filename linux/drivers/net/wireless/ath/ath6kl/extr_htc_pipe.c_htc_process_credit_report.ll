; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_htc_process_credit_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_htc_process_credit_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.htc_endpoint* }
%struct.htc_endpoint = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.htc_credit_report = type { i64, i64 }

@ENDPOINT_MAX = common dso_local global i64 0, align 8
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Report indicated %d credits to distribute\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_credit_report*, i32, i32)* @htc_process_credit_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_process_credit_report(%struct.htc_target* %0, %struct.htc_credit_report* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.htc_credit_report*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.htc_endpoint*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.htc_credit_report* %1, %struct.htc_credit_report** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %13 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %74, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %79

19:                                               ; preds = %15
  %20 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %21 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ENDPOINT_MAX, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = call i32 @WARN_ON_ONCE(i32 1)
  %27 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %28 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  br label %86

30:                                               ; preds = %19
  %31 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %32 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %31, i32 0, i32 1
  %33 = load %struct.htc_endpoint*, %struct.htc_endpoint** %32, align 8
  %34 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %35 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %33, i64 %36
  store %struct.htc_endpoint* %37, %struct.htc_endpoint** %11, align 8
  %38 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %39 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %42 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %40
  store i64 %45, i64* %43, align 8
  %46 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %47 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %30
  %52 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %53 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %52, i32 0, i32 0
  %54 = call i64 @get_queue_depth(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %58 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %61 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %62 = call i32 @htc_try_send(%struct.htc_target* %60, %struct.htc_endpoint* %61, i32* null)
  %63 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %64 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %63, i32 0, i32 0
  %65 = call i32 @spin_lock_bh(i32* %64)
  br label %66

66:                                               ; preds = %56, %51, %30
  %67 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %68 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = load %struct.htc_credit_report*, %struct.htc_credit_report** %6, align 8
  %78 = getelementptr inbounds %struct.htc_credit_report, %struct.htc_credit_report* %77, i32 1
  store %struct.htc_credit_report* %78, %struct.htc_credit_report** %6, align 8
  br label %15

79:                                               ; preds = %15
  %80 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @ath6kl_dbg(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %84 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_bh(i32* %84)
  br label %86

86:                                               ; preds = %79, %25
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @get_queue_depth(i32*) #1

declare dso_local i32 @htc_try_send(%struct.htc_target*, %struct.htc_endpoint*, i32*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
