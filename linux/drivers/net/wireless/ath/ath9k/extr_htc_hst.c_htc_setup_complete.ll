; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_setup_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_hst.c_htc_setup_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.htc_comp_msg = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate send buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HTC_MSG_SETUP_COMPLETE_ID = common dso_local global i32 0, align 4
@HTC_OP_START_WAIT = common dso_local global i32 0, align 4
@ENDPOINT0 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"HTC start timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*)* @htc_setup_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htc_setup_complete(%struct.htc_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htc_comp_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store i32 0, i32* %6, align 4
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
  br label %65

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_reserve(%struct.sk_buff* %20, i32 4)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call %struct.htc_comp_msg* @skb_put(%struct.sk_buff* %22, i32 4)
  store %struct.htc_comp_msg* %23, %struct.htc_comp_msg** %5, align 8
  %24 = load i32, i32* @HTC_MSG_SETUP_COMPLETE_ID, align 4
  %25 = call i32 @cpu_to_be16(i32 %24)
  %26 = load %struct.htc_comp_msg*, %struct.htc_comp_msg** %5, align 8
  %27 = getelementptr inbounds %struct.htc_comp_msg, %struct.htc_comp_msg* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @HTC_OP_START_WAIT, align 4
  %29 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %30 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ENDPOINT0, align 4
  %39 = call i32 @htc_issue_send(%struct.htc_target* %33, %struct.sk_buff* %34, i32 %37, i32 0, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %19
  br label %60

43:                                               ; preds = %19
  %44 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %45 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %44, i32 0, i32 1
  %46 = load i32, i32* @HZ, align 4
  %47 = call i64 @wait_for_completion_timeout(i32* %45, i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %43
  %51 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %52 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %65

60:                                               ; preds = %42
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @kfree_skb(%struct.sk_buff* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %59, %50, %12
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.htc_comp_msg* @skb_put(%struct.sk_buff*, i32) #1

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
