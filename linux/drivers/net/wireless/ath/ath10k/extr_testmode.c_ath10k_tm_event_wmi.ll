; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_event_wmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_event_wmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }

@ATH10K_DBG_TESTMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"testmode event wmi cmd_id %d skb %pK skb->len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to allocate skb for testmode wmi event\0A\00", align 1
@ATH10K_TM_ATTR_CMD = common dso_local global i32 0, align 4
@ATH10K_TM_CMD_WMI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"failed to to put testmode wmi event cmd attribute: %d\0A\00", align 1
@ATH10K_TM_ATTR_WMI_CMDID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"failed to to put testmode wmi even cmd_id: %d\0A\00", align 1
@ATH10K_TM_ATTR_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"failed to copy skb to testmode wmi event: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_tm_event_wmi(%struct.ath10k* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = load i32, i32* @ATH10K_DBG_TESTMODE, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ath10k_dbg(%struct.ath10k* %10, i32 %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.sk_buff* %13, i64 %16)
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = load i32, i32* @ATH10K_DBG_TESTMODE, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ath10k_dbg_dump(%struct.ath10k* %18, i32 %19, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %22, i64 %25)
  %27 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %101

36:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %37 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 8, %44
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.sk_buff* @cfg80211_testmode_alloc_event_skb(i32 %41, i64 %45, i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %7, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %52 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %101

53:                                               ; preds = %36
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load i32, i32* @ATH10K_TM_ATTR_CMD, align 4
  %56 = load i32, i32* @ATH10K_TM_CMD_WMI, align 4
  %57 = call i32 @nla_put_u32(%struct.sk_buff* %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  br label %101

66:                                               ; preds = %53
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load i32, i32* @ATH10K_TM_ATTR_WMI_CMDID, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @nla_put_u32(%struct.sk_buff* %67, i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  br label %101

79:                                               ; preds = %66
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = load i32, i32* @ATH10K_TM_ATTR_DATA, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @nla_put(%struct.sk_buff* %80, i32 %81, i64 %84, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %79
  %92 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %92, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = call i32 @kfree_skb(%struct.sk_buff* %95)
  br label %101

97:                                               ; preds = %79
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load i32, i32* @GFP_ATOMIC, align 4
  %100 = call i32 @cfg80211_testmode_event(%struct.sk_buff* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %91, %73, %60, %50, %35
  %102 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %103 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock_bh(i32* %103)
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, %struct.sk_buff*, i64) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @cfg80211_testmode_alloc_event_skb(i32, i64, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @cfg80211_testmode_event(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
