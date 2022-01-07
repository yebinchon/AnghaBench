; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_config_pipe_credits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_config_pipe_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.htc_config_pipe_msg = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate send buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HTC_MSG_CONFIG_PIPE_ID = common dso_local global i32 0, align 4
@USB_WLAN_TX_PIPE = common dso_local global i32 0, align 4
@HTC_OP_CONFIG_PIPE_CREDITS = common dso_local global i32 0, align 4
@ENDPOINT0 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"HTC credit config timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @htc_config_pipe_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_config_pipe_credits(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htc_config_pipe_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.sk_buff* @alloc_skb(i32 54, i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_reserve(%struct.sk_buff* %20, i32 4)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.htc_config_pipe_msg* @skb_put(%struct.sk_buff* %22, i32 12)
  store %struct.htc_config_pipe_msg* %23, %struct.htc_config_pipe_msg** %5, align 8
  %24 = load i32, i32* @HTC_MSG_CONFIG_PIPE_ID, align 4
  %25 = call i32 @cpu_to_be16(i32 %24)
  %26 = load %struct.htc_config_pipe_msg*, %struct.htc_config_pipe_msg** %5, align 8
  %27 = getelementptr inbounds %struct.htc_config_pipe_msg, %struct.htc_config_pipe_msg* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @USB_WLAN_TX_PIPE, align 4
  %29 = load %struct.htc_config_pipe_msg*, %struct.htc_config_pipe_msg** %5, align 8
  %30 = getelementptr inbounds %struct.htc_config_pipe_msg, %struct.htc_config_pipe_msg* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %32 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.htc_config_pipe_msg*, %struct.htc_config_pipe_msg** %5, align 8
  %35 = getelementptr inbounds %struct.htc_config_pipe_msg, %struct.htc_config_pipe_msg* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @HTC_OP_CONFIG_PIPE_CREDITS, align 4
  %37 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %38 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ENDPOINT0, align 4
  %47 = call i32 @htc_issue_send(%struct.htc_target* %41, %struct.sk_buff* %42, i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %19
  br label %68

51:                                               ; preds = %19
  %52 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %53 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %52, i32 0, i32 1
  %54 = load i32, i32* @HZ, align 4
  %55 = call i64 @wait_for_completion_timeout(i32* %53, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %51
  %59 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %60 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @kfree_skb(%struct.sk_buff* %63)
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %73

67:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %73

68:                                               ; preds = %50
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %67, %58, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.htc_config_pipe_msg* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @htc_issue_send(%struct.htc_target*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
