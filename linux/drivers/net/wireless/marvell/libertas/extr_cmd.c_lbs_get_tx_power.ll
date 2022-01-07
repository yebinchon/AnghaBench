; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_get_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_get_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_rf_tx_power = type { i32, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CMD_ACT_GET = common dso_local global i32 0, align 4
@CMD_802_11_RF_TX_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_get_tx_power(%struct.lbs_private* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cmd_ds_802_11_rf_tx_power, align 8
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = call i32 @memset(%struct.cmd_ds_802_11_rf_tx_power* %9, i32 0, i32 32)
  %12 = call i8* @cpu_to_le16(i32 32)
  %13 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, %struct.cmd_ds_802_11_rf_tx_power* %9, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @CMD_ACT_GET, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, %struct.cmd_ds_802_11_rf_tx_power* %9, i32 0, i32 3
  store i8* %16, i8** %17, align 8
  %18 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %19 = load i32, i32* @CMD_802_11_RF_TX_POWER, align 4
  %20 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %18, i32 %19, %struct.cmd_ds_802_11_rf_tx_power* %9)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, %struct.cmd_ds_802_11_rf_tx_power* %9, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, %struct.cmd_ds_802_11_rf_tx_power* %9, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, %struct.cmd_ds_802_11_rf_tx_power* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11_rf_tx_power*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_rf_tx_power*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
