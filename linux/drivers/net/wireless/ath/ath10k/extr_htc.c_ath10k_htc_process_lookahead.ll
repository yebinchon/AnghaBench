; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_process_lookahead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_process_lookahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ath10k_htc_lookahead_report = type { i32, i32, i32 }

@ATH10K_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"htc rx lookahead found pre_valid 0x%x post_valid 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htc*, %struct.ath10k_htc_lookahead_report*, i32, i32, i8*, i32*)* @ath10k_htc_process_lookahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htc_process_lookahead(%struct.ath10k_htc* %0, %struct.ath10k_htc_lookahead_report* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k_htc*, align 8
  %9 = alloca %struct.ath10k_htc_lookahead_report*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_htc* %0, %struct.ath10k_htc** %8, align 8
  store %struct.ath10k_htc_lookahead_report* %1, %struct.ath10k_htc_lookahead_report** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.ath10k_htc*, %struct.ath10k_htc** %8, align 8
  %16 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %15, i32 0, i32 0
  %17 = load %struct.ath10k*, %struct.ath10k** %16, align 8
  store %struct.ath10k* %17, %struct.ath10k** %14, align 8
  %18 = load %struct.ath10k_htc_lookahead_report*, %struct.ath10k_htc_lookahead_report** %9, align 8
  %19 = getelementptr inbounds %struct.ath10k_htc_lookahead_report, %struct.ath10k_htc_lookahead_report* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ath10k_htc_lookahead_report*, %struct.ath10k_htc_lookahead_report** %9, align 8
  %22 = getelementptr inbounds %struct.ath10k_htc_lookahead_report, %struct.ath10k_htc_lookahead_report* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %24, 255
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %52

28:                                               ; preds = %6
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  %36 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %37 = load %struct.ath10k_htc_lookahead_report*, %struct.ath10k_htc_lookahead_report** %9, align 8
  %38 = getelementptr inbounds %struct.ath10k_htc_lookahead_report, %struct.ath10k_htc_lookahead_report* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ath10k_htc_lookahead_report*, %struct.ath10k_htc_lookahead_report** %9, align 8
  %41 = getelementptr inbounds %struct.ath10k_htc_lookahead_report, %struct.ath10k_htc_lookahead_report* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ath10k_dbg(%struct.ath10k* %35, i32 %36, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i8*, i8** %12, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.ath10k_htc_lookahead_report*, %struct.ath10k_htc_lookahead_report** %9, align 8
  %47 = getelementptr inbounds %struct.ath10k_htc_lookahead_report, %struct.ath10k_htc_lookahead_report* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32* %45, i32 %48, i32 4)
  %50 = load i32*, i32** %13, align 8
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %34, %31, %28
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
