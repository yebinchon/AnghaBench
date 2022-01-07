; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_send_frag_desc_bank_cfg_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_send_frag_desc_bank_cfg_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.ath10k*, %struct.TYPE_15__, i64, %struct.TYPE_13__ }
%struct.ath10k = type { i32, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.htt_cmd = type { %struct.htt_frag_desc_bank_cfg64, %struct.TYPE_10__ }
%struct.htt_frag_desc_bank_cfg64 = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_14__*, i32*, i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"invalid frag desc memory\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HTT_H2T_MSG_TYPE_FRAG_DESC_BANK_CFG = common dso_local global i32 0, align 4
@HTT_FRAG_DESC_BANK_CFG_INFO_Q_STATE_DEPTH_TYPE = common dso_local global i32 0, align 4
@ATH10K_FW_FEATURE_PEER_FLOW_CONTROL = common dso_local global i32 0, align 4
@HTT_FRAG_DESC_BANK_CFG_INFO_Q_STATE_VALID = common dso_local global i32 0, align 4
@HTT_TX_Q_STATE_ENTRY_SIZE = common dso_local global i32 0, align 4
@HTT_TX_Q_STATE_ENTRY_MULTIPLIER = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"htt frag desc bank cmd\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to send frag desc bank cfg request: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*)* @ath10k_htt_send_frag_desc_bank_cfg_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_send_frag_desc_bank_cfg_64(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.htt_cmd*, align 8
  %7 = alloca %struct.htt_frag_desc_bank_cfg64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %11 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %11, i32 0, i32 1
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %4, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %161

20:                                               ; preds = %1
  %21 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %28 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %161

31:                                               ; preds = %20
  store i32 68, i32* %9, align 4
  %32 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.sk_buff* @ath10k_htc_alloc_skb(%struct.ath10k* %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %161

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @skb_put(%struct.sk_buff* %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.htt_cmd*
  store %struct.htt_cmd* %47, %struct.htt_cmd** %6, align 8
  %48 = load i32, i32* @HTT_H2T_MSG_TYPE_FRAG_DESC_BANK_CFG, align 4
  %49 = load %struct.htt_cmd*, %struct.htt_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  store i32 0, i32* %10, align 4
  %52 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %53 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HTT_FRAG_DESC_BANK_CFG_INFO_Q_STATE_DEPTH_TYPE, align 4
  %57 = call i32 @SM(i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @ATH10K_FW_FEATURE_PEER_FLOW_CONTROL, align 4
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @test_bit(i32 %60, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %40
  %70 = load i32, i32* @HTT_FRAG_DESC_BANK_CFG_INFO_Q_STATE_VALID, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %40
  %74 = load %struct.htt_cmd*, %struct.htt_cmd** %6, align 8
  %75 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %74, i32 0, i32 0
  store %struct.htt_frag_desc_bank_cfg64* %75, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %78 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %80 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %82 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %81, i32 0, i32 1
  store i32 4, i32* %82, align 4
  %83 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %84 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @__cpu_to_le64(i32 %86)
  %88 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %89 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  %92 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %93 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %92, i32 0, i32 3
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %98 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 1
  %101 = call i32 @__cpu_to_le16(i64 %100)
  %102 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %103 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %102, i32 0, i32 3
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 8
  %107 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %108 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @cpu_to_le32(i32 %110)
  %112 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %113 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  store i32 %111, i32* %114, align 8
  %115 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %116 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @cpu_to_le16(i32 %118)
  %120 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %121 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  store i8* %119, i8** %122, align 8
  %123 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %124 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @cpu_to_le16(i32 %126)
  %128 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %129 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  store i8* %127, i8** %130, align 8
  %131 = load i32, i32* @HTT_TX_Q_STATE_ENTRY_SIZE, align 4
  %132 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %133 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @HTT_TX_Q_STATE_ENTRY_MULTIPLIER, align 4
  %136 = load %struct.htt_frag_desc_bank_cfg64*, %struct.htt_frag_desc_bank_cfg64** %7, align 8
  %137 = getelementptr inbounds %struct.htt_frag_desc_bank_cfg64, %struct.htt_frag_desc_bank_cfg64* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %140 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %141 = call i32 @ath10k_dbg(%struct.ath10k* %139, i32 %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %142 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %143 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %142, i32 0, i32 1
  %144 = load %struct.ath10k*, %struct.ath10k** %143, align 8
  %145 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %144, i32 0, i32 0
  %146 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %147 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %150 = call i32 @ath10k_htc_send(i32* %145, i32 %148, %struct.sk_buff* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %73
  %154 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %154, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %158 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %157)
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %153, %37, %26, %19
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local %struct.sk_buff* @ath10k_htc_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @__cpu_to_le64(i32) #1

declare dso_local i32 @__cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_htc_send(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
