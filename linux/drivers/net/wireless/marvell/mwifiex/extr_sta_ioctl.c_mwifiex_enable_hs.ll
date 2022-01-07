; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_enable_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_enable_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, i32, i32, i64, %struct.mwifiex_private** }
%struct.mwifiex_private = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mwifiex_ds_hs_cfg = type { i32 }

@disconnect_on_suspend = common dso_local global i64 0, align 8
@MWIFIEX_BSS_ROLE_STA = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"aborting bgscan!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cmd: HS Already activated\0A\00", align 1
@MWIFIEX_IS_HS_ENABLING = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@MWIFIEX_SYNC_CMD = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"IOCTL request HS enable failed\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"hs_activate_wait_q terminated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_enable_hs(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.mwifiex_ds_hs_cfg, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %7 = load i64, i64* @disconnect_on_suspend, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %30, %9
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %17, i32 0, i32 5
  %19 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %19, i64 %21
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  store %struct.mwifiex_private* %23, %struct.mwifiex_private** %5, align 8
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %25 = icmp ne %struct.mwifiex_private* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %28 = call i32 @mwifiex_deauthenticate(%struct.mwifiex_private* %27, i32* null)
  br label %29

29:                                               ; preds = %26, %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %10

33:                                               ; preds = %10
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %36 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %37 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %35, i32 %36)
  store %struct.mwifiex_private* %37, %struct.mwifiex_private** %5, align 8
  %38 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %39 = icmp ne %struct.mwifiex_private* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %42 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %47 = load i32, i32* @CMD, align 4
  %48 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %46, i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %50 = call i32 @mwifiex_stop_bg_scan(%struct.mwifiex_private* %49)
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @cfg80211_sched_scan_stopped(%struct.TYPE_6__* %54, i32 0)
  br label %56

56:                                               ; preds = %45, %40, %34
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %63 = load i32, i32* @CMD, align 4
  %64 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %62, i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %103

65:                                               ; preds = %56
  %66 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = call i32 @memset(%struct.mwifiex_ds_hs_cfg* %4, i32 0, i32 4)
  %69 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %4, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* @MWIFIEX_IS_HS_ENABLING, align 4
  %71 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %71, i32 0, i32 3
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %75 = call i32 @mwifiex_cancel_all_pending_cmd(%struct.mwifiex_adapter* %74)
  %76 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %77 = load i32, i32* @MWIFIEX_BSS_ROLE_STA, align 4
  %78 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %76, i32 %77)
  %79 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %80 = load i32, i32* @MWIFIEX_SYNC_CMD, align 4
  %81 = call i64 @mwifiex_set_hs_params(%struct.mwifiex_private* %78, i32 %79, i32 %80, %struct.mwifiex_ds_hs_cfg* %4)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %65
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %85 = load i32, i32* @ERROR, align 4
  %86 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %84, i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %103

87:                                               ; preds = %65
  %88 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @HZ, align 4
  %95 = mul nsw i32 10, %94
  %96 = call i64 @wait_event_interruptible_timeout(i32 %90, i32 %93, i32 %95)
  %97 = icmp sle i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %100 = load i32, i32* @ERROR, align 4
  %101 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %99, i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %103

102:                                              ; preds = %87
  store i32 1, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %98, %83, %61
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @mwifiex_deauthenticate(%struct.mwifiex_private*, i32*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_stop_bg_scan(%struct.mwifiex_private*) #1

declare dso_local i32 @cfg80211_sched_scan_stopped(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memset(%struct.mwifiex_ds_hs_cfg*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_cancel_all_pending_cmd(%struct.mwifiex_adapter*) #1

declare dso_local i64 @mwifiex_set_hs_params(%struct.mwifiex_private*, i32, i32, %struct.mwifiex_ds_hs_cfg*) #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
