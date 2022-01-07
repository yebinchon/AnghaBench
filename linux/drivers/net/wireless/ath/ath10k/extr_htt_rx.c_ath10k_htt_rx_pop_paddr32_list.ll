; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_pop_paddr32_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_pop_paddr32_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.ath10k*, %struct.TYPE_3__ }
%struct.ath10k = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.htt_rx_in_ord_ind = type { i32, i32, %struct.htt_rx_in_ord_msdu_desc* }
%struct.htt_rx_in_ord_msdu_desc = type { i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.htt_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64 }

@HTT_RX_IN_ORD_IND_INFO_OFFLOAD_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@RX_ATTENTION_FLAGS_MSDU_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"tried to pop an incomplete frame, oops!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*, %struct.htt_rx_in_ord_ind*, %struct.sk_buff_head*)* @ath10k_htt_rx_pop_paddr32_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_rx_pop_paddr32_list(%struct.ath10k_htt* %0, %struct.htt_rx_in_ord_ind* %1, %struct.sk_buff_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_htt*, align 8
  %6 = alloca %struct.htt_rx_in_ord_ind*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca %struct.htt_rx_in_ord_msdu_desc*, align 8
  %10 = alloca %struct.htt_rx_desc*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %5, align 8
  store %struct.htt_rx_in_ord_ind* %1, %struct.htt_rx_in_ord_ind** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  %16 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %17 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %16, i32 0, i32 0
  %18 = load %struct.ath10k*, %struct.ath10k** %17, align 8
  store %struct.ath10k* %18, %struct.ath10k** %8, align 8
  %19 = load %struct.htt_rx_in_ord_ind*, %struct.htt_rx_in_ord_ind** %6, align 8
  %20 = getelementptr inbounds %struct.htt_rx_in_ord_ind, %struct.htt_rx_in_ord_ind* %19, i32 0, i32 2
  %21 = load %struct.htt_rx_in_ord_msdu_desc*, %struct.htt_rx_in_ord_msdu_desc** %20, align 8
  store %struct.htt_rx_in_ord_msdu_desc* %21, %struct.htt_rx_in_ord_msdu_desc** %9, align 8
  %22 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load %struct.htt_rx_in_ord_ind*, %struct.htt_rx_in_ord_ind** %6, align 8
  %27 = getelementptr inbounds %struct.htt_rx_in_ord_ind, %struct.htt_rx_in_ord_ind* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__le16_to_cpu(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.htt_rx_in_ord_ind*, %struct.htt_rx_in_ord_ind** %6, align 8
  %31 = getelementptr inbounds %struct.htt_rx_in_ord_ind, %struct.htt_rx_in_ord_ind* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HTT_RX_IN_ORD_IND_INFO_OFFLOAD_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %123, %76, %3
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %12, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %126

43:                                               ; preds = %39
  %44 = load %struct.htt_rx_in_ord_msdu_desc*, %struct.htt_rx_in_ord_msdu_desc** %9, align 8
  %45 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc, %struct.htt_rx_in_ord_msdu_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__le32_to_cpu(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call %struct.sk_buff* @ath10k_htt_rx_pop_paddr(%struct.ath10k_htt* %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %11, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  %54 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %55 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %54)
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %127

58:                                               ; preds = %43
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %58
  %62 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %63 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = call i32 @ath10k_htt_rx_handle_amsdu_mon_32(%struct.ath10k_htt* %67, %struct.sk_buff* %68, %struct.htt_rx_in_ord_msdu_desc** %9)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %74 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %4, align 4
  br label %127

76:                                               ; preds = %66
  %77 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %77, %struct.sk_buff* %78)
  %80 = load %struct.htt_rx_in_ord_msdu_desc*, %struct.htt_rx_in_ord_msdu_desc** %9, align 8
  %81 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc, %struct.htt_rx_in_ord_msdu_desc* %80, i32 1
  store %struct.htt_rx_in_ord_msdu_desc* %81, %struct.htt_rx_in_ord_msdu_desc** %9, align 8
  br label %39

82:                                               ; preds = %61, %58
  %83 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %83, %struct.sk_buff* %84)
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %123, label %88

88:                                               ; preds = %82
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = bitcast i8* %92 to %struct.htt_rx_desc*
  store %struct.htt_rx_desc* %93, %struct.htt_rx_desc** %10, align 8
  %94 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %95 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %96 = call i32 @trace_ath10k_htt_rx_desc(%struct.ath10k* %94, %struct.htt_rx_desc* %95, i32 4)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %98 = call i32 @skb_put(%struct.sk_buff* %97, i32 4)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %100 = call i32 @skb_pull(%struct.sk_buff* %99, i32 4)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %102 = load %struct.htt_rx_in_ord_msdu_desc*, %struct.htt_rx_in_ord_msdu_desc** %9, align 8
  %103 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc, %struct.htt_rx_in_ord_msdu_desc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @__le16_to_cpu(i32 %104)
  %106 = call i32 @skb_put(%struct.sk_buff* %101, i32 %105)
  %107 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %108 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @__le32_to_cpu(i32 %110)
  %112 = load i32, i32* @RX_ATTENTION_FLAGS_MSDU_DONE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %88
  %116 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %117 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %116, i32 0, i32 0
  %118 = load %struct.ath10k*, %struct.ath10k** %117, align 8
  %119 = call i32 @ath10k_warn(%struct.ath10k* %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %127

122:                                              ; preds = %88
  br label %123

123:                                              ; preds = %122, %82
  %124 = load %struct.htt_rx_in_ord_msdu_desc*, %struct.htt_rx_in_ord_msdu_desc** %9, align 8
  %125 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc, %struct.htt_rx_in_ord_msdu_desc* %124, i32 1
  store %struct.htt_rx_in_ord_msdu_desc* %125, %struct.htt_rx_in_ord_msdu_desc** %9, align 8
  br label %39

126:                                              ; preds = %39
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %115, %72, %53
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @ath10k_htt_rx_pop_paddr(%struct.ath10k_htt*, i32) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @ath10k_htt_rx_handle_amsdu_mon_32(%struct.ath10k_htt*, %struct.sk_buff*, %struct.htt_rx_in_ord_msdu_desc**) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @trace_ath10k_htt_rx_desc(%struct.ath10k*, %struct.htt_rx_desc*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
