; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_rf_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_rf_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i8*, i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_rf_tx_pwr }
%struct.host_cmd_ds_rf_tx_pwr = type { i32, i32, i32, i32 }

@HostCmd_ACT_GEN_GET = common dso_local global i64 0, align 8
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Current TxPower Level=%d, Max Power=%d, Min Power=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_rf_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_rf_tx_power(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca %struct.host_cmd_ds_rf_tx_pwr*, align 8
  %6 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  %7 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %8 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.host_cmd_ds_rf_tx_pwr* %9, %struct.host_cmd_ds_rf_tx_pwr** %5, align 8
  %10 = load %struct.host_cmd_ds_rf_tx_pwr*, %struct.host_cmd_ds_rf_tx_pwr** %5, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_rf_tx_pwr, %struct.host_cmd_ds_rf_tx_pwr* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le16_to_cpu(i32 %12)
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load %struct.host_cmd_ds_rf_tx_pwr*, %struct.host_cmd_ds_rf_tx_pwr** %5, align 8
  %16 = getelementptr inbounds %struct.host_cmd_ds_rf_tx_pwr, %struct.host_cmd_ds_rf_tx_pwr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @le16_to_cpu(i32 %17)
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @HostCmd_ACT_GEN_GET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.host_cmd_ds_rf_tx_pwr*, %struct.host_cmd_ds_rf_tx_pwr** %5, align 8
  %26 = getelementptr inbounds %struct.host_cmd_ds_rf_tx_pwr, %struct.host_cmd_ds_rf_tx_pwr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.host_cmd_ds_rf_tx_pwr*, %struct.host_cmd_ds_rf_tx_pwr** %5, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_rf_tx_pwr, %struct.host_cmd_ds_rf_tx_pwr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %34 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %24, %2
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @INFO, align 4
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %44 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mwifiex_dbg(i32 %38, i32 %39, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %45, i32 %48)
  ret i32 0
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
