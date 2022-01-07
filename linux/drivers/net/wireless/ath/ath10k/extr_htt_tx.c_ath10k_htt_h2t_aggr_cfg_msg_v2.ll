; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_h2t_aggr_cfg_msg_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_h2t_aggr_cfg_msg_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.htt_aggr_conf_v2 = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.htt_cmd = type { %struct.htt_aggr_conf_v2, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HTT_H2T_MSG_TYPE_AGGR_CFG = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"htt h2t aggr cfg msg amsdu %d ampdu %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htt*, i32, i32)* @ath10k_htt_h2t_aggr_cfg_msg_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_h2t_aggr_cfg_msg_v2(%struct.ath10k_htt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_htt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca %struct.htt_aggr_conf_v2*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.htt_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %15 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %14, i32 0, i32 1
  %16 = load %struct.ath10k*, %struct.ath10k** %15, align 8
  store %struct.ath10k* %16, %struct.ath10k** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 64
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %92

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 31
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %92

34:                                               ; preds = %28
  store i32 4, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.sk_buff* @ath10k_htc_alloc_skb(%struct.ath10k* %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %10, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %92

47:                                               ; preds = %34
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @skb_put(%struct.sk_buff* %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.htt_cmd*
  store %struct.htt_cmd* %54, %struct.htt_cmd** %11, align 8
  %55 = load i32, i32* @HTT_H2T_MSG_TYPE_AGGR_CFG, align 4
  %56 = load %struct.htt_cmd*, %struct.htt_cmd** %11, align 8
  %57 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.htt_cmd*, %struct.htt_cmd** %11, align 8
  %60 = getelementptr inbounds %struct.htt_cmd, %struct.htt_cmd* %59, i32 0, i32 0
  store %struct.htt_aggr_conf_v2* %60, %struct.htt_aggr_conf_v2** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.htt_aggr_conf_v2*, %struct.htt_aggr_conf_v2** %9, align 8
  %63 = getelementptr inbounds %struct.htt_aggr_conf_v2, %struct.htt_aggr_conf_v2* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.htt_aggr_conf_v2*, %struct.htt_aggr_conf_v2** %9, align 8
  %66 = getelementptr inbounds %struct.htt_aggr_conf_v2, %struct.htt_aggr_conf_v2* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %68 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %69 = load %struct.htt_aggr_conf_v2*, %struct.htt_aggr_conf_v2** %9, align 8
  %70 = getelementptr inbounds %struct.htt_aggr_conf_v2, %struct.htt_aggr_conf_v2* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.htt_aggr_conf_v2*, %struct.htt_aggr_conf_v2** %9, align 8
  %73 = getelementptr inbounds %struct.htt_aggr_conf_v2, %struct.htt_aggr_conf_v2* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ath10k_dbg(%struct.ath10k* %67, i32 %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  %76 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %77 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %76, i32 0, i32 1
  %78 = load %struct.ath10k*, %struct.ath10k** %77, align 8
  %79 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %78, i32 0, i32 0
  %80 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %81 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = call i32 @ath10k_htc_send(i32* %79, i32 %82, %struct.sk_buff* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %47
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %89 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %87, %44, %31, %22
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.sk_buff* @ath10k_htc_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath10k_htc_send(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
