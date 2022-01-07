; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_mac_control_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_mac_control_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_mac_control = type { i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CMD_MAC_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_mac_control_sync(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.cmd_ds_mac_control, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i8* @cpu_to_le16(i32 24)
  %6 = getelementptr inbounds %struct.cmd_ds_mac_control, %struct.cmd_ds_mac_control* %3, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %9 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @cpu_to_le16(i32 %10)
  %12 = getelementptr inbounds %struct.cmd_ds_mac_control, %struct.cmd_ds_mac_control* %3, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.cmd_ds_mac_control, %struct.cmd_ds_mac_control* %3, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %15 = load i32, i32* @CMD_MAC_CONTROL, align 4
  %16 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %14, i32 %15, %struct.cmd_ds_mac_control* %3)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_mac_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
