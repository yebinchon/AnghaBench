; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_gtk_rekey_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_gtk_rekey_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_gtk_rekey_params }
%struct.host_cmd_ds_gtk_rekey_params = type { i8*, i8*, i32, i32, i8* }
%struct.cfg80211_gtk_rekey_data = type { i64, i32, i32 }

@HostCmd_CMD_GTK_REKEY_OFFLOAD_CFG = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@HostCmd_ACT_GEN_SET = common dso_local global i64 0, align 8
@NL80211_KEK_LEN = common dso_local global i32 0, align 4
@NL80211_KCK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i64, %struct.cfg80211_gtk_rekey_data*)* @mwifiex_cmd_gtk_rekey_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_gtk_rekey_offload(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i64 %2, %struct.cfg80211_gtk_rekey_data* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cfg80211_gtk_rekey_data*, align 8
  %9 = alloca %struct.host_cmd_ds_gtk_rekey_params*, align 8
  %10 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.cfg80211_gtk_rekey_data* %3, %struct.cfg80211_gtk_rekey_data** %8, align 8
  %11 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.host_cmd_ds_gtk_rekey_params* %13, %struct.host_cmd_ds_gtk_rekey_params** %9, align 8
  %14 = load i64, i64* @HostCmd_CMD_GTK_REKEY_OFFLOAD_CFG, align 8
  %15 = call i8* @cpu_to_le16(i64 %14)
  %16 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %17 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i64, i64* @S_DS_GEN, align 8
  %19 = add i64 32, %18
  %20 = call i8* @cpu_to_le16(i64 %19)
  %21 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %22 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i8* @cpu_to_le16(i64 %23)
  %25 = load %struct.host_cmd_ds_gtk_rekey_params*, %struct.host_cmd_ds_gtk_rekey_params** %9, align 8
  %26 = getelementptr inbounds %struct.host_cmd_ds_gtk_rekey_params, %struct.host_cmd_ds_gtk_rekey_params* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @HostCmd_ACT_GEN_SET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %4
  %31 = load %struct.host_cmd_ds_gtk_rekey_params*, %struct.host_cmd_ds_gtk_rekey_params** %9, align 8
  %32 = getelementptr inbounds %struct.host_cmd_ds_gtk_rekey_params, %struct.host_cmd_ds_gtk_rekey_params* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %8, align 8
  %35 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NL80211_KEK_LEN, align 4
  %38 = call i32 @memcpy(i32 %33, i32 %36, i32 %37)
  %39 = load %struct.host_cmd_ds_gtk_rekey_params*, %struct.host_cmd_ds_gtk_rekey_params** %9, align 8
  %40 = getelementptr inbounds %struct.host_cmd_ds_gtk_rekey_params, %struct.host_cmd_ds_gtk_rekey_params* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %8, align 8
  %43 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NL80211_KCK_LEN, align 4
  %46 = call i32 @memcpy(i32 %41, i32 %44, i32 %45)
  %47 = load %struct.cfg80211_gtk_rekey_data*, %struct.cfg80211_gtk_rekey_data** %8, align 8
  %48 = getelementptr inbounds %struct.cfg80211_gtk_rekey_data, %struct.cfg80211_gtk_rekey_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = call i32 @be64_to_cpup(i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.host_cmd_ds_gtk_rekey_params*, %struct.host_cmd_ds_gtk_rekey_params** %9, align 8
  %55 = getelementptr inbounds %struct.host_cmd_ds_gtk_rekey_params, %struct.host_cmd_ds_gtk_rekey_params* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 32
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.host_cmd_ds_gtk_rekey_params*, %struct.host_cmd_ds_gtk_rekey_params** %9, align 8
  %60 = getelementptr inbounds %struct.host_cmd_ds_gtk_rekey_params, %struct.host_cmd_ds_gtk_rekey_params* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %30, %4
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @be64_to_cpup(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
