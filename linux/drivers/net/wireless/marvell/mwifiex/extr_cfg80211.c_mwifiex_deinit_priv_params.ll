; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_deinit_priv_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_deinit_priv_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__, i8*, %struct.TYPE_3__, i64, %struct.mwifiex_adapter* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }
%struct.mwifiex_adapter = type { i32, i32, i32, i32, i64, i32, i32, i64 }

@HostCmd_CMD_MGMT_FRAME_REG = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not unregister mgmt frame rx\0A\00", align 1
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i8* null, align 8
@NL80211_AUTHTYPE_OPEN_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*)* @mwifiex_deinit_priv_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_deinit_priv_params(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 4
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  store %struct.mwifiex_adapter* %8, %struct.mwifiex_adapter** %4, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %12 = load i32, i32* @HostCmd_CMD_MGMT_FRAME_REG, align 4
  %13 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 3
  %16 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %11, i32 %12, i32 %13, i32 0, i64* %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %19, i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %85

22:                                               ; preds = %1
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %24 = call i32 @mwifiex_deauthenticate(%struct.mwifiex_private* %23, i32* null)
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 5
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %36, i32 0, i32 5
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @flush_workqueue(i32 %42)
  br label %49

44:                                               ; preds = %22
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %45, i32 0, i32 5
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %50, i32 0, i32 2
  %52 = call i32 @spin_lock_bh(i32* %51)
  %53 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @flush_workqueue(i32 %65)
  br label %71

67:                                               ; preds = %49
  %68 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock_bh(i32* %69)
  br label %71

71:                                               ; preds = %67, %59
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %73 = call i32 @mwifiex_free_priv(%struct.mwifiex_private* %72)
  %74 = load i8*, i8** @NL80211_IFTYPE_UNSPECIFIED, align 8
  %75 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %76 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** @NL80211_IFTYPE_UNSPECIFIED, align 8
  %79 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %80 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @NL80211_AUTHTYPE_OPEN_SYSTEM, align 4
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %83 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %71, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_deauthenticate(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mwifiex_free_priv(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
