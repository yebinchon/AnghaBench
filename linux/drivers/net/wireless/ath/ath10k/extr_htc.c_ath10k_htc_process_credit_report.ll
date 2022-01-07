; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_process_credit_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_process_credit_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc = type { i32, %struct.ath10k*, %struct.ath10k_htc_ep* }
%struct.ath10k = type { i32 }
%struct.ath10k_htc_ep = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ath10k.0*)* }
%struct.ath10k.0 = type opaque
%struct.ath10k_htc_credit_report = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Uneven credit report len %d\00", align 1
@ATH10K_HTC_EP_COUNT = common dso_local global i64 0, align 8
@ATH10K_DBG_HTC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"htc ep %d got %d credits (total %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_htc*, %struct.ath10k_htc_credit_report*, i32, i32)* @ath10k_htc_process_credit_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htc_process_credit_report(%struct.ath10k_htc* %0, %struct.ath10k_htc_credit_report* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath10k_htc*, align 8
  %6 = alloca %struct.ath10k_htc_credit_report*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath10k*, align 8
  %10 = alloca %struct.ath10k_htc_ep*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath10k_htc* %0, %struct.ath10k_htc** %5, align 8
  store %struct.ath10k_htc_credit_report* %1, %struct.ath10k_htc_credit_report** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %14 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %13, i32 0, i32 1
  %15 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  store %struct.ath10k* %15, %struct.ath10k** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = urem i64 %17, 16
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ath10k_warn(%struct.ath10k* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 16
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %30 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_bh(i32* %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %94, %24
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %99

36:                                               ; preds = %32
  %37 = load %struct.ath10k_htc_credit_report*, %struct.ath10k_htc_credit_report** %6, align 8
  %38 = getelementptr inbounds %struct.ath10k_htc_credit_report, %struct.ath10k_htc_credit_report* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ATH10K_HTC_EP_COUNT, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %99

43:                                               ; preds = %36
  %44 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %45 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %44, i32 0, i32 2
  %46 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %45, align 8
  %47 = load %struct.ath10k_htc_credit_report*, %struct.ath10k_htc_credit_report** %6, align 8
  %48 = getelementptr inbounds %struct.ath10k_htc_credit_report, %struct.ath10k_htc_credit_report* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %46, i64 %49
  store %struct.ath10k_htc_ep* %50, %struct.ath10k_htc_ep** %10, align 8
  %51 = load %struct.ath10k_htc_credit_report*, %struct.ath10k_htc_credit_report** %6, align 8
  %52 = getelementptr inbounds %struct.ath10k_htc_credit_report, %struct.ath10k_htc_credit_report* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %10, align 8
  %55 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  %60 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %61 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %62 = load %struct.ath10k_htc_credit_report*, %struct.ath10k_htc_credit_report** %6, align 8
  %63 = getelementptr inbounds %struct.ath10k_htc_credit_report, %struct.ath10k_htc_credit_report* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ath10k_htc_credit_report*, %struct.ath10k_htc_credit_report** %6, align 8
  %66 = getelementptr inbounds %struct.ath10k_htc_credit_report, %struct.ath10k_htc_credit_report* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %10, align 8
  %69 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ath10k_dbg(%struct.ath10k* %60, i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %67, i32 %70)
  %72 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %10, align 8
  %73 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.ath10k.0*)*, i32 (%struct.ath10k.0*)** %74, align 8
  %76 = icmp ne i32 (%struct.ath10k.0*)* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %43
  %78 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %79 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %10, align 8
  %82 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.ath10k.0*)*, i32 (%struct.ath10k.0*)** %83, align 8
  %85 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %86 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %85, i32 0, i32 1
  %87 = load %struct.ath10k*, %struct.ath10k** %86, align 8
  %88 = bitcast %struct.ath10k* %87 to %struct.ath10k.0*
  %89 = call i32 %84(%struct.ath10k.0* %88)
  %90 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %91 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %90, i32 0, i32 0
  %92 = call i32 @spin_lock_bh(i32* %91)
  br label %93

93:                                               ; preds = %77, %43
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = load %struct.ath10k_htc_credit_report*, %struct.ath10k_htc_credit_report** %6, align 8
  %98 = getelementptr inbounds %struct.ath10k_htc_credit_report, %struct.ath10k_htc_credit_report* %97, i32 1
  store %struct.ath10k_htc_credit_report* %98, %struct.ath10k_htc_credit_report** %6, align 8
  br label %32

99:                                               ; preds = %42, %32
  %100 = load %struct.ath10k_htc*, %struct.ath10k_htc** %5, align 8
  %101 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock_bh(i32* %101)
  ret void
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
