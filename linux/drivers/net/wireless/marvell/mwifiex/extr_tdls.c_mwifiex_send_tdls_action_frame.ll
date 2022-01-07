; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_send_tdls_action_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_send_tdls_action_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32, i32*, i32 }
%struct.mwifiex_txinfo = type { i32, i32, i32 }

@MWIFIEX_MIN_DATA_HEADER_LEN = common dso_local global i32 0, align 4
@MWIFIEX_MGMT_FRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@MWIFIEX_SUPPORTED_RATES = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"allocate skb failed for management frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PKT_TYPE_MGMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MWIFIEX_PRIO_VI = common dso_local global i32 0, align 4
@MWIFIEX_BUF_FLAG_TDLS_PKT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_send_tdls_action_frame(%struct.mwifiex_private* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_private*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.mwifiex_txinfo*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = load i32, i32* @MWIFIEX_MIN_DATA_HEADER_LEN, align 4
  %24 = call i32 @max(i32 4, i32 4)
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @MWIFIEX_SUPPORTED_RATES, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = add i64 %31, 4
  %33 = add i64 %32, 4
  %34 = add i64 %33, 4
  %35 = add i64 %34, 4
  %36 = load i64, i64* %15, align 8
  %37 = add i64 %35, %36
  %38 = add i64 %37, 3
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %38, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %22, align 4
  %43 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %44 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %7
  %50 = load i32, i32* %22, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 12
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %22, align 4
  br label %54

54:                                               ; preds = %49, %7
  %55 = load i32, i32* %22, align 4
  %56 = call %struct.sk_buff* @dev_alloc_skb(i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %16, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %61 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* @ERROR, align 4
  %64 = call i32 @mwifiex_dbg(%struct.TYPE_2__* %62, i32 %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %156

67:                                               ; preds = %54
  %68 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %69 = load i32, i32* @MWIFIEX_MIN_DATA_HEADER_LEN, align 4
  %70 = call i32 @skb_reserve(%struct.sk_buff* %68, i32 %69)
  %71 = load i32, i32* @PKT_TYPE_MGMT, align 4
  store i32 %71, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %73 = load i32, i32* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32* @skb_put_zero(%struct.sk_buff* %72, i32 %76)
  store i32* %77, i32** %18, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = call i32 @memcpy(i32* %78, i32* %19, i32 4)
  %80 = load i32*, i32** %18, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = call i32 @memcpy(i32* %81, i32* %20, i32 4)
  %83 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %89 = call i64 @mwifiex_construct_tdls_action_frame(%struct.mwifiex_private* %83, i32* %84, i32 %85, i32 %86, i32 %87, %struct.sk_buff* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %67
  %92 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %93 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %8, align 4
  br label %156

96:                                               ; preds = %67
  %97 = load i64, i64* %15, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load i64, i64* %15, align 8
  %103 = call i32 @skb_put_data(%struct.sk_buff* %100, i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %99, %96
  %105 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %108 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %111 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @mwifiex_tdls_add_link_ie(%struct.sk_buff* %105, i32* %106, i32 %109, i32 %112)
  %114 = load i32, i32* @MWIFIEX_PRIO_VI, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %118 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %117)
  store %struct.mwifiex_txinfo* %118, %struct.mwifiex_txinfo** %17, align 8
  %119 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %17, align 8
  %120 = call i32 @memset(%struct.mwifiex_txinfo* %119, i32 0, i32 12)
  %121 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %122 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %17, align 8
  %125 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %127 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %17, align 8
  %130 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @MWIFIEX_BUF_FLAG_TDLS_PKT, align 4
  %132 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %17, align 8
  %133 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 4
  %140 = sub nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = sub i64 %141, 4
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %21, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = call i32 @memcpy(i32* %149, i32* %21, i32 4)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %152 = call i32 @__net_timestamp(%struct.sk_buff* %151)
  %153 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %155 = call i32 @mwifiex_queue_tx_pkt(%struct.mwifiex_private* %153, %struct.sk_buff* %154)
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %104, %91, %59
  %157 = load i32, i32* %8, align 4
  ret i32 %157
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @mwifiex_construct_tdls_action_frame(%struct.mwifiex_private*, i32*, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @mwifiex_tdls_add_link_ie(%struct.sk_buff*, i32*, i32, i32) #1

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.mwifiex_txinfo*, i32, i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @mwifiex_queue_tx_pkt(%struct.mwifiex_private*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
