; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_ret_802_11_hs_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_ret_802_11_hs_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64, i64, i32 }
%struct.host_cmd_ds_command = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_802_11_hs_cfg_enh }
%struct.host_cmd_ds_802_11_hs_cfg_enh = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@HS_ACTIVATE = common dso_local global i32 0, align 4
@MWIFIEX_USB = common dso_local global i64 0, align 8
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"cmd: CMD_RESP: HS_CFG cmd reply\09 result=%#x, conditions=0x%x gpio=0x%x gap=0x%x\0A\00", align 1
@HS_CFG_CANCEL = common dso_local global i64 0, align 8
@MWIFIEX_IS_HS_CONFIGURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_ret_802_11_hs_cfg(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.host_cmd_ds_802_11_hs_cfg_enh*, align 8
  %8 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 0
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  store %struct.mwifiex_adapter* %11, %struct.mwifiex_adapter** %6, align 8
  %12 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %13 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.host_cmd_ds_802_11_hs_cfg_enh* %14, %struct.host_cmd_ds_802_11_hs_cfg_enh** %7, align 8
  %15 = load %struct.host_cmd_ds_802_11_hs_cfg_enh*, %struct.host_cmd_ds_802_11_hs_cfg_enh** %7, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_802_11_hs_cfg_enh, %struct.host_cmd_ds_802_11_hs_cfg_enh* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @le32_to_cpu(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.host_cmd_ds_802_11_hs_cfg_enh*, %struct.host_cmd_ds_802_11_hs_cfg_enh** %7, align 8
  %22 = getelementptr inbounds %struct.host_cmd_ds_802_11_hs_cfg_enh, %struct.host_cmd_ds_802_11_hs_cfg_enh* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @HS_ACTIVATE, align 4
  %25 = call i64 @cpu_to_le16(i32 %24)
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MWIFIEX_USB, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %35 = call i32 @mwifiex_hs_activated_event(%struct.mwifiex_private* %34, i32 1)
  store i32 0, i32* %3, align 4
  br label %86

36:                                               ; preds = %27, %2
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %38 = load i32, i32* @CMD, align 4
  %39 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %40 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.host_cmd_ds_802_11_hs_cfg_enh*, %struct.host_cmd_ds_802_11_hs_cfg_enh** %7, align 8
  %44 = getelementptr inbounds %struct.host_cmd_ds_802_11_hs_cfg_enh, %struct.host_cmd_ds_802_11_hs_cfg_enh* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.host_cmd_ds_802_11_hs_cfg_enh*, %struct.host_cmd_ds_802_11_hs_cfg_enh** %7, align 8
  %49 = getelementptr inbounds %struct.host_cmd_ds_802_11_hs_cfg_enh, %struct.host_cmd_ds_802_11_hs_cfg_enh* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %37, i32 %38, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42, i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %36
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @HS_CFG_CANCEL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 2
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MWIFIEX_USB, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %70 = call i32 @mwifiex_hs_activated_event(%struct.mwifiex_private* %69, i32 1)
  br label %71

71:                                               ; preds = %68, %58
  br label %85

72:                                               ; preds = %54
  %73 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %74 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %74, i32 0, i32 2
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %83 = call i32 @mwifiex_hs_activated_event(%struct.mwifiex_private* %82, i32 0)
  br label %84

84:                                               ; preds = %81, %72
  br label %85

85:                                               ; preds = %84, %71
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %33
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @mwifiex_hs_activated_event(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
