; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_beacon_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c_lbtf_beacon_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32 }
%struct.cmd_ds_802_11_beacon_control = type { %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i8* }

@LBTF_DEB_CMD = common dso_local global i32 0, align 4
@CMD_ACT_SET = common dso_local global i32 0, align 4
@CMD_802_11_BEACON_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbtf_beacon_ctrl(%struct.lbtf_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lbtf_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_ds_802_11_beacon_control, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @LBTF_DEB_CMD, align 4
  %9 = call i32 @lbtf_deb_enter(i32 %8)
  %10 = call i8* @cpu_to_le16(i32 32)
  %11 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, %struct.cmd_ds_802_11_beacon_control* %7, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @CMD_ACT_SET, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, %struct.cmd_ds_802_11_beacon_control* %7, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, %struct.cmd_ds_802_11_beacon_control* %7, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, %struct.cmd_ds_802_11_beacon_control* %7, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load %struct.lbtf_private*, %struct.lbtf_private** %4, align 8
  %23 = load i32, i32* @CMD_802_11_BEACON_CTRL, align 4
  %24 = getelementptr inbounds %struct.cmd_ds_802_11_beacon_control, %struct.cmd_ds_802_11_beacon_control* %7, i32 0, i32 0
  %25 = call i32 @lbtf_cmd_async(%struct.lbtf_private* %22, i32 %23, %struct.TYPE_2__* %24, i32 32)
  %26 = load i32, i32* @LBTF_DEB_CMD, align 4
  %27 = call i32 @lbtf_deb_leave(i32 %26)
  ret i32 0
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbtf_cmd_async(%struct.lbtf_private*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
