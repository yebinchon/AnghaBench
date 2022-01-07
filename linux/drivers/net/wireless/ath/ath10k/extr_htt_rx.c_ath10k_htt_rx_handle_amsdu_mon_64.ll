; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_handle_amsdu_mon_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_handle_amsdu_mon_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.sk_buff = type { %struct.sk_buff*, i64, i64 }
%struct.htt_rx_in_ord_msdu_desc_ext = type { i32, i64, i32 }
%struct.htt_rx_desc = type { i32 }

@HTT_RX_MSDU_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid amsdu len %u, left %d\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to pop frag-1 paddr: 0x%llx\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@HTT_RX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to pop frag-n paddr: 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*, %struct.sk_buff*, %struct.htt_rx_in_ord_msdu_desc_ext**)* @ath10k_htt_rx_handle_amsdu_mon_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_rx_handle_amsdu_mon_64(%struct.ath10k_htt* %0, %struct.sk_buff* %1, %struct.htt_rx_in_ord_msdu_desc_ext** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_htt*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.htt_rx_in_ord_msdu_desc_ext**, align 8
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.htt_rx_in_ord_msdu_desc_ext*, align 8
  %14 = alloca %struct.htt_rx_desc*, align 8
  %15 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.htt_rx_in_ord_msdu_desc_ext** %2, %struct.htt_rx_in_ord_msdu_desc_ext*** %7, align 8
  %16 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %17 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %16, i32 0, i32 0
  %18 = load %struct.ath10k*, %struct.ath10k** %17, align 8
  store %struct.ath10k* %18, %struct.ath10k** %8, align 8
  %19 = load %struct.htt_rx_in_ord_msdu_desc_ext**, %struct.htt_rx_in_ord_msdu_desc_ext*** %7, align 8
  %20 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %19, align 8
  store %struct.htt_rx_in_ord_msdu_desc_ext* %20, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %21 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %22 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @__le16_to_cpu(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = bitcast i8* %28 to %struct.htt_rx_desc*
  store %struct.htt_rx_desc* %29, %struct.htt_rx_desc** %14, align 8
  %30 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %31 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %14, align 8
  %32 = call i32 @trace_ath10k_htt_rx_desc(%struct.ath10k* %30, %struct.htt_rx_desc* %31, i32 4)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @skb_put(%struct.sk_buff* %33, i32 4)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @skb_pull(%struct.sk_buff* %35, i32 4)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @HTT_RX_MSDU_SIZE, align 4
  %40 = call i32 @min(i32 %38, i32 %39)
  %41 = call i32 @skb_put(%struct.sk_buff* %37, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %50 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %3
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %59 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %60 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @__le16_to_cpu(i32 %61)
  %63 = load i32, i32* %15, align 4
  %64 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %54
  store i32 0, i32* %4, align 4
  br label %165

66:                                               ; preds = %3
  %67 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %68 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %67, i32 1
  store %struct.htt_rx_in_ord_msdu_desc_ext* %68, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %69 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %70 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__le64_to_cpu(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call %struct.sk_buff* @ath10k_htt_rx_pop_paddr(%struct.ath10k_htt* %73, i32 %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %10, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %66
  %79 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %165

84:                                               ; preds = %66
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @HTT_RX_BUF_SIZE, align 4
  %88 = call i32 @min(i32 %86, i32 %87)
  %89 = call i32 @skb_put(%struct.sk_buff* %85, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @ath10k_htt_append_frag_list(%struct.sk_buff* %90, %struct.sk_buff* %91, i32 %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %15, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %11, align 8
  %102 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %103 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %129, %84
  %106 = load i64, i64* %12, align 8
  %107 = icmp ne i64 %106, 0
  %108 = xor i1 %107, true
  br i1 %108, label %109, label %149

109:                                              ; preds = %105
  %110 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %111 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %110, i32 1
  store %struct.htt_rx_in_ord_msdu_desc_ext* %111, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %112 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %113 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @__le64_to_cpu(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call %struct.sk_buff* @ath10k_htt_rx_pop_paddr(%struct.ath10k_htt* %116, i32 %117)
  store %struct.sk_buff* %118, %struct.sk_buff** %10, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %120 = icmp ne %struct.sk_buff* %119, null
  br i1 %120, label %129, label %121

121:                                              ; preds = %109
  %122 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %126, align 8
  %127 = load i32, i32* @ENOENT, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %165

129:                                              ; preds = %109
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @HTT_RX_BUF_SIZE, align 4
  %133 = call i32 @min(i32 %131, i32 %132)
  %134 = call i32 @skb_put(%struct.sk_buff* %130, i32 %133)
  %135 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %136 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %12, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = sub nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %15, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  store %struct.sk_buff* %145, %struct.sk_buff** %147, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %148, %struct.sk_buff** %11, align 8
  br label %105

149:                                              ; preds = %105
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %149
  %153 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %154 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %155 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, %struct.htt_rx_in_ord_msdu_desc_ext* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @__le16_to_cpu(i32 %156)
  %158 = load i32, i32* %15, align 4
  %159 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %152, %149
  %161 = load %struct.htt_rx_in_ord_msdu_desc_ext*, %struct.htt_rx_in_ord_msdu_desc_ext** %13, align 8
  %162 = load %struct.htt_rx_in_ord_msdu_desc_ext**, %struct.htt_rx_in_ord_msdu_desc_ext*** %7, align 8
  store %struct.htt_rx_in_ord_msdu_desc_ext* %161, %struct.htt_rx_in_ord_msdu_desc_ext** %162, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %164, align 8
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %160, %121, %78, %65
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @trace_ath10k_htt_rx_desc(%struct.ath10k*, %struct.htt_rx_desc*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @__le64_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @ath10k_htt_rx_pop_paddr(%struct.ath10k_htt*, i32) #1

declare dso_local i32 @ath10k_htt_append_frag_list(%struct.sk_buff*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
