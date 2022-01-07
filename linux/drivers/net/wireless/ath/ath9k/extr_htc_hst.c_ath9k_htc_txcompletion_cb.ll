; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_txcompletion_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_txcompletion_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, %struct.htc_endpoint*, i32 }
%struct.htc_endpoint = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.sk_buff*, i64, i32)* }
%struct.sk_buff = type { i64 }
%struct.htc_frame_hdr = type { i64 }

@HTC_OP_CONFIG_PIPE_CREDITS = common dso_local global i32 0, align 4
@HTC_OP_START_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_txcompletion_cb(%struct.htc_target* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.htc_target*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.htc_endpoint*, align 8
  %8 = alloca %struct.htc_frame_hdr*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.htc_frame_hdr* null, %struct.htc_frame_hdr** %8, align 8
  %9 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %10 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HTC_OP_CONFIG_PIPE_CREDITS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %17 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %16, i32 0, i32 2
  %18 = call i32 @complete(i32* %17)
  %19 = load i32, i32* @HTC_OP_CONFIG_PIPE_CREDITS, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %22 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %84

25:                                               ; preds = %3
  %26 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %27 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @HTC_OP_START_WAIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %34 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %33, i32 0, i32 2
  %35 = call i32 @complete(i32* %34)
  %36 = load i32, i32* @HTC_OP_START_WAIT, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %39 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %84

42:                                               ; preds = %25
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %83

45:                                               ; preds = %42
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %49, %struct.htc_frame_hdr** %8, align 8
  %50 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %51 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %50, i32 0, i32 1
  %52 = load %struct.htc_endpoint*, %struct.htc_endpoint** %51, align 8
  %53 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %8, align 8
  %54 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %52, i64 %55
  store %struct.htc_endpoint* %56, %struct.htc_endpoint** %7, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call i32 @skb_pull(%struct.sk_buff* %57, i32 8)
  %59 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %60 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32 (i32, %struct.sk_buff*, i64, i32)*, i32 (i32, %struct.sk_buff*, i64, i32)** %61, align 8
  %63 = icmp ne i32 (i32, %struct.sk_buff*, i64, i32)* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %45
  %65 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %66 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (i32, %struct.sk_buff*, i64, i32)*, i32 (i32, %struct.sk_buff*, i64, i32)** %67, align 8
  %69 = load %struct.htc_endpoint*, %struct.htc_endpoint** %7, align 8
  %70 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %8, align 8
  %75 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 %68(i32 %72, %struct.sk_buff* %73, i64 %76, i32 %77)
  br label %82

79:                                               ; preds = %45
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %79, %64
  br label %83

83:                                               ; preds = %82, %42
  br label %87

84:                                               ; preds = %32, %15
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = call i32 @kfree_skb(%struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %84, %83
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
