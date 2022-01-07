; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_rx_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_ath9k_htc_rx_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.htc_endpoint* }
%struct.htc_endpoint = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.sk_buff*, i32)* }
%struct.sk_buff = type { i64 }
%struct.htc_frame_hdr = type { i32, i32, i64* }

@ENDPOINT_MAX = common dso_local global i32 0, align 4
@USB_REG_IN_PIPE = common dso_local global i64 0, align 8
@ENDPOINT0 = common dso_local global i32 0, align 4
@HTC_FLAGS_RECV_TRAILER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_rx_msg(%struct.htc_target* %0, %struct.sk_buff* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.htc_frame_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.htc_endpoint*, align 8
  %12 = alloca i32*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %14 = icmp ne %struct.htc_target* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %4
  br label %143

19:                                               ; preds = %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %23, %struct.htc_frame_hdr** %9, align 8
  %24 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 153
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @ath9k_htc_fw_panic_report(%struct.htc_target* %30, %struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  br label %143

35:                                               ; preds = %19
  %36 = load i32, i32* %10, align 4
  %37 = icmp ult i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ENDPOINT_MAX, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38, %35
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @USB_REG_IN_PIPE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %47)
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %143

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ENDPOINT0, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %99

57:                                               ; preds = %53
  %58 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %59 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HTC_FLAGS_RECV_TRAILER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32_to_cpu(i32 %69)
  %71 = icmp eq i32 %70, 12976128
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 4
  %77 = inttoptr i64 %76 to %struct.htc_frame_hdr*
  store %struct.htc_frame_hdr* %77, %struct.htc_frame_hdr** %9, align 8
  br label %78

78:                                               ; preds = %72, %64
  br label %79

79:                                               ; preds = %78, %57
  %80 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %81 = bitcast %struct.htc_frame_hdr* %80 to i8*
  %82 = getelementptr i8, i8* %81, i64 16
  %83 = bitcast i8* %82 to i32*
  store i32* %83, i32** %12, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be16_to_cpu(i32 %85)
  switch i32 %86, label %95 [
    i32 128, label %87
    i32 129, label %91
  ]

87:                                               ; preds = %79
  %88 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %89 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %90 = call i32 @htc_process_target_rdy(%struct.htc_target* %88, %struct.htc_frame_hdr* %89)
  br label %96

91:                                               ; preds = %79
  %92 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %93 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %94 = call i32 @htc_process_conn_rsp(%struct.htc_target* %92, %struct.htc_frame_hdr* %93)
  br label %96

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %91, %87
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call i32 @kfree_skb(%struct.sk_buff* %97)
  br label %143

99:                                               ; preds = %53
  %100 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %101 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @HTC_FLAGS_RECV_TRAILER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.htc_frame_hdr*, %struct.htc_frame_hdr** %9, align 8
  %110 = getelementptr inbounds %struct.htc_frame_hdr, %struct.htc_frame_hdr* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %108, %113
  %115 = call i32 @skb_trim(%struct.sk_buff* %107, i64 %114)
  br label %116

116:                                              ; preds = %106, %99
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = call i32 @skb_pull(%struct.sk_buff* %117, i32 16)
  %119 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %120 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %119, i32 0, i32 0
  %121 = load %struct.htc_endpoint*, %struct.htc_endpoint** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %121, i64 %123
  store %struct.htc_endpoint* %124, %struct.htc_endpoint** %11, align 8
  %125 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %126 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %127, align 8
  %129 = icmp ne i32 (i32, %struct.sk_buff*, i32)* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %116
  %131 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %132 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %133, align 8
  %135 = load %struct.htc_endpoint*, %struct.htc_endpoint** %11, align 8
  %136 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 %134(i32 %138, %struct.sk_buff* %139, i32 %140)
  br label %142

142:                                              ; preds = %130, %116
  br label %143

143:                                              ; preds = %18, %29, %52, %142, %96
  ret void
}

declare dso_local i32 @ath9k_htc_fw_panic_report(%struct.htc_target*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @htc_process_target_rdy(%struct.htc_target*, %struct.htc_frame_hdr*) #1

declare dso_local i32 @htc_process_conn_rsp(%struct.htc_target*, %struct.htc_frame_hdr*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
