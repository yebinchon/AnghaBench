; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_find_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_find_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_sta = type { i32 }
%struct.ath6kl_vif = type { i64, %struct.ath6kl* }
%struct.ath6kl = type { %struct.ath6kl_sta* }

@AP_NETWORK = common dso_local global i64 0, align 8
@AP_MAX_NUM_STA = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath6kl_sta* @ath6kl_find_sta(%struct.ath6kl_vif* %0, i64* %1) #0 {
  %3 = alloca %struct.ath6kl_sta*, align 8
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ath6kl*, align 8
  %7 = alloca %struct.ath6kl_sta*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %11 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %10, i32 0, i32 1
  %12 = load %struct.ath6kl*, %struct.ath6kl** %11, align 8
  store %struct.ath6kl* %12, %struct.ath6kl** %6, align 8
  store %struct.ath6kl_sta* null, %struct.ath6kl_sta** %7, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = call i64 @is_zero_ether_addr(i64* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.ath6kl_sta* null, %struct.ath6kl_sta** %3, align 8
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %19 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AP_NETWORK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* @AP_MAX_NUM_STA, align 8
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 0, %25 ]
  store i64 %27, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %51, %26
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load i64*, i64** %5, align 8
  %34 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 0
  %36 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %36, i64 %37
  %39 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i64 @memcmp(i64* %33, i32 %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %46 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %45, i32 0, i32 0
  %47 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %47, i64 %48
  store %struct.ath6kl_sta* %49, %struct.ath6kl_sta** %7, align 8
  br label %54

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %8, align 8
  br label %28

54:                                               ; preds = %44, %28
  %55 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %7, align 8
  store %struct.ath6kl_sta* %55, %struct.ath6kl_sta** %3, align 8
  br label %56

56:                                               ; preds = %54, %16
  %57 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %3, align 8
  ret %struct.ath6kl_sta* %57
}

declare dso_local i64 @is_zero_ether_addr(i64*) #1

declare dso_local i64 @memcmp(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
