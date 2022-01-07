; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-devtrace.h_iwl_rx_trace_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-devtrace.h_iwl_rx_trace_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i64, i32 }
%struct.iwl_cmd_header = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_trans*, i8*, i64, i64*)* @iwl_rx_trace_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_rx_trace_len(%struct.iwl_trans* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.iwl_cmd_header*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i64, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_cmd_header*
  store %struct.iwl_cmd_header* %17, %struct.iwl_cmd_header** %10, align 8
  store %struct.ieee80211_hdr* null, %struct.ieee80211_hdr** %11, align 8
  %18 = load %struct.iwl_cmd_header*, %struct.iwl_cmd_header** %10, align 8
  %19 = getelementptr inbounds %struct.iwl_cmd_header, %struct.iwl_cmd_header* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %5, align 8
  br label %63

27:                                               ; preds = %4
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add i64 8, %31
  store i64 %32, i64* %12, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i64, i64* %12, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.iwl_cmd_header*, %struct.iwl_cmd_header** %10, align 8
  %40 = bitcast %struct.iwl_cmd_header* %39 to i32*
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = bitcast i32* %42 to i8*
  %44 = bitcast i8* %43 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %44, %struct.ieee80211_hdr** %11, align 8
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ieee80211_is_data(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %5, align 8
  br label %63

52:                                               ; preds = %38
  %53 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %54 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add i64 12, %56
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ieee80211_hdrlen(i32 %60)
  %62 = add i64 %57, %61
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %52, %50, %25
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_hdrlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
