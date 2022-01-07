; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htc.c_ath10k_htc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc = type { i32, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sk_buff = type { i64, i32 }
%struct.ath10k_htc_msg = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_HTC_MSG_SETUP_COMPLETE_EX_ID = common dso_local global i32 0, align 4
@ATH10K_BUS_SDIO = common dso_local global i64 0, align 8
@ATH10K_HTC_SETUP_COMPLETE_FLAGS_RX_BNDL_EN = common dso_local global i32 0, align 4
@ATH10K_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"HTC is using TX credit flow control\0A\00", align 1
@ATH10K_HTC_EP_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to connect to pktlog: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htc_start(%struct.ath10k_htc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htc*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_htc_msg*, align 8
  store %struct.ath10k_htc* %0, %struct.ath10k_htc** %3, align 8
  %8 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %8, i32 0, i32 1
  %10 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  store %struct.ath10k* %10, %struct.ath10k** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %11, i32 0, i32 1
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %14 = call %struct.sk_buff* @ath10k_htc_build_tx_ctrl_skb(%struct.ath10k* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %87

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @skb_put(%struct.sk_buff* %21, i32 12)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memset(i64 %25, i32 0, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ath10k_htc_msg*
  store %struct.ath10k_htc_msg* %33, %struct.ath10k_htc_msg** %7, align 8
  %34 = load i32, i32* @ATH10K_HTC_MSG_SETUP_COMPLETE_EX_ID, align 4
  %35 = call i32 @__cpu_to_le16(i32 %34)
  %36 = load %struct.ath10k_htc_msg*, %struct.ath10k_htc_msg** %7, align 8
  %37 = getelementptr inbounds %struct.ath10k_htc_msg, %struct.ath10k_htc_msg* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %40 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ATH10K_BUS_SDIO, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %20
  %46 = load i32, i32* @ATH10K_HTC_SETUP_COMPLETE_FLAGS_RX_BNDL_EN, align 4
  %47 = call i32 @__cpu_to_le32(i32 %46)
  %48 = load %struct.ath10k_htc_msg*, %struct.ath10k_htc_msg** %7, align 8
  %49 = getelementptr inbounds %struct.ath10k_htc_msg, %struct.ath10k_htc_msg* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %52 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ath10k_htc_msg*, %struct.ath10k_htc_msg** %7, align 8
  %55 = getelementptr inbounds %struct.ath10k_htc_msg, %struct.ath10k_htc_msg* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %45, %20
  %58 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %59 = load i32, i32* @ATH10K_DBG_HTC, align 4
  %60 = call i32 @ath10k_dbg(%struct.ath10k* %58, i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.ath10k_htc*, %struct.ath10k_htc** %3, align 8
  %62 = load i32, i32* @ATH10K_HTC_EP_0, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @ath10k_htc_send(%struct.ath10k_htc* %61, i32 %62, %struct.sk_buff* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %87

71:                                               ; preds = %57
  %72 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %73 = call i64 @ath10k_htc_pktlog_svc_supported(%struct.ath10k* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %77 = call i32 @ath10k_htc_pktlog_connect(%struct.ath10k* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @ath10k_err(%struct.ath10k* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %87

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85, %71
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %80, %67, %17
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.sk_buff* @ath10k_htc_build_tx_ctrl_skb(%struct.ath10k*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_htc_send(%struct.ath10k_htc*, i32, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ath10k_htc_pktlog_svc_supported(%struct.ath10k*) #1

declare dso_local i32 @ath10k_htc_pktlog_connect(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
