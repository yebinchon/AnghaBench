; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_process_cmdresp_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_process_cmdresp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.host_cmd_ds_command = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.host_cmd_ds_802_11_ps_mode_enh }
%struct.host_cmd_ds_802_11_ps_mode_enh = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CMD_RESP: cmd %#x error, result=%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"PS_MODE_ENH cmd failed: result=0x%x action=0x%X\0A\00", align 1
@EN_AUTO_PS = common dso_local global i32 0, align 4
@BITMAP_STA_PS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@MWIFIEX_802_11_POWER_MODE_CAM = common dso_local global i32 0, align 4
@MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"SDIO RX single-port aggregation Not support\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_process_cmdresp_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_process_cmdresp_error(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca %struct.mwifiex_adapter*, align 8
  %6 = alloca %struct.host_cmd_ds_802_11_ps_mode_enh*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %7, i32 0, i32 1
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  store %struct.mwifiex_adapter* %9, %struct.mwifiex_adapter** %5, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %11 = load i32, i32* @ERROR, align 4
  %12 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %10, i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  switch i32 %33, label %82 [
    i32 132, label %34
    i32 131, label %74
    i32 130, label %74
    i32 129, label %77
    i32 128, label %78
  ]

34:                                               ; preds = %29
  %35 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %36 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_ps_mode_enh* %37, %struct.host_cmd_ds_802_11_ps_mode_enh** %6, align 8
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %39 = load i32, i32* @ERROR, align 4
  %40 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %41 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.host_cmd_ds_802_11_ps_mode_enh*, %struct.host_cmd_ds_802_11_ps_mode_enh** %6, align 8
  %44 = getelementptr inbounds %struct.host_cmd_ds_802_11_ps_mode_enh, %struct.host_cmd_ds_802_11_ps_mode_enh* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %38, i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %46)
  %48 = load %struct.host_cmd_ds_802_11_ps_mode_enh*, %struct.host_cmd_ds_802_11_ps_mode_enh** %6, align 8
  %49 = getelementptr inbounds %struct.host_cmd_ds_802_11_ps_mode_enh, %struct.host_cmd_ds_802_11_ps_mode_enh* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = load i32, i32* @EN_AUTO_PS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %34
  %55 = load %struct.host_cmd_ds_802_11_ps_mode_enh*, %struct.host_cmd_ds_802_11_ps_mode_enh** %6, align 8
  %56 = getelementptr inbounds %struct.host_cmd_ds_802_11_ps_mode_enh, %struct.host_cmd_ds_802_11_ps_mode_enh* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = load i32, i32* @BITMAP_STA_PS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %65 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @MWIFIEX_802_11_POWER_MODE_CAM, align 4
  %71 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %72 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %63, %54, %34
  br label %83

74:                                               ; preds = %29, %29
  %75 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %76 = call i32 @mwifiex_cancel_scan(%struct.mwifiex_adapter* %75)
  br label %83

77:                                               ; preds = %29
  br label %83

78:                                               ; preds = %29
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %80 = load i32, i32* @MSG, align 4
  %81 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %79, i32 %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %83

82:                                               ; preds = %29
  br label %83

83:                                               ; preds = %82, %78, %77, %74, %73
  %84 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %85 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter* %84, %struct.TYPE_8__* %87)
  %89 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %90 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %89, i32 0, i32 0
  %91 = call i32 @spin_lock_bh(i32* %90)
  %92 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %93 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %92, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %93, align 8
  %94 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %95 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_bh(i32* %95)
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_cancel_scan(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_recycle_cmd_node(%struct.mwifiex_adapter*, %struct.TYPE_8__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
