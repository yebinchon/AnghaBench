; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_rx_completion_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_rx_completion_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htc }
%struct.ath10k_htc = type { %struct.ath10k_htc_ep* }
%struct.ath10k_htc_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.ath10k.0*, %struct.sk_buff*)* }
%struct.ath10k.0 = type opaque
%struct.sk_buff = type { i32, i64 }
%struct.ath10k_htc_hdr = type { i64, i32, i64, i32 }

@ATH10K_HTC_EP_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"HTC Rx: invalid eid %d\0A\00", align 1
@ATH10K_DBG_HTC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"htc bad header\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATH10K_HTC_MAX_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"HTC rx frame too long, len: %zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"htc bad rx pkt len\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"HTC Rx: insufficient length, got %d, expected %d\0A\00", align 1
@ATH10K_HTC_FLAG_TRAILER_PRESENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Invalid trailer length: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"htc rx completion ep %d skb %pK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_htc_rx_completion_handler(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k_htc*, align 8
  %7 = alloca %struct.ath10k_htc_hdr*, align 8
  %8 = alloca %struct.ath10k_htc_ep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 0
  store %struct.ath10k_htc* %16, %struct.ath10k_htc** %6, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ath10k_htc_hdr*
  store %struct.ath10k_htc_hdr* %20, %struct.ath10k_htc_hdr** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_pull(%struct.sk_buff* %21, i32 32)
  %23 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %24 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @ATH10K_HTC_EP_COUNT, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @ath10k_warn(%struct.ath10k* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %35 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %36 = call i32 @ath10k_dbg_dump(%struct.ath10k* %33, i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.ath10k_htc_hdr* %35, i32 32)
  br label %159

37:                                               ; preds = %2
  %38 = load %struct.ath10k_htc*, %struct.ath10k_htc** %6, align 8
  %39 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %38, i32 0, i32 0
  %40 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %40, i64 %41
  store %struct.ath10k_htc_ep* %42, %struct.ath10k_htc_ep** %8, align 8
  %43 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %44 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @__le16_to_cpu(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 32
  %50 = load i32, i32* @ATH10K_HTC_MAX_LEN, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %37
  %54 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 32
  %58 = call i32 @ath10k_warn(%struct.ath10k* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %60 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %61 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %62 = call i32 @ath10k_dbg_dump(%struct.ath10k* %59, i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.ath10k_htc_hdr* %61, i32 32)
  br label %159

63:                                               ; preds = %37
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %71 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (%struct.ath10k*, i32, i8*, i64, ...) @ath10k_dbg(%struct.ath10k* %70, i32 %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %75, i32 %76)
  %78 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %79 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %80 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %81 = call i32 @ath10k_dbg_dump(%struct.ath10k* %78, i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.ath10k_htc_hdr* %80, i32 32)
  br label %159

82:                                               ; preds = %63
  %83 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %84 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ATH10K_HTC_FLAG_TRAILER_PRESENT, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %138

90:                                               ; preds = %82
  %91 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %92 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %10, align 8
  store i64 4, i64* %11, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load i64, i64* %10, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp ugt i64 %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97, %90
  %103 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @ath10k_warn(%struct.ath10k* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %104)
  br label %159

106:                                              ; preds = %97
  %107 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %108 = bitcast %struct.ath10k_htc_hdr* %107 to i64*
  store i64* %108, i64** %14, align 8
  %109 = load i64*, i64** %14, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 32
  store i64* %110, i64** %14, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i64*, i64** %14, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64* %114, i64** %14, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64*, i64** %14, align 8
  %117 = sub i64 0, %115
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64* %118, i64** %14, align 8
  %119 = load %struct.ath10k_htc*, %struct.ath10k_htc** %6, align 8
  %120 = load i64*, i64** %14, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %7, align 8
  %123 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @ath10k_htc_process_trailer(%struct.ath10k_htc* %119, i64* %120, i64 %121, i64 %124, i32* null, i32* null)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %106
  br label %159

129:                                              ; preds = %106
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %10, align 8
  %136 = sub i64 %134, %135
  %137 = call i32 @skb_trim(%struct.sk_buff* %130, i64 %136)
  br label %138

138:                                              ; preds = %129, %82
  %139 = load i32, i32* %9, align 4
  %140 = load i64, i64* %10, align 8
  %141 = trunc i64 %140 to i32
  %142 = sub nsw i32 %139, %141
  %143 = icmp sle i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %159

145:                                              ; preds = %138
  %146 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %147 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %148 = load i64, i64* %12, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = call i32 (%struct.ath10k*, i32, i8*, i64, ...) @ath10k_dbg(%struct.ath10k* %146, i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %148, %struct.sk_buff* %149)
  %151 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %8, align 8
  %152 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32 (%struct.ath10k.0*, %struct.sk_buff*)*, i32 (%struct.ath10k.0*, %struct.sk_buff*)** %153, align 8
  %155 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %156 = bitcast %struct.ath10k* %155 to %struct.ath10k.0*
  %157 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %158 = call i32 %154(%struct.ath10k.0* %156, %struct.sk_buff* %157)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %159

159:                                              ; preds = %145, %144, %128, %102, %69, %53, %29
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = call i32 @kfree_skb(%struct.sk_buff* %160)
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i8*, i8*, %struct.ath10k_htc_hdr*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, ...) #1

declare dso_local i32 @ath10k_htc_process_trailer(%struct.ath10k_htc*, i64*, i64, i64, i32*, i32*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
