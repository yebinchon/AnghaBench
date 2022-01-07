; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_slice_amsdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_slice_amsdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggr_info = type { i32 }
%struct.rxtid = type { i32 }
%struct.sk_buff = type { i32, i32* }
%struct.ethhdr = type { i32 }

@MIN_MSDU_SUBFRAME_PAYLOAD_LEN = common dso_local global i32 0, align 4
@MAX_MSDU_SUBFRAME_PAYLOAD_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"802.3 AMSDU frame bound check failed. len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no buffer available\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dot3_2_dix error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aggr_info*, %struct.rxtid*, %struct.sk_buff*)* @aggr_slice_amsdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggr_slice_amsdu(%struct.aggr_info* %0, %struct.rxtid* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.aggr_info*, align 8
  %5 = alloca %struct.rxtid*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.aggr_info* %0, %struct.aggr_info** %4, align 8
  store %struct.rxtid* %1, %struct.rxtid** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 4, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %13, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %83, %3
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %93

29:                                               ; preds = %25
  %30 = load i32*, i32** %13, align 8
  %31 = bitcast i32* %30 to %struct.ethhdr*
  store %struct.ethhdr* %31, %struct.ethhdr** %8, align 8
  %32 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %33 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be16_to_cpu(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MIN_MSDU_SUBFRAME_PAYLOAD_LEN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MAX_MSDU_SUBFRAME_PAYLOAD_LEN, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %29
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %93

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.aggr_info*, %struct.aggr_info** %4, align 8
  %51 = call %struct.sk_buff* @aggr_get_free_skb(%struct.aggr_info* %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %93

56:                                               ; preds = %46
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @memcpy(i32* %59, i32* %60, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @skb_put(%struct.sk_buff* %63, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = call i64 @ath6kl_wmi_dot3_2_dix(%struct.sk_buff* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call i32 @dev_kfree_skb(%struct.sk_buff* %71)
  br label %93

73:                                               ; preds = %56
  %74 = load %struct.rxtid*, %struct.rxtid** %5, align 8
  %75 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %74, i32 0, i32 0
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = call i32 @skb_queue_tail(i32* %75, %struct.sk_buff* %76)
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %93

83:                                               ; preds = %73
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ALIGN(i32 %84, i32 4)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %13, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %12, align 4
  br label %25

93:                                               ; preds = %82, %69, %54, %43, %25
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = call i32 @dev_kfree_skb(%struct.sk_buff* %94)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ath6kl_err(i8*, ...) #1

declare dso_local %struct.sk_buff* @aggr_get_free_skb(%struct.aggr_info*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @ath6kl_wmi_dot3_2_dix(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
