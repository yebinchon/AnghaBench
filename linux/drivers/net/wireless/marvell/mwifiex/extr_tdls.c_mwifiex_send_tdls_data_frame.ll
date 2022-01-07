; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_send_tdls_data_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_send_tdls_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.mwifiex_txinfo = type { i32, i32 }

@MWIFIEX_MIN_DATA_HEADER_LEN = common dso_local global i64 0, align 8
@MWIFIEX_MGMT_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@MWIFIEX_SUPPORTED_RATES = common dso_local global i64 0, align 8
@MWIFIEX_SUPPORTED_CHANNELS = common dso_local global i64 0, align 8
@MWIFIEX_OPERATING_CLASSES = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"allocate skb failed for management frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_PRIO_BK = common dso_local global i32 0, align 4
@MWIFIEX_PRIO_VI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_send_tdls_data_frame(%struct.mwifiex_private* %0, i32* %1, i32 %2, i32 %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_private*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.mwifiex_txinfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i64, i64* @MWIFIEX_MIN_DATA_HEADER_LEN, align 8
  %21 = call i64 @max(i32 4, i32 4)
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @MWIFIEX_MGMT_FRAME_HEADER_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @MWIFIEX_SUPPORTED_RATES, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 3
  %28 = add i64 %27, 4
  %29 = add i64 %28, 4
  %30 = add i64 %29, 4
  %31 = add i64 %30, 4
  %32 = add i64 %31, 4
  %33 = add i64 %32, 8
  %34 = load i64, i64* @MWIFIEX_SUPPORTED_CHANNELS, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* @MWIFIEX_OPERATING_CLASSES, align 8
  %37 = add i64 %35, %36
  %38 = add i64 %37, 4
  %39 = load i64, i64* %15, align 8
  %40 = add i64 %38, %39
  store i64 %40, i64* %19, align 8
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %7
  %48 = load i64, i64* %19, align 8
  %49 = add i64 %48, 12
  store i64 %49, i64* %19, align 8
  br label %50

50:                                               ; preds = %47, %7
  %51 = load i64, i64* %19, align 8
  %52 = call %struct.sk_buff* @dev_alloc_skb(i64 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %16, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %57 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* @ERROR, align 4
  %60 = call i32 @mwifiex_dbg(%struct.TYPE_2__* %58, i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %170

63:                                               ; preds = %50
  %64 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %65 = load i64, i64* @MWIFIEX_MIN_DATA_HEADER_LEN, align 8
  %66 = call i32 @skb_reserve(%struct.sk_buff* %64, i64 %65)
  %67 = load i32, i32* %11, align 4
  switch i32 %67, label %132 [
    i32 130, label %68
    i32 131, label %68
    i32 128, label %68
    i32 132, label %68
    i32 129, label %100
  ]

68:                                               ; preds = %63, %63, %63, %63
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %75 = call i32 @mwifiex_prep_tdls_encap_data(%struct.mwifiex_private* %69, i32* %70, i32 %71, i32 %72, i64 %73, %struct.sk_buff* %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %80 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %79)
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %8, align 4
  br label %170

82:                                               ; preds = %68
  %83 = load i64, i64* %15, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @skb_put_data(%struct.sk_buff* %86, i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %92 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %93 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %97 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @mwifiex_tdls_add_link_ie(%struct.sk_buff* %91, i32* %94, i32* %95, i32 %98)
  br label %132

100:                                              ; preds = %63
  %101 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %107 = call i32 @mwifiex_prep_tdls_encap_data(%struct.mwifiex_private* %101, i32* %102, i32 %103, i32 %104, i64 %105, %struct.sk_buff* %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %100
  %111 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %112 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %111)
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %8, align 4
  br label %170

114:                                              ; preds = %100
  %115 = load i64, i64* %15, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = load i64, i64* %15, align 8
  %121 = call i32 @skb_put_data(%struct.sk_buff* %118, i32* %119, i64 %120)
  br label %122

122:                                              ; preds = %117, %114
  %123 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %126 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %129 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @mwifiex_tdls_add_link_ie(%struct.sk_buff* %123, i32* %124, i32* %127, i32 %130)
  br label %132

132:                                              ; preds = %63, %122, %90
  %133 = load i32, i32* %11, align 4
  switch i32 %133, label %138 [
    i32 130, label %134
    i32 129, label %134
  ]

134:                                              ; preds = %132, %132
  %135 = load i32, i32* @MWIFIEX_PRIO_BK, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  br label %142

138:                                              ; preds = %132
  %139 = load i32, i32* @MWIFIEX_PRIO_VI, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %144 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %143)
  store %struct.mwifiex_txinfo* %144, %struct.mwifiex_txinfo** %17, align 8
  %145 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %17, align 8
  %146 = call i32 @memset(%struct.mwifiex_txinfo* %145, i32 0, i32 8)
  %147 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %148 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %17, align 8
  %151 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %153 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %17, align 8
  %156 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %158 = call i32 @__net_timestamp(%struct.sk_buff* %157)
  %159 = load %struct.mwifiex_private*, %struct.mwifiex_private** %9, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %161 = call i32 @mwifiex_queue_tx_pkt(%struct.mwifiex_private* %159, %struct.sk_buff* %160)
  %162 = load i32, i32* %11, align 4
  %163 = icmp eq i32 %162, 131
  br i1 %163, label %167, label %164

164:                                              ; preds = %142
  %165 = load i32, i32* %11, align 4
  %166 = icmp eq i32 %165, 128
  br i1 %166, label %167, label %169

167:                                              ; preds = %164, %142
  %168 = call i32 @msleep_interruptible(i32 10)
  br label %169

169:                                              ; preds = %167, %164
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %169, %110, %78, %55
  %171 = load i32, i32* %8, align 4
  ret i32 %171
}

declare dso_local i64 @max(i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @mwifiex_prep_tdls_encap_data(%struct.mwifiex_private*, i32*, i32, i32, i64, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @mwifiex_tdls_add_link_ie(%struct.sk_buff*, i32*, i32*, i32) #1

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.mwifiex_txinfo*, i32, i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @mwifiex_queue_tx_pkt(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
