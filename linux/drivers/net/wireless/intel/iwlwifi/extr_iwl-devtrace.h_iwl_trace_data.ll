; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-devtrace.h_iwl_trace_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-devtrace.h_iwl_trace_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }

@ETH_P_PAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @iwl_trace_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trace_data(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %11, %struct.ieee80211_hdr** %4, align 8
  %12 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  store i32 24, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ieee80211_is_data(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @ieee80211_has_a4(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 6
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @ieee80211_is_data_qos(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 6
  store i32 %35, i32* %6, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 2
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = inttoptr i64 %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @ETH_P_PAE, align 4
  %52 = call i64 @cpu_to_be16(i32 %51)
  %53 = icmp ne i64 %50, %52
  br label %54

54:                                               ; preds = %42, %33
  %55 = phi i1 [ true, %33 ], [ %53, %42 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_has_a4(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
