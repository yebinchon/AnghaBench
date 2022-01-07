; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath_gen_timer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath_gen_timer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_gen_timer = type { i64, void (i8*)*, void (i8*)*, i8* }
%struct.ath_hw = type { %struct.ath_gen_timer_table }
%struct.ath_gen_timer_table = type { i32, %struct.ath_gen_timer** }

@AR_FIRST_NDP_TIMER = common dso_local global i64 0, align 8
@ATH_MAX_GEN_TIMER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath_gen_timer* @ath_gen_timer_alloc(%struct.ath_hw* %0, void (i8*)* %1, void (i8*)* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.ath_gen_timer*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca void (i8*)*, align 8
  %9 = alloca void (i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ath_gen_timer_table*, align 8
  %13 = alloca %struct.ath_gen_timer*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %7, align 8
  store void (i8*)* %1, void (i8*)** %8, align 8
  store void (i8*)* %2, void (i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  store %struct.ath_gen_timer_table* %15, %struct.ath_gen_timer_table** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @AR_FIRST_NDP_TIMER, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @ATH_MAX_GEN_TIMER, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %5
  store %struct.ath_gen_timer* null, %struct.ath_gen_timer** %6, align 8
  br label %73

24:                                               ; preds = %19
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @AR_FIRST_NDP_TIMER, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %30 = call i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store %struct.ath_gen_timer* null, %struct.ath_gen_timer** %6, align 8
  br label %73

33:                                               ; preds = %28, %24
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.ath_gen_timer* @kzalloc(i32 32, i32 %34)
  store %struct.ath_gen_timer* %35, %struct.ath_gen_timer** %13, align 8
  %36 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %13, align 8
  %37 = icmp eq %struct.ath_gen_timer* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store %struct.ath_gen_timer* null, %struct.ath_gen_timer** %6, align 8
  br label %73

39:                                               ; preds = %33
  %40 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %13, align 8
  %41 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %12, align 8
  %42 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %41, i32 0, i32 1
  %43 = load %struct.ath_gen_timer**, %struct.ath_gen_timer*** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.ath_gen_timer*, %struct.ath_gen_timer** %43, i64 %44
  store %struct.ath_gen_timer* %40, %struct.ath_gen_timer** %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %13, align 8
  %48 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load void (i8*)*, void (i8*)** %8, align 8
  %50 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %13, align 8
  %51 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %50, i32 0, i32 1
  store void (i8*)* %49, void (i8*)** %51, align 8
  %52 = load void (i8*)*, void (i8*)** %9, align 8
  %53 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %13, align 8
  %54 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %53, i32 0, i32 2
  store void (i8*)* %52, void (i8*)** %54, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %13, align 8
  %57 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @AR_FIRST_NDP_TIMER, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %39
  %62 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %12, align 8
  %63 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %12, align 8
  %68 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %70 = call i32 @ath9k_hw_gen_timer_start_tsf2(%struct.ath_hw* %69)
  br label %71

71:                                               ; preds = %66, %61, %39
  %72 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %13, align 8
  store %struct.ath_gen_timer* %72, %struct.ath_gen_timer** %6, align 8
  br label %73

73:                                               ; preds = %71, %38, %32, %23
  %74 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  ret %struct.ath_gen_timer* %74
}

declare dso_local i32 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local %struct.ath_gen_timer* @kzalloc(i32, i32) #1

declare dso_local i32 @ath9k_hw_gen_timer_start_tsf2(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
