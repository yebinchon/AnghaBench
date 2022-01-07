; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32 }
%struct.cmd_ds_802_11_rf_channel = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@LBTF_DEB_CMD = common dso_local global i32 0, align 4
@CMD_OPT_802_11_RF_CHANNEL_SET = common dso_local global i32 0, align 4
@CMD_802_11_RF_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbtf_set_channel(%struct.lbtf_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbtf_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_ds_802_11_rf_channel, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @LBTF_DEB_CMD, align 4
  %8 = call i32 @lbtf_deb_enter(i32 %7)
  %9 = call i8* @cpu_to_le16(i32 24)
  %10 = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, %struct.cmd_ds_802_11_rf_channel* %6, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @CMD_OPT_802_11_RF_CHANNEL_SET, align 4
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, %struct.cmd_ds_802_11_rf_channel* %6, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, %struct.cmd_ds_802_11_rf_channel* %6, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %19 = load i32, i32* @CMD_802_11_RF_CHANNEL, align 4
  %20 = call i32 @lbtf_cmd_with_response(%struct.lbtf_private* %18, i32 %19, %struct.cmd_ds_802_11_rf_channel* %6)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @LBTF_DEB_CMD, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @lbtf_deb_leave_args(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbtf_cmd_with_response(%struct.lbtf_private*, i32, %struct.cmd_ds_802_11_rf_channel*) #1

declare dso_local i32 @lbtf_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
