; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_remove_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_remove_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64*, i32 }

@ATH6KL_DBG_TRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"deleting all station\0A\00", align 1
@AP_MAX_NUM_STA = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"deleting station %pM aid=%d reason=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath6kl*, i64*, i32)* @ath6kl_remove_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath6kl_remove_sta(%struct.ath6kl* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = call i64 @is_zero_ether_addr(i64* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* %9, align 8
  store i64 %14, i64* %4, align 8
  br label %84

15:                                               ; preds = %3
  %16 = load i64*, i64** %6, align 8
  %17 = call i64 @is_broadcast_ether_addr(i64* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %21 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %41, %19
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @AP_MAX_NUM_STA, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i64 @is_zero_ether_addr(i64* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @ath6kl_sta_cleanup(%struct.ath6kl* %37, i64 %38)
  store i64 1, i64* %9, align 8
  br label %40

40:                                               ; preds = %36, %26
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %22

44:                                               ; preds = %22
  br label %82

45:                                               ; preds = %15
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %78, %45
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @AP_MAX_NUM_STA, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  %51 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %52 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = load i32, i32* @ETH_ALEN, align 4
  %60 = call i64 @memcmp(i64* %57, i64* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %50
  %63 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %64 = load i64*, i64** %6, align 8
  %65 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %66 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64* %64, i32 %71, i32 %72)
  %74 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @ath6kl_sta_cleanup(%struct.ath6kl* %74, i64 %75)
  store i64 1, i64* %9, align 8
  br label %81

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %46

81:                                               ; preds = %62, %46
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %82, %13
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local i64 @is_zero_ether_addr(i64*) #1

declare dso_local i64 @is_broadcast_ether_addr(i64*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @ath6kl_sta_cleanup(%struct.ath6kl*, i64) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
