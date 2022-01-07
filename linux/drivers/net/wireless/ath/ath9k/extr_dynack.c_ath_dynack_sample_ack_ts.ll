; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dynack.c_ath_dynack_sample_ack_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dynack.c_ath_dynack_sample_ack_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_dynack }
%struct.ath_dynack = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32* }
%struct.sk_buff = type { i64 }
%struct.ath_common = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@ATH_DYN_BUF = common dso_local global i32 0, align 4
@DYNACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rx sample %u [h %u-t %u]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_dynack_sample_ack_ts(%struct.ath_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_dynack*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %10, i32 0, i32 0
  store %struct.ath_dynack* %11, %struct.ath_dynack** %7, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %12)
  store %struct.ath_common* %13, %struct.ath_common** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %17, %struct.ieee80211_hdr** %9, align 8
  %18 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %19 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ath_dynack_bssidmask(%struct.ath_hw* %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %3
  br label %84

30:                                               ; preds = %22
  %31 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %32 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %36 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %40 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32 %34, i32* %43, align 4
  %44 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %45 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @ATH_DYN_BUF, align 4
  %49 = call i32 @INCR(i64 %47, i32 %48)
  %50 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %51 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %55 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %30
  %60 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %61 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @ATH_DYN_BUF, align 4
  %65 = call i32 @INCR(i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %30
  %67 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %68 = load i32, i32* @DYNACK, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %71 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %75 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ath_dbg(%struct.ath_common* %67, i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %69, i64 %73, i64 %77)
  %79 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %80 = call i32 @ath_dynack_compute_to(%struct.ath_hw* %79)
  %81 = load %struct.ath_dynack*, %struct.ath_dynack** %7, align 8
  %82 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_bh(i32* %82)
  br label %84

84:                                               ; preds = %66, %29
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dynack_bssidmask(%struct.ath_hw*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @INCR(i64, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @ath_dynack_compute_to(%struct.ath_hw*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
