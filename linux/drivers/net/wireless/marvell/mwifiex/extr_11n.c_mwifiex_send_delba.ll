; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_send_delba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_send_delba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_11n_delba = type { i32, i32 }

@DELBA_TID_POS = common dso_local global i32 0, align 4
@IEEE80211_DELBA_PARAM_INITIATOR_MASK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HostCmd_CMD_11N_DELBA = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_send_delba(%struct.mwifiex_private* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.host_cmd_ds_11n_delba, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 @memset(%struct.host_cmd_ds_11n_delba* %9, i32 0, i32 8)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DELBA_TID_POS, align 4
  %15 = shl i32 %13, %14
  %16 = call i32 @cpu_to_le16(i32 %15)
  %17 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %9, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %9, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @IEEE80211_DELBA_PARAM_INITIATOR_MASK, align 4
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %11, align 4
  br label %32

27:                                               ; preds = %4
  %28 = load i32, i32* @IEEE80211_DELBA_PARAM_INITIATOR_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %9, i32 0, i32 0
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcpy(i32* %33, i32* %34, i32 %35)
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %38 = load i32, i32* @HostCmd_CMD_11N_DELBA, align 4
  %39 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %40 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %37, i32 %38, i32 %39, i32 0, %struct.host_cmd_ds_11n_delba* %9, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.host_cmd_ds_11n_delba*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.host_cmd_ds_11n_delba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
