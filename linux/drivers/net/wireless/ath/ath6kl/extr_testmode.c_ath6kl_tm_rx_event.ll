; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_testmode.c_ath6kl_tm_rx_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_testmode.c_ath6kl_tm_rx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate testmode rx skb!\0A\00", align 1
@ATH6KL_TM_ATTR_CMD = common dso_local global i32 0, align 4
@ATH6KL_TM_CMD_TCMD = common dso_local global i32 0, align 4
@ATH6KL_TM_ATTR_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"nla_put failed on testmode rx skb!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_tm_rx_event(%struct.ath6kl* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %47

14:                                               ; preds = %10
  %15 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %16 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @cfg80211_testmode_alloc_event_skb(i32 %17, i64 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %47

25:                                               ; preds = %14
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i32, i32* @ATH6KL_TM_ATTR_CMD, align 4
  %28 = load i32, i32* @ATH6KL_TM_CMD_TCMD, align 4
  %29 = call i64 @nla_put_u32(%struct.sk_buff* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load i32, i32* @ATH6KL_TM_ATTR_DATA, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @nla_put(%struct.sk_buff* %32, i32 %33, i64 %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %25
  br label %43

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @cfg80211_testmode_event(%struct.sk_buff* %40, i32 %41)
  br label %47

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %39, %23, %13
  ret void
}

declare dso_local %struct.sk_buff* @cfg80211_testmode_alloc_event_skb(i32, i64, i32) #1

declare dso_local i32 @ath6kl_warn(i8*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i8*) #1

declare dso_local i32 @cfg80211_testmode_event(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
